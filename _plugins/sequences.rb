module Jekyll
  class TableOfContentsTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end # def initialize

    def render(context)
      collections = Hash.new()
      context.registers[:site].pages.each { |page| 
        if page.dir.length > 1
          if collections.has_key?(page.dir[1..-1])
            collections[page.dir[1..-1]] = collections[page.dir[1..-1]] << page
          else
            collections[page.dir[1..-1]] = [page]
          end
        end
      }

      on_a_collection_page = collections.has_key?(context.registers[:page]["dir"][1..-1])
      base_path = context.registers[:site].config["baseurl"]

      collections.each_value { |value| value.sort! { |a, b| a.path <=> b.path } }
      output = "<ol class='toclist'>"
      context.registers[:site].config["page_collections"].each { |coll_cfg|
        raise "No documents found for collection #{coll_cfg["path"]}" unless collections.has_key?(coll_cfg["path"])
        coll = collections[coll_cfg["path"]]
        if on_a_collection_page and context.registers[:page]["dir"][1..-1] != coll_cfg["path"]
          output += "<li><strong><a href='#{base_path}#{coll[0].url}'>#{coll_cfg["title"]}</a></strong></li>"
        else
          output += "<li><span class='toc-heading'>#{coll_cfg["title"]}</span><ol>"
          coll.each { |page|
            if page.data.has_key?("title")
              if context.registers[:page]["path"] == page.path
                output += "<li><strong>#{page.data["title"]}</strong></li>"
              else
                output += "<li><a href='#{base_path}#{page.url}'><span class='toc-page'>#{page.data["title"]}</span></a></li>"
              end
            end
          }
          output += "</ol></li>"
        end
      }
      output += "</ol>"
      output
      # TODO: annotate each page with an optional next and previous, sequencing through the sequences.

    end # def render
  end # class TableOfContentsTag

  class NextTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end # def initialize

    def render(context)
      collections = Hash.new()
      context.registers[:site].pages.each { |page|
        if page.dir.length > 1
          if collections.has_key?(page.dir[1..-1])
            collections[page.dir[1..-1]] = collections[page.dir[1..-1]] << page
          else
            collections[page.dir[1..-1]] = [page]
          end
        end
      }

      curr_page = context.registers[:page]
      on_a_collection_page = collections.has_key?(curr_page["dir"][1..-1])
      raise "Must be used on a collection page" unless on_a_collection_page
      curr_section = collections[curr_page["dir"][1..-1]]
      curr_idx = curr_section.find_index{|page| curr_page["path"] == page.path}
      if curr_idx != nil and curr_idx + 1 < curr_section.size
        next_page = curr_section[curr_idx + 1]
      else
        curr_section_idx = context.registers[:site].config["page_collections"].find_index {|coll| coll["path"] == curr_page["dir"][1..-1]}
        if curr_section_idx != nil and curr_section_idx + 1 < context.registers[:site].config["page_collections"].size
          next_page_section_name = context.registers[:site].config["page_collections"][curr_section_idx + 1]
          next_page_section = collections[next_page_section_name["path"]]
          next_page = next_page_section[0]
        else
          next_page = nil
        end
      end
      if next_page != nil
        "<a href='#{next_page.url}'><span class='next-link'>Next: #{next_page.data["title"]}</span></a>"
      else
        ""
      end
    end # def render
  end # class NextTag
end # module Jekyll

Liquid::Template.register_tag('table_of_contents', Jekyll::TableOfContentsTag)
Liquid::Template.register_tag('next_tag', Jekyll::NextTag)


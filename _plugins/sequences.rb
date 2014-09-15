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

      collections.each_value { |value| value.sort! { |a, b| a.path <=> b.path } }
      output = "<ol>"
      context.registers[:site].config["page_collections"].each { |coll_cfg|
        raise "No documents found for collection #{coll_cfg["path"]}" unless collections.has_key?(coll_cfg["path"])
        coll = collections[coll_cfg["path"]]
        if coll.size == 1 or (on_a_collection_page and context.registers[:page]["dir"][1..-1] != coll_cfg["path"])
          output += "<li><strong><a href='#{coll[0].url}'>#{coll_cfg["title"]}</a></strong></li>"
        else
          output += "<li><strong>#{coll_cfg["title"]}</strong><ol>"
          coll.each { |page|
            if page.data.has_key?("title")
              if context.registers[:page]["path"] == page.path
                output += "<li><strong>#{page.data["title"]}</strong></li>"
              else
                output += "<li><a href='#{page.url}'>#{page.data["title"]}</a></li>"
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
end # module Jekyll
Liquid::Template.register_tag('table_of_contents', Jekyll::TableOfContentsTag)


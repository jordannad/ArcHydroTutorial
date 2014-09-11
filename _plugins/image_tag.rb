# Title: Jekyll Image Tag
# Authors: Brennan Saeta : @saeta
#
# Description: Easier images
#
# Syntax:  {% image [preset] [scale] path/to/img.jpg ["caption" location] [attr="value"] %}
# Example: {% image simple 50% poster.jpg "<i>Figure 1</i> The strange case of Dr. Jekyll" bottom class="foo" %}
#          {% image gallery poster.jpg alt="The strange case of Dr. Jekyll" class="gal-img" data-selected %}
#          {% image 350xAUTO poster.jpg alt="The strange case of Dr. Jekyll" class="gal-img" data-selected %}
#
# See the documentation for full configuration and usage instructions.

require 'fileutils'
require 'pathname'
require 'digest/md5'

module Jekyll

  class Image < Liquid::Tag

    def initialize(tag_name, markup, tokens)
      @markup = markup
      super
    end

    def render(context)

      # Render any liquid variables in tag arguments and unescape template code
      render_markup = Liquid::Template.parse(@markup).render(context).gsub(/\\\{\\\{|\\\{\\%/, '\{\{' => '{{', '\{\%' => '{%')

      # Gather settings
      markup = /^\s*(?:(?<preset>[^\s.:\/%]+)\s+)?(?:(?<scale>\d+)%\s+)?(?<image_src>[^\s]+\.[A-z0-9]{3,4})(?:\s+"(?<caption>[^"]+)"\s+(?<caption_location>[a-z]+))?(?<html_attr>[\s\S]+)?$/
.match(render_markup)
      #preset = settings['presets'][ markup[:preset] ]

      raise "Image Tag can't read this tag. Try {% image [preset] [scale] path/to/img.jpg [\"caption\" location] [attr=\"value\"] %}. Found: '#{render_markup}'" unless markup

      # Process instance
      # instance = if preset
      #   {
      #     :width => preset['width'],
      #     :height => preset['height'],
      #     :src => markup[:image_src]
      #   }
      # elsif dim = /^(?:(?<width>\d+)|auto)(?:x)(?:(?<height>\d+)|auto)$/i.match(markup[:preset])
      #   {
      #     :width => dim['width'],
      #     :height => dim['height'],
      #     :src => markup[:image_src]
      #   }
      # else
      #   { :src => markup[:image_src] }
      # end

      # Process html attributes
      html_attr = if markup[:html_attr]
        Hash[ *markup[:html_attr].scan(/(?<attr>[^\s="]+)(?:="(?<value>[^"]+)")?\s?/).flatten ]
      else
        {}
      end

      # if preset && preset['attr']
      #   html_attr = preset['attr'].merge(html_attr)
      # end

      html_attr_string = html_attr.inject('') { |string, attrs|
        if attrs[1]
          string << "#{attrs[0]}=\"#{attrs[1]}\" "
        else
          string << "#{attrs[0]} "
        end
      }

      # Raise some exceptions before we start expensive processing
      #raise "Image Tag can't find the \"#{markup[:preset]}\" preset. Check image: presets in _config.yml for a list of presets." unless preset || dim ||  markup[:preset].nil?


      # Generate the markup!
      "<div class='jekyll-img-tag'><div class='jekyll-img-tag-img' style='width: #{markup[:scale]}'><a href='#{markup[:image_src]}'><img src='#{markup[:image_src]}' #{html_attr_string} /></a></div><p>#{markup[:caption]}</p></div>"
    end
  end
end

Liquid::Template.register_tag('image', Jekyll::Image)

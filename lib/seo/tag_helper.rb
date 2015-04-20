module Seo
  module TagHelper
    @tags = {}

    def set_title(name)
      @tags ||= {}
      @tags['title'] = name
    end

    def set_meta(property, content)
      @tags ||= {}
      @tags[property] = content
    end

    def build_meta_tags(tags)
      output = ''

      tags.each do |property, content|

        if property.start_with? 'title'
          output << content_tag(:title, content)
        else
          output << tag(:meta, property: property, content: content)
        end
      end

      output
    end 

    def meta_tags(og:true)
      @tags ||= {}

      output = build_meta_tags(@tags)

      if og
         @og_tags = Hash[@tags.map { |tag, value| ["og:#{tag}", value] }]
         output << build_meta_tags(@og_tags)
      end

      output.html_safe
   end
  end
end


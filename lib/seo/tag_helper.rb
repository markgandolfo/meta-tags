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

    def meta_tags(og:true)
      @tags ||= {}
      output = "";

      @tags.each do |property, content|
        if property == 'title'
          output << content_tag(:title, content)
        else
          output << tag(:meta, property: property, content: content)
        end
      end

      output.html_safe
    end
  end
end


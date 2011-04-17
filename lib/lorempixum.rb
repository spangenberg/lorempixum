module ActionView
  module Helpers
    module AssetTagHelper
      def placeholder_image_tag(options = {})
        source = "http://lorempixum.com"
        options[:alt] = "lorempixum" unless options.has_key?(:alt)

        # gray
        if options.has_key?(:gray)
          source += "/g" if options[:gray]
          options.delete(:gray)
        end

        # width
        width = options.has_key?(:width) ? options[:width] : 100
        source += "/#{width}"

        # height
        height = options.has_key?(:height) ? options[:height] : 100
        source += "/#{height}"

        # category
        if options.has_key?(:category)
          source += "/#{options.delete(:category)}"

          # number
          source += "/#{options.delete(:number)}" if options.has_key?(:number)
        end

        image_tag(source, options)
      end
      alias_method :lorempixum_image_tag, :placeholder_image_tag
    end
  end
end

require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class Array < RailsAdmin::Config::Fields::Base
          # Register field type for the type loader
          RailsAdmin::Config::Fields::Types::register(self)

          @searchable = true
          @view_helper = :text_area

          register_instance_option(:html_attributes) do
            {
              :class => "#{css_class} #{has_errors? ? "errorField" : nil}",
              :style => "width:696px;height:90px;",
              :value => value.join("\n"),
            }
          end

          register_instance_option(:partial) do
            :form_array
          end
        end
      end
    end
  end
end

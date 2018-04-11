require "administrate/field/base"
require "rails"

module Administrate
  module Field
    class Image < Administrate::Field::Base
      class Engine < ::Rails::Engine
      end

      def show_preview?
        options.fetch(:show_preview, false) && data.present?
      end
    end
  end
end

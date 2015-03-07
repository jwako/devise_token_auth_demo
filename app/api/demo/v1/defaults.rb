module Demo
  module V1
    module Defaults
      extend ActiveSupport::Concern

      included do
        version 'v1'
        format :json
        formatter :json, Grape::Formatter::Jbuilder
        default_format :json
        content_type :json, 'application/json; charset=utf-8;'

        rescue_from :all do |e|
          Grape::API.logger.error(e)
          error_hash = { message: "#{e.message} (#{e.class.name})" }
          error_response(error_hash)
        end
      end

    end
  end
end
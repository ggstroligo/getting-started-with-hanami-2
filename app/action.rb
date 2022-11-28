# auto_register: false
# frozen_string_literal: true

require "hanami/action"

module Bookshelf
  class Action < Hanami::Action
    config.handle_exception ROM::TupleCountMismatchError => :handle_not_found

    private

    def handle_not_found(_req, response, _exception)
      response.status = 404
      response.format = :json
      response.body = { error: "not_found" }.to_json
    end
  end
end

# frozen_string_literal: true

module Bookshelf
  module Actions
    module Books
      class Create < Bookshelf::Action
        include Deps["persistence.rom"]

        before :validate_params

        params do
          required(:book).hash do
            required(:title).filled(:string)
            required(:author).filled(:string)
          end
        end

        def handle(request, response)
          book = rom.relations[:books]
                    .changeset(:create, request.params[:book])
                    .commit

          response.status = 201
          response.body = book.to_json
        end
      end
    end
  end
end

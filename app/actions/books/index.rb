# frozen_string_literal: true
require 'pry'

module Bookshelf
  module Actions
    module Books
      class Index < Bookshelf::Action
        include Deps["persistence.rom"]

        def handle(*, response)
          books = rom.relations["books"]
                     .select(:title, :author)
                     .order(:title)
                     .to_a

          response.format = :json
          response.body = books.to_json
        end
      end
    end
  end
end

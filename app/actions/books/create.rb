# frozen_string_literal: true

module Bookshelf
  module Actions
    module Books
      class Create < Bookshelf::Action
        def handle(*, response)
          response.body = self.class.name
        end
      end
    end
  end
end

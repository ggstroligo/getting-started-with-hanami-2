module Bookshelf::Actions::Home
  class Show < Bookshelf::Action
    def handle(*, response)
      response.body = "Welcome to Bookshelf"
    end
  end
end
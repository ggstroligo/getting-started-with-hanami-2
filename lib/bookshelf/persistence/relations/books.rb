module Bookshelf::Persistence::Relations
  class Books < ROM::Relation[:sql]
    schema :books, infer: true
  end
end
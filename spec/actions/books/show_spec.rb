# frozen_string_literal: true

RSpec.describe Bookshelf::Actions::Books::Show do
  it "works" do
    response = subject.call({})
    expect(response).to be_not_found
  end
end

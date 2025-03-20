require "test_helper"

RSpec.describe Book, type: :model do
  context "attributes" do
    let {title: "Harry Potter"}
    let {author: "J.K. Rowling"}
    let {favorite: true}

    subject { build(:book, title: title, author: author, favorite: favorite)}

    it "has a title" do
      expect(subject.title).to eq title
    end

    it "has a author" do
      expect(subject.author).to eq author
    end

    it "has a favorite" do
      expect(subject.favorite).to eq favorite
    end
  end

  context "validations" do
    it "requires a title" do
      book = build(:book, title: nil)
      expect(book).to_not be_valid
    end

    it "accepts an optional author" do
      book = build(:book, title: "Test", author: nil)
      expect(book).to be_valid
    end
  end
end

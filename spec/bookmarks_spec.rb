require 'bookmarks'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      Bookmark.new_bookmark("http://www.destroyallsoftware.com")
      Bookmark.new_bookmark("http://www.google.com")
      Bookmark.new_bookmark("http://www.makersacademy.com")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end

  describe '#add_bookmark' do
    it 'adds a new bookmark' do
      addbookmarks = Bookmark.new_bookmark("http://bbc.co.uk/sport")
      expect(Bookmark.all).to include("http://bbc.co.uk/sport")
    end
  end
end

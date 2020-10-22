require 'bookmarks'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      Bookmark.new_bookmark("http://www.destroyallsoftware.comU1")
      Bookmark.new_bookmark("http://www.google.comU2")
      Bookmark.new_bookmark("http://www.makersacademy.comU3")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end

  describe '#new_bookmark' do
    it 'adds a new bookmark' do
      Bookmark.new_bookmark("http://bbc.co.uk/sportU4")
      expect(Bookmark.all).to include("http://bbc.co.uk/sport")
    end
  end
end

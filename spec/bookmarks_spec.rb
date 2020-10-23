require 'bookmarks'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      Bookmark.new_bookmark(url: "http://www.destroyallsoftware.com", title: 'Destroy All Software')
      Bookmark.new_bookmark(url: "http://www.google.com", title: 'Google')
      Bookmark.new_bookmark(url: "http://www.makersacademy.com", title: 'Makers')

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end

  describe '#new_bookmark' do
    it 'adds a new bookmark' do
      bookmark = Bookmark.new_bookmark(url: "http://bbc.co.uk/sport", title: 'BBC Sport').first
      
      expect(bookmark['url']).to eq("http://bbc.co.uk/sport")
      expect(bookmark['title']).to eq("BBC Sport")
    end
  end
end

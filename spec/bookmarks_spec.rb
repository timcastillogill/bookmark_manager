require_relative './../lib/bookmarks'

describe Bookmark do
    before :each do
      reset_test_database
    end
  describe '.all' do
    it 'returns all bookmarks' do
      
      Bookmark.new_bookmark(url: "http://www.destroyallsoftware.com", title: 'Destroy All Software')
      Bookmark.new_bookmark(url: "http://www.google.com", title: 'Google')
      Bookmark.new_bookmark(url: "http://www.makersacademy.com", title: 'Makers')

      bookmarks = Bookmark.all
      
      expect(bookmarks.first.title).to include("Destroy All Software")
      expect(bookmarks.length).to eq 3
    end
  end

  describe '#new_bookmark' do
    it 'adds a new bookmark' do
      bookmark = Bookmark.new_bookmark(url: "http://bbc.co.uk/sport", title: 'BBC Sport').first
      
      expect(bookmark['url']).to eq("http://bbc.co.uk/sport")
      expect(bookmark['title']).to eq("BBC Sport")
    end
  end

  describe '#delete_bookmark' do
    it 'deletes an exiting bookmark' do
      bookmark = Bookmark.new_bookmark(url: "http://bbc.co.uk/sport", title: 'BBC Sport')

      expect(bookmark.length).to eq nil

    end
  end
end

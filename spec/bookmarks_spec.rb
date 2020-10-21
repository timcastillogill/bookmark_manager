require 'bookmarks'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: "Bookmark_manager_test")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end

  describe '#add_bookmark' do
    it 'adds a new bookmark' do
      connection = PG.connect(dbname: "Bookmark_manager_test")
      addbookmarks = Bookmark.new_bookmark
      expect(addbookmarks).to include("http://bbc.co.uk/sport")
    end
  end

end

require 'bookmarks'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://smile.amazon.co.uk")
      expect(bookmarks).to include("https://www.asos.com")
      expect(bookmarks).to include("https://www.netflix.com")
    end
  end

  context 'tests database connection' do
    it 'returns successfully loaded database' do
      expect { Bookmark.new('bookmark_manager') }.to output("Successfully loaded database\n").to_stdout
    end  
  end
end
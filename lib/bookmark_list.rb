
class BookmarkList

  def initialize
    @bookmarks = ['Bookmark 1', 'Bookmark 2', 'Bookmark 3']
  end

  def all
    @bookmarks.each { |bookmark| puts bookmark }
  end

end
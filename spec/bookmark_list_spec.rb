require 'bookmark_list'

describe BookmarkList do

  it 'has bookmarks' do
    expect(subject.all).to eq ['Bookmark 1', 'Bookmark 2', 'Bookmark 3']
  end

end

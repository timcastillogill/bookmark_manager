feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do 
    visit '/bookmarks'
    expect(page).to have_content ["Bookmark 1", "Bookmark 2", "Bookmark 3"]
  end
end

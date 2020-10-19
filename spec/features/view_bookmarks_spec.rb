feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do 
    visit '/bookmarks'
    expect(page).to have_content "Bookmarks"
  end
end

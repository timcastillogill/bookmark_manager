require 'pg'

feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do
    Bookmark.new_bookmark(url: "http://www.destroyallsoftware.com")
    Bookmark.new_bookmark(url: "http://www.google.com")
    Bookmark.new_bookmark(url: "http://www.makersacademy.com")

    visit '/bookmarks'

    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end

feature 'Adding bookmarks' do
  scenario 'Visit add bookmark page' do
    visit '/addbookmark'
    fill_in('url', with: 'http://bbc.co.uk/sport')
    click_button "Submit"
    expect(page).to have_content "http://bbc.co.uk/sport"
  end
end

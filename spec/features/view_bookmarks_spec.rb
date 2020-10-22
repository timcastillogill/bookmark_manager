require 'pg'

feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do
    Bookmark.new_bookmark("http://www.destroyallsoftware.comF1")
    Bookmark.new_bookmark("http://www.google.comF2")
    Bookmark.new_bookmark("http://www.makersacademy.comF3")

    visit '/bookmarks'

    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end

feature 'Adding bookmarks' do
  scenario 'Visit add bookmark page' do
    Bookmark.new_bookmark("http://www.destroyallsoftware.comF4")
    Bookmark.new_bookmark("http://www.google.comF5")
    Bookmark.new_bookmark("http://www.makersacademy.comF6")
    
    visit '/addbookmark'
    fill_in('Add_Bookmark', with: 'http://bbc.co.uk/sportF7')
    click_button "Submit"
    expect(page).to have_content "http://bbc.co.uk/sport"
  end
end

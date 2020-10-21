require 'pg'

feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do
    connection = PG.connect(dbname: "Bookmark_manager_test")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")

    visit '/bookmarks'

    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end

feature 'Adding bookmarks' do
  scenario 'Visit add bookmark page' do
    connection = PG.connect(dbname: "Bookmark_manager_test")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
    visit '/addbookmarks'
    fill_in('Add_Bookmark', with: 'http://bbc.co.uk/sport')
    click_button "Submit"
    expect(page).to have_content "http://bbc.co.uk/sport"
  end
end

feature 'Viewing bookmarks' do
  scenario 'Visit index page' do 
    visit '/'
    expect(page).to have_content "Hello World"
  end
end

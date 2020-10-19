feature 'Test Infrastructure' do
  scenario 'Visit index page' do 
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end
end

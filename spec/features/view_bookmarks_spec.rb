feature 'Viewing bookmarks' do
  scenario 'Visit bookmark page' do 
    visit '/bookmarks'
    
    expect(page).to have_content "https://smile.amazon.co.uk"
    expect(page).to have_content "https://www.asos.com"
    expect(page).to have_content "https://www.netflix.com"
  end
end

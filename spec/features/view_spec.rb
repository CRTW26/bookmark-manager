 
feature 'can view bookmarks' do
  before(:each) do 
  drop_table
end 
  scenario 'displays bookmarks that you have added' do 
    visit '/'
    click_button 'View bookmarks'
    expect(page).to have_content 'http://www.makersacademy.com'
  end 
end 
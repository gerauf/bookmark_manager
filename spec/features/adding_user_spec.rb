feature 'Adding a user' do

  scenario 'user is created' do
    visit '/signup'
    fill_in 'username', with: 'matt1'
    fill_in 'email', with: 'secret'
    expect{click_button('Submit')}.to change {User.all.size}.by 1
    expect(page).to have_content 'Welcome'
    
  end

end

feature 'Adding a user' do

  scenario 'user is created' do
    count = User.all.count
    visit '/signup'
    fill_in 'username', with: 'matt1'
    fill_in 'email', with: 'secret'
    expect{click_button('Submit')}.to change{count}.by 1
  end

end

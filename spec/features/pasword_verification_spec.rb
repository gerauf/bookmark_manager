feature 'password confirmation' do
  scenario 'password mismatch does not create new user' do
    visit '/'
    fill_in 'username', with: 'matt1'
    fill_in 'email', with: 'matt@iheartcats.com'
    fill_in 'password', with: 'secret'
    fill_in 'password_confirmation', with: 'becret'
    expect{click_button('Submit')}.not_to change(User, :count)
  end
end

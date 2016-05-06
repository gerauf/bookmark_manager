feature 'Adding a user' do
  scenario 'user is created' do
    visit '/'
    fill_in 'username', with: 'matt1'
    fill_in 'email', with: 'matt@iheartcats.com'
    fill_in 'password', with: 'secret'
    fill_in 'password_confirmation', with: 'secret'

    expect{click_button('Submit')}.to change(User, :count).by 1
    expect(page).to have_content "Signed in as: matt1"

  end
end

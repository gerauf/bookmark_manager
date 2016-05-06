feature 'Adding a user' do

  scenario 'user is created' do
    visit '/signup'
    fill_in 'username', with: 'matt1'
    fill_in 'email', with: 'matt@iheartcats.com'
    fill_in 'password', with: 'secret'

    expect{click_button('Submit')}.to change(User, :count).by 1
    expect(page).to have_content "matt1's saved links"

  end

end

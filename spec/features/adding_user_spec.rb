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

  let(:user) do
  User.create(email: 'user@example.com',
              password: 'secret1234',
              password_confirmation: 'secret1234')
  end

  scenario 'with correct credentials' do
    sign_in(email: user.email,   password: user.password)
    expect(page).to have_content "Welcome, #{user.email}"
  end

  def sign_in(email:, password:)
    visit '/sessions/new'
    fill_in :email, with: email
    fill_in :password, with: password
    click_button 'Sign in'
  end


end

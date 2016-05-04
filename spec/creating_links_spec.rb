feature "creating links" do
 scenario "I can add a link using a form" do
  visit '/links/new'
  fill_in "url", with: 'http://www.zombo.com/'
  fill_in "title",with: "This is Zombocom"
  click_button "Create link"
  expect(current_path).to eq '/links'

  within 'url#links' do
    expect(page).to have_content('This is Zombocom')
  end

 end

end
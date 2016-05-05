feature 'Filtering tags' do

  before(:each) do
    Link.create(title: 'Makers Academy', url: 'http://www.makersacademy.com', tags: [Tag.first_or_create(name: 'Coding')])
    Link.create(title: 'Capybara', url: 'http://www.capybara.com', tags: [Tag.first_or_create(name: 'Capybara')])
    Link.create(title: 'Bubbleology', url: 'http://www.bubbleology.com', tags: [Tag.first_or_create(name: 'Bubbles')])
  end

  scenario 'I can filter links by tag' do
    visit('/tags/Bubbles')
    expect(page).not_to have_content 'Coding'
    expect(page).not_to have_content 'Furry bastards'
    expect(page).to have_content 'Bubbles'
  end

end

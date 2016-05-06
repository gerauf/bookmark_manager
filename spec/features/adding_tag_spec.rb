feature 'Adding tags' do
  scenario 'I can add a single tag to a link' do
    create_link_with_tag
    link = Link.first
    expect(link.tags.map(&:name)).to include('Bubbles')
  end

  scenario 'I can view the tag I added' do
    create_link_with_tag
    expect(page).to have_content 'Bubbles'
  end

  scenario 'I can add miltiple tags to a new link' do
    visit('links/new')
    fill_in('title', with: 'Bubbleology')
    fill_in('url', with: 'http://bubbleology.co.uk')
    fill_in('tags', with: 'Bubbles Tea Drinks Japan')
    click_button('Add link')
    link = Link.all
    expect(link.tags.map(&:name)).to include("Bubbles", "Tea", "Drinks", "Japan")
  end
end

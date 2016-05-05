def create_link_with_tag
  visit('links/new')
  fill_in('title', with: 'Bubbleology')
  fill_in('url', with: 'http://bubbleology.co.uk')
  fill_in('tags', with: 'Bubbles')
  click_button('Add link')
end

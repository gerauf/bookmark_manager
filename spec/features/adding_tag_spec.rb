feature 'Adding tags' do
  scenario 'I can add a single tag to a link' do
    create_link_with_tag
    link = Link.first
    expect(link.tags.map(&:name)).to include('Bubbles')
  end
end

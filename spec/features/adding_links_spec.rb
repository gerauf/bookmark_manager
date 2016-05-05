feature 'Adding links' do
  scenario 'I can save a website address and title' do
    create_link_with_tag
    expect(current_path).to eq('/links')

    within 'ul#links' do
      expect(page).to have_content('Bubbleology')
    end
  end
end

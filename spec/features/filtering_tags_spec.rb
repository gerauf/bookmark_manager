feature 'Filtering tags' do

  scenario 'I can filter links by tag' do
    create_link_with_tag
    visit('/tags/bubbles')

    tags = page.find("ul[class='tags']")
    tags.each do | li |
      expect(li).to have_content('Bubbles')
    end
  end

end

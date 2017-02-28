# require('capybara/rspec')
#   require('./app')
#   Capybara.app = Sinatra::Application
#   set(:show_exceptions, false)

#   describe('the loan path', {:type => :feature}) do
#     it('processes the user entry and stores both name and value') do
#       visit('/')
#       fill_in('name', :with => 'Kenn')
#       fill_in('number', :with => 25000)
#       click_button('Send')
#       expect(page).to have_content('Kenn', 25000)
#     end
#   end
  
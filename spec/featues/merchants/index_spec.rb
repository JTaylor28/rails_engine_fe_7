require "rails_helper"


RSpec.describe "/merchants", type: :feature do
  describe " As a user " do 
    
    before :each do
      visit merchants_path
    end

    describe " when I visit the merchants index page " do
      it " I see a list of merchants " do
        expect(page).to have_content("Merchants")
        expect(page).to have_content("Schroeder-Jerde")
      end

      describe " I see the list of merchant names are links to their showpage " do
        it " When I click the like I am redirected to the merchants showpage" do 

          expect(page).to have_link("Schroeder-Jerde")

          click_link "Schroeder-Jerde"
          
          expect(current_path).to eq(merchant_path(1))
        end
      end
    end
  end
end
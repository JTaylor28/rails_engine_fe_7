require "rails_helper"

RSpec.describe "/merchants/id", type: :feature do
  describe "As a user " do
    describe "when I visit the merchants show page " do 
      before :each do
        visit "/merchants/1"
      end

      it "I see a list of that merchants items" do
        expect(page).to have_content("Schroeder-Jerde's Page")
        expect(page).to have_content("Item Expedita Aliquam")
        expect(page).to have_content("Item Provident At")
        expect(page).to have_content("Item Expedita Fuga")
        expect(page).to have_content("Item Est Consequuntur")
      end
    end
  end
end
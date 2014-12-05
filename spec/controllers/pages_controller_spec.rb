require 'rails_helper'

describe PagesController do
  describe '#index' do
    it "allows non-loggedin students to see it" do
      get :index
      expect(response).to be_success
    end
  end

end

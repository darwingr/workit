require 'rails_helper'

RSpec.describe WorkoutsController, type: :controller do
  describe 'GET new' do
    it 'responds 200' do
      get :new

      expect(response).to have_http_status(200)
    end
  end

  describe 'POST create' do
    context 'with valid attributes' do
      it 'creates a new workout' do
        attrs = FactoryGirl.attributes_for :workout
        post :create, workout: attrs
        expect(response).to redirect_to(assigns(:workout))
      end
    end

    context 'without valid attributes' do
      it 'does not create a new workout' do
        attrs = FactoryGirl.attributes_for :workout, title: nil
        post :create, workout: attrs
        expect(response).to_not redirect_to(assigns(:workout))
      end
    end
  end

  describe 'GET show' do
    it 'renders the requested workout' do
      workout = FactoryGirl.create :workout
      get :show, id: workout
      expect(response).to render_template(:show)
    end
  end
end

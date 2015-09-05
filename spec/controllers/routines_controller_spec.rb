require 'rails_helper'

RSpec.describe RoutinesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Routine. As you add validations to Routine, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for :routine
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for :invalid_routine
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RoutinesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all routines as @routines" do
      routine = Routine.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:routines)).to eq([routine])
    end
  end

  describe "GET #show" do
    it "assigns the requested routine as @routine" do
      routine = Routine.create! valid_attributes
      get :show, {:id => routine.to_param}, valid_session
      expect(assigns(:routine)).to eq(routine)
    end
  end

  describe "GET #new" do
    it "assigns a new routine as @routine" do
      get :new, {}, valid_session
      expect(assigns(:routine)).to be_a_new(Routine)
    end
  end

  describe "GET #edit" do
    it "assigns the requested routine as @routine" do
      routine = Routine.create! valid_attributes
      get :edit, {:id => routine.to_param}, valid_session
      expect(assigns(:routine)).to eq(routine)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Routine" do
        expect {
          post :create, {:routine => valid_attributes}, valid_session
        }.to change(Routine, :count).by(1)
      end

      it "assigns a newly created routine as @routine" do
        post :create, {:routine => valid_attributes}, valid_session
        expect(assigns(:routine)).to be_a(Routine)
        expect(assigns(:routine)).to be_persisted
      end

      it "redirects to the created routine" do
        post :create, {:routine => valid_attributes}, valid_session
        expect(response).to redirect_to(Routine.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved routine as @routine" do
        post :create, {:routine => invalid_attributes}, valid_session
        expect(assigns(:routine)).to be_a_new(Routine)
      end

      it "re-renders the 'new' template" do
        post :create, {:routine => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested routine" do
        routine = Routine.create! valid_attributes
        put :update, {:id => routine.to_param, :routine => new_attributes}, valid_session
        routine.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested routine as @routine" do
        routine = Routine.create! valid_attributes
        put :update, {:id => routine.to_param, :routine => valid_attributes}, valid_session
        expect(assigns(:routine)).to eq(routine)
      end

      it "redirects to the routine" do
        routine = Routine.create! valid_attributes
        put :update, {:id => routine.to_param, :routine => valid_attributes}, valid_session
        expect(response).to redirect_to(routine)
      end
    end

    context "with invalid params" do
      it "assigns the routine as @routine" do
        routine = Routine.create! valid_attributes
        put :update, {:id => routine.to_param, :routine => invalid_attributes}, valid_session
        expect(assigns(:routine)).to eq(routine)
      end

      it "re-renders the 'edit' template" do
        routine = Routine.create! valid_attributes
        put :update, {:id => routine.to_param, :routine => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested routine" do
      routine = Routine.create! valid_attributes
      expect {
        delete :destroy, {:id => routine.to_param}, valid_session
      }.to change(Routine, :count).by(-1)
    end

    it "redirects to the routines list" do
      routine = Routine.create! valid_attributes
      delete :destroy, {:id => routine.to_param}, valid_session
      expect(response).to redirect_to(routines_url)
    end
  end

end

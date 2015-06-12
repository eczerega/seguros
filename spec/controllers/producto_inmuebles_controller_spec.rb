require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ProductoInmueblesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ProductoInmueble. As you add validations to ProductoInmueble, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProductoInmueblesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all producto_inmuebles as @producto_inmuebles" do
      producto_inmueble = ProductoInmueble.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:producto_inmuebles)).to eq([producto_inmueble])
    end
  end

  describe "GET #show" do
    it "assigns the requested producto_inmueble as @producto_inmueble" do
      producto_inmueble = ProductoInmueble.create! valid_attributes
      get :show, {:id => producto_inmueble.to_param}, valid_session
      expect(assigns(:producto_inmueble)).to eq(producto_inmueble)
    end
  end

  describe "GET #new" do
    it "assigns a new producto_inmueble as @producto_inmueble" do
      get :new, {}, valid_session
      expect(assigns(:producto_inmueble)).to be_a_new(ProductoInmueble)
    end
  end

  describe "GET #edit" do
    it "assigns the requested producto_inmueble as @producto_inmueble" do
      producto_inmueble = ProductoInmueble.create! valid_attributes
      get :edit, {:id => producto_inmueble.to_param}, valid_session
      expect(assigns(:producto_inmueble)).to eq(producto_inmueble)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ProductoInmueble" do
        expect {
          post :create, {:producto_inmueble => valid_attributes}, valid_session
        }.to change(ProductoInmueble, :count).by(1)
      end

      it "assigns a newly created producto_inmueble as @producto_inmueble" do
        post :create, {:producto_inmueble => valid_attributes}, valid_session
        expect(assigns(:producto_inmueble)).to be_a(ProductoInmueble)
        expect(assigns(:producto_inmueble)).to be_persisted
      end

      it "redirects to the created producto_inmueble" do
        post :create, {:producto_inmueble => valid_attributes}, valid_session
        expect(response).to redirect_to(ProductoInmueble.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved producto_inmueble as @producto_inmueble" do
        post :create, {:producto_inmueble => invalid_attributes}, valid_session
        expect(assigns(:producto_inmueble)).to be_a_new(ProductoInmueble)
      end

      it "re-renders the 'new' template" do
        post :create, {:producto_inmueble => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested producto_inmueble" do
        producto_inmueble = ProductoInmueble.create! valid_attributes
        put :update, {:id => producto_inmueble.to_param, :producto_inmueble => new_attributes}, valid_session
        producto_inmueble.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested producto_inmueble as @producto_inmueble" do
        producto_inmueble = ProductoInmueble.create! valid_attributes
        put :update, {:id => producto_inmueble.to_param, :producto_inmueble => valid_attributes}, valid_session
        expect(assigns(:producto_inmueble)).to eq(producto_inmueble)
      end

      it "redirects to the producto_inmueble" do
        producto_inmueble = ProductoInmueble.create! valid_attributes
        put :update, {:id => producto_inmueble.to_param, :producto_inmueble => valid_attributes}, valid_session
        expect(response).to redirect_to(producto_inmueble)
      end
    end

    context "with invalid params" do
      it "assigns the producto_inmueble as @producto_inmueble" do
        producto_inmueble = ProductoInmueble.create! valid_attributes
        put :update, {:id => producto_inmueble.to_param, :producto_inmueble => invalid_attributes}, valid_session
        expect(assigns(:producto_inmueble)).to eq(producto_inmueble)
      end

      it "re-renders the 'edit' template" do
        producto_inmueble = ProductoInmueble.create! valid_attributes
        put :update, {:id => producto_inmueble.to_param, :producto_inmueble => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested producto_inmueble" do
      producto_inmueble = ProductoInmueble.create! valid_attributes
      expect {
        delete :destroy, {:id => producto_inmueble.to_param}, valid_session
      }.to change(ProductoInmueble, :count).by(-1)
    end

    it "redirects to the producto_inmuebles list" do
      producto_inmueble = ProductoInmueble.create! valid_attributes
      delete :destroy, {:id => producto_inmueble.to_param}, valid_session
      expect(response).to redirect_to(producto_inmuebles_url)
    end
  end

end
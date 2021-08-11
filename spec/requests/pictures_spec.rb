#  require 'rails_helper'

# # This spec was generated by rspec-rails when you ran the scaffold generator.
# # It demonstrates how one might use RSpec to test the controller code that
# # was generated by Rails when you ran the scaffold generator.
# #
# # It assumes that the implementation code is generated by the rails scaffold
# # generator. If you are using any extension libraries to generate different
# # controller code, this generated spec may or may not pass.
# #
# # It only uses APIs available in rails and/or rspec-rails. There are a number
# # of tools you can use to make these specs even more expressive, but we're
# # sticking to rails and rspec-rails APIs to keep things simple and stable.

# RSpec.describe "/pictures", type: :request do
  
#   # Picture. As you add validations to Picture, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) {
#     skip("Add a hash of attributes valid for your model")
#   }

#   let(:invalid_attributes) {
#     skip("Add a hash of attributes invalid for your model")
#   }

#   describe "GET /index" do
#     it "renders a successful response" do
#       Picture.create! valid_attributes
#       get pictures_url
#       expect(response).to be_successful
#     end
#   end

#   describe "GET /show" do
#     it "renders a successful response" do
#       picture = Picture.create! valid_attributes
#       get picture_url(picture)
#       expect(response).to be_successful
#     end
#   end

#   describe "GET /new" do
#     it "renders a successful response" do
#       get new_picture_url
#       expect(response).to be_successful
#     end
#   end

#   describe "GET /edit" do
#     it "render a successful response" do
#       picture = Picture.create! valid_attributes
#       get edit_picture_url(picture)
#       expect(response).to be_successful
#     end
#   end

#   describe "POST /create" do
#     context "with valid parameters" do
#       it "creates a new Picture" do
#         expect {
#           post pictures_url, params: { picture: valid_attributes }
#         }.to change(Picture, :count).by(1)
#       end

#       it "redirects to the created picture" do
#         post pictures_url, params: { picture: valid_attributes }
#         expect(response).to redirect_to(picture_url(Picture.last))
#       end
#     end

#     context "with invalid parameters" do
#       it "does not create a new Picture" do
#         expect {
#           post pictures_url, params: { picture: invalid_attributes }
#         }.to change(Picture, :count).by(0)
#       end

#       it "renders a successful response (i.e. to display the 'new' template)" do
#         post pictures_url, params: { picture: invalid_attributes }
#         expect(response).to be_successful
#       end
#     end
#   end

#   describe "PATCH /update" do
#     context "with valid parameters" do
#       let(:new_attributes) {
#         skip("Add a hash of attributes valid for your model")
#       }

#       it "updates the requested picture" do
#         picture = Picture.create! valid_attributes
#         patch picture_url(picture), params: { picture: new_attributes }
#         picture.reload
#         skip("Add assertions for updated state")
#       end

#       it "redirects to the picture" do
#         picture = Picture.create! valid_attributes
#         patch picture_url(picture), params: { picture: new_attributes }
#         picture.reload
#         expect(response).to redirect_to(picture_url(picture))
#       end
#     end

#     context "with invalid parameters" do
#       it "renders a successful response (i.e. to display the 'edit' template)" do
#         picture = Picture.create! valid_attributes
#         patch picture_url(picture), params: { picture: invalid_attributes }
#         expect(response).to be_successful
#       end
#     end
#   end

#   describe "DELETE /destroy" do
#     it "destroys the requested picture" do
#       picture = Picture.create! valid_attributes
#       expect {
#         delete picture_url(picture)
#       }.to change(Picture, :count).by(-1)
#     end

#     it "redirects to the pictures list" do
#       picture = Picture.create! valid_attributes
#       delete picture_url(picture)
#       expect(response).to redirect_to(pictures_url)
#     end
#   end
# end

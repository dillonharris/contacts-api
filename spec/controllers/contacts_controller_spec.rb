require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe 'GET #index' do
    let!(:contacts) { create_list :contact, 3 }
    let(:contacts_json) { contacts.to_json }

    before :each do
      get :index, format: :json
    end

    it 'should render a status code succes(200)' do
      expect(response.status).to eq 200
    end

    it 'should render all the contacts in JSON format' do
      expect(response.body).to eq contacts_json
    end
  end

  describe 'GET #show' do
    let(:contact) { create :contact }
    let(:contact_json) { contact.to_json }

    before :each do
      get :show, params: { id: contact.id , format: :json }
    end

    it 'should render a status code succes(200)' do
      expect(response.status).to eq 200
    end

    it 'should render the contact in JSON format' do
      expect(response.body).to eq contact_json
    end
  end
end

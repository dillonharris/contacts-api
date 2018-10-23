class ContactsController < ApplicationController
  before_action :set_contact, only: [ :show, :update, :destroy ]

  def index
    @contacts = Contact.all
    json_response(@contacts)
  end

  def show
    json_response(@contact)
  end

  def create
    @contact = Contact.create!(todo_params)
    json_response(@contact, :created)
  end

  def update
    @contact.update(contact_params)
    json_response(@contact, :no_content)
  end

  def destroy
    @contact.destroy
    json_response(@contact, :no_content)
  end

  private
  def contact_params
    params.permit(:title, :name, :surname, :nickname, :website, :relationship, :other)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end

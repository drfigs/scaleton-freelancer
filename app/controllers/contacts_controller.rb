class ContactsController < ApplicationController

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      #flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to(welcome_index_path, notice: 'Thank you for your message. We will contact you soon!')
    else
      #flash.now[:error] = 'Cannot send message.'
      redirect_to(welcome_index_path, error: 'Cannot send message.')

    end
  end
end

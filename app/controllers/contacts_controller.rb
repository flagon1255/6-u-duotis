class ContactsController < ApplicationController
	def show	
	end

	def index
		@Contact = Contact.all

	end

	def new
		@Contact = Contact.new
	end

	def edit
		@Contact= Contact.find(params[:id])
	end


def delete
@Contact = Contact.find(params[:id])
@Contact.destroy
redirect_to action:"index"
end

def update
@Contact = Contact.find(params[:id])
@Contact.assign_attributes(contact_params)
if @Contact.valid?
	@Contact.save
flash[:notice] = "Updated"
redirect_to action:"index"
else
	flash[:notice] = "Update failed"
	redirect_to action:"index"
	end

end

def create

if @Contact = Contact.new(contact_params).valid?
	 @Contact = Contact.new(contact_params)
 	@Contact.save
	flash.now[:notice] = "Submited"
	redirect_to action:"new"
else
	flash[:notice] = "Error"
	render action: "new"
end
end


def contact_params
	params.require(:contact).permit(:Name,:Email,:Message)	
end


def search
	@Contact = Contact.where("Name LIKE?", "%" +params[:q] + "%")
	render "index"
end
end
class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def create 
    @email = Email.new(object: Faker::Lorem.word, body: Faker::Lorem.paragraph)
    @email.save
    respond_to do |format|
      format.html{redirect_to root_path}
      format.js {}
    end
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html{redirect_to root_path}
      format.js {}  
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html{redirect_to root_path}
      format.js {}
    end
  end

  def update
    @email = Email.find(params[:id])
    @email.update(read: false)
  end


end

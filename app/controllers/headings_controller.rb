class HeadingsController < ApplicationController
  
  def new
    @user = params[:user_id]
  end
  
  def create
    @heading = Heading.new(params[:heading])
    @user = User.find(params[:heading][:user_id])
    respond_to do |format|
      if @heading.save
        format.html { redirect_to @user , notice: 'Heading was successfully created.' }
        format.json { render json: @heading, status: :created, location: @heading }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @heading.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @heading = Heading.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def update
    @heading = Heading.find(params[:id])
    @heading.update_attributes(params[:heading])
      
    respond_to do |format|
      format.js
    end
  end
  
  def destroy
    @heading = Heading.find(params[:id])
    @heading.destroy
    respond_to do |format|
      format.js
    end
  end
end

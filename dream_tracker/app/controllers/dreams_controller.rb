class SpidersController < ApplicationController
  before_action :set_dream, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
  	@dreams = Dream.all
  end

  def new
  	@dream = Dream.new
  end

  def create
  	@dream = Dream.new(dream_params)
  	if @dream.save
  	  redirect_to @dream
  	else
  	  render action: 'new'
  	end
  end
  
  def edit
  end
  
  def update
  end

  def destroy
  end

  private

  def set_dream
  	@dream = Dream.find(params[:id])
  end

  def dream_params
    params.require(:dream).permit(:date, :title, :body)
  end

end

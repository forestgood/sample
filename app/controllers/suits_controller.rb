class SuitsController < ApplicationController
  def new
  	@suit = Suit.new
  end

  def index
  	@suits = Suit.all
  end

  def create
    @suit = Suit.new(params[:suit])
    if @suit.save	
      flash[:success] = "Thank you for suiting down"
      redirect_to suits_path
    else
      flash[:error] = "Please make sure all required fields are filled out and your email address is unique."
      redirect_to new_suit_path
    end
  end

  def show
    @suit = Suit.find(params[:id])
  end
end

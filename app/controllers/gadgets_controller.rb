class GadgetsController < ApplicationController

  before_filter :authenticate_user!
  before_filter :find_gadget, only: [:show]

  def index
    @gadgets = current_user.gadgets
    @latest = current_user.gadgets.last(5)
  end

  def show

  end

  def new
    @gadget = current_user.gadgets.build
  end

  def create
    @gadget = current_user.gadgets.build(gadget_params)

    if @gadget.save
      params[:files].each do |file|
        @gadget.images.create(file: file)
      end
      redirect_to [current_user, @gadget], flash: {success: "A new Gadget has been added."}
    else
      flash[:alert] = "Gadget has not been added."
      render action: "new"
    end
  end

  private

  def gadget_params
    params.require(:gadget).permit(:name, :description)
  end

  def find_gadget
    @gadget = current_user.gadgets.find(params[:id])  
    rescue
      flash[:alert] = "The gadget you were looking for could not be found."
      redirect_to user_gadgets_path(current_user)
  end

end

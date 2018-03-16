class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:update]

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = current_user.items.new(item_params)
    if @item.save
      respond_to do |format|
        format.html { redirect_to root_path}
        format.json { render json: @item, status: :created, location: @item }
        format.js
      end
    else
      flash[:notice] = "Item not saved, try again"
    end
  end

  def edit
    @item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update_attributes(item_params)

  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.html { redirect_to root_path}
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end




  private

  def item_params
    params.require(:item).permit(:name, :user_id)
  end

end

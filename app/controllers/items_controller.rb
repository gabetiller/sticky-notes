class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      flash[:notice] = "Item was saved"
      redirect_to root_path
    else
      flash[:notice] = "Item not saved, try again"
    end
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

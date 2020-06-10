class OrdersController < InheritedResources::Base
  

  def create
    @good_id = params[:good_id]
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    if @order.save
      redirect_to goods_path
    else
      render "new"
    end
  end
  
  private

  def order_params
    params.require(:order).permit(:quantity, :contacts, :good_id)
  end
 

end

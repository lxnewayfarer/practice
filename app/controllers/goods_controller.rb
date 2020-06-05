class GoodsController < InheritedResources::Base

  private

    def good_params
      params.require(:good).permit()
    end

end

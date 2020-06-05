class TicketsController < InheritedResources::Base

  private

    def ticket_params
      params.require(:ticket).permit()
    end

end

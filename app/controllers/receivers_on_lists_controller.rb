class ReceiversOnListsController < ApplicationController
  def create

    ReceiversOnList.create(:receiver_id => params[:receiver_id], :list_id => params[:list_id] )

  end
end

class PartyController < ApplicationController
  def index
    @reasons = Reason.all
  end

  def view
    # @cheerups_array = PartyPlanner.new(params[:reason_ids]).invite_cheerups

    respond_to do |format|
        format.json { render json: {:cheerups_response => PartyPlanner.new(params[:reason_ids]).invite_cheerups} }
    end

  end
end
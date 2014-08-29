class PartyController < ApplicationController
  def index
    @reasons = Reason.all
  end

  def view
    @cheerups_array = PartyPlanner.new(params[:reason_ids]).invite_cheerups
  end
end
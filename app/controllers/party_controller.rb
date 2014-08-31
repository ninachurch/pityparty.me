class PartyController < ApplicationController
  def index
    @reasons = Reason.all
  end

  def view
    p "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    p params
    @cheerups_array = PartyPlanner.new(params[:reason_ids]).invite_cheerups
    @cheerups_array.to_json
  end
end
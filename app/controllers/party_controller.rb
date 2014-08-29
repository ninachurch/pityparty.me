class PartyController < ApplicationController
  def index
    @reasons = Reason.all
  end

  def view
    @ids = params[:reason_ids]
    #["1","2","4"]
    # @reasons = Reason.find_by(@ids.first.to_i)
    @ids.map! {|id| id.to_i}

    @reasons = []
    @cheerups_array = []
    @ids.each do |id|
      reason_object = Reason.find(id)
      @reasons << reason_object
    end
    @reasons.each do |reason|
      reason.cheerups.each do |cheerup|
        @cheerups_array << cheerup.visual_source
      end
    end

    # @cheerups_array
    # reason_id = @ids.first
    # p @reason = Reason.find(reason_id)
  end
end
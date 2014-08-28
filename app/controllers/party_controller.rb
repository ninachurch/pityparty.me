class PartyController < ApplicationController
  def index
    @reasons = Reason.all
  end
end
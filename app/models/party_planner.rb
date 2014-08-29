class PartyPlanner
  def initialize(id_array)
    @ids = id_array
    @reasons = []
    @cheerups_array = []
  end

  def invite_cheerups
    convert_ids_format
    interpret_reasons
    find_cheerups
  end

  private
    def convert_ids_format
      @ids.map! {|id| id.to_i}
    end

    def interpret_reasons
      @ids.each do |id|
        reason_object = Reason.find(id)
        @reasons << reason_object
      end
    end

    def find_cheerups
      @reasons.each do |reason|
        reason.cheerups.each do |cheerup|
          @cheerups_array << cheerup.visual_source
        end
      end
      @cheerups_array
    end

end
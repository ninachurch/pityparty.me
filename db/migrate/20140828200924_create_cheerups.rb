class CreateCheerups < ActiveRecord::Migration
  def change
    create_table :cheerups do |t|
      t.string :visual_source
      t.string :description
      t.has_and_belongs_to_many :reasons
    end
  end
end

class CreateCheerups < ActiveRecord::Migration
  def change
    create_table :cheerups do |t|
      t.string :visual_source
      t.string :description
    end
  end
end

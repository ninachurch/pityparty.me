class CreateReasonsCheerups < ActiveRecord::Migration
  def change
    create_table :reasons_cheerups do |t|
      t.integer :reason_id
      t.integer :cheerup_id
    end
  end
end

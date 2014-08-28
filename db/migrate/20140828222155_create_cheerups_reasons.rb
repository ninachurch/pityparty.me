class CreateCheerupsReasons < ActiveRecord::Migration
  def change
    create_table :cheerups_reasons do |t|
      t.integer :reason_id
      t.integer :cheerup_id
    end
  end
end

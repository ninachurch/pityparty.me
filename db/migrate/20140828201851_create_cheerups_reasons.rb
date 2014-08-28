class CreateCheerupsReasons < ActiveRecord::Migration
  def change
    create_table :cheerups_reasons do |t|
      t.references :reason
      t.references :cheerup
    end
  end
end

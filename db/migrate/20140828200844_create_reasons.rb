class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string :name
    end
  end
end

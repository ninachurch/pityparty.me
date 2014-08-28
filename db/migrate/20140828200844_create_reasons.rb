class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string :name
      t.has_and_belongs_to_many :cheerups
    end
  end
end

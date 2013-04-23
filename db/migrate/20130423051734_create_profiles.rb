class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :mobile
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end

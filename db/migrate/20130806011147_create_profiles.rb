class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :essay1
      t.string :essay2

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :feedback
      t.integer :profile_id

      t.timestamps
    end
  end
end
class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :content
      t.references :topic, index: true

      t.timestamps
    end
  end
end
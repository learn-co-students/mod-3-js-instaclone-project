class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :image, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.text :article
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end

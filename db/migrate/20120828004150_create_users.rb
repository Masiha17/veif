class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :article_id
      t.string :author_name
      t.text :content
      t.timestamps
    end
  end
end

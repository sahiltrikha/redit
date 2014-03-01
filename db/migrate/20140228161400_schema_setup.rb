howclass SchemaSetup < ActiveRecord::Migration
  def change
      create_table :users do |t|
        t.string :username
        t.string :email
        t.string :password
      end
      create_table :stories do |t|
        t.text :link
        t.string :title
        t.references :user
        t.timestamps
      end
      create_table :votes do |t|
        t.references :user
        t.references :story
        t.integer :vote
        t.timestamps
      end
      create_table :comments do |t|
        t.references :user
        t.references :story
        t.text :comment
        t.timestamps
      end
  end
end

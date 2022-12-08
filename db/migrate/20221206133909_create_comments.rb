class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text         :content,   null: false
      t.timestamps
      t.references   :prototype, null: false, foreign_key: true
      t.references   :user,      null: false, foreign_key: true
      t.integer      :user_id
      t.integer      :prototype_id
    end
  end
end

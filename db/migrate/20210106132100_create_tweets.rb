class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string       :name,          null: false
      t.text         :text,          null: false
      t.integer      :category_id,   null: false
      t.integer      :city_id,       null: false
      t.integer      :user_id,       null: false, foreign_key: true
      t.timestamps
    end
  end
end

class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.references :user, index: true, foreign_key: true
      t.string :type, null: false

      t.timestamps null: false
    end
  end
end

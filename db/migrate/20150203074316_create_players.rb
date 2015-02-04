class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :email, default: "", null: false
      t.string :password_digest

      t.timestamps null: false
    end
  end
end

class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.boolean "completed", default: false
      t.boolean "in_progress", default: false
      t.integer "number_of_games"
      t.integer "winner"
      t.datetime "completed_at"

      t.timestamps null: false
    end
  end
end

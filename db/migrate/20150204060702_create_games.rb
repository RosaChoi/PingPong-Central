class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.boolean "completed", default: false
      t.integer "team_1_score", default: 0
      t.integer "team_2_score", default: 0
      t.integer "match_id"

      t.timestamps null: false
    end
  end
end

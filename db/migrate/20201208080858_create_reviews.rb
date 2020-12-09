class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text              :result,     null: false
      t.integer           :level_id,   null: false
      t.text              :success,    null: false
      t.text              :failure,    null: false
      t.text              :improve,    null: false
      t.references        :prep,       foreign_key: true
      t.timestamps
    end
  end
end

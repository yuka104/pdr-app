class CreatePreps < ActiveRecord::Migration[6.0]
  def change
    create_table :preps do |t|
      t.text         :purpose,    null: false
      t.text         :reason,     null: false
      t.string       :task,       null: false
      t.text         :memo
      t.references   :user,       foreign_key: true
      t.timestamps
    end
  end
end

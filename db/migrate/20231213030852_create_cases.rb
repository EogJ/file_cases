class CreateCases < ActiveRecord::Migration[7.0]
  def change
    create_table :cases do |t|
      t.text :token

      t.timestamps
    end
  end
end

class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :text
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end

class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :conversation, foreign_key: true
      t.string :sender
      t.string :recipient
      t.boolean :read

      t.timestamps
    end
  end
end

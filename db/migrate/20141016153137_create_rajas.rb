class CreateRajas < ActiveRecord::Migration
  def change
    create_table :rajas do |t|
      t.string :sender
      t.string :reciver
      t.text :message

      t.timestamps
    end
  end
end

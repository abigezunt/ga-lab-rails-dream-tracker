class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.date :date
      t.text :title
      t.text :body
      t.timestamps
    end
  end
end

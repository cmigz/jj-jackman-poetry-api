class CreatePoems < ActiveRecord::Migration[5.1]
  def change
    create_table :poems do |t|
      t.string :name
      t.string :content
      t.string :collection
      t.date :publish_date
      t.text :image
      t.boolean :featured
      t.boolean :publish

      t.timestamps
    end
  end
end

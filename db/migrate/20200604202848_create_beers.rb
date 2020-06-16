class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :abv
      t.string :img_url

      t.timestamps
    end
  end
end

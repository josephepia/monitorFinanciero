class CreateTickers < ActiveRecord::Migration[7.0]
  def change
    create_table :tickers do |t|
      t.string :ticker
      t.string :assetType
      t.string :name
      t.boolean :isActive
      t.string :tiingoPermaticker
      t.string :openFIGITicker

      t.timestamps
    end
  end
end

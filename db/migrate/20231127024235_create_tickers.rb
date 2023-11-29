class CreateTickers < ActiveRecord::Migration[7.0]
  def change
    create_table :tickers do |t|
      t.string :ticker
      t.string :assetType
      t.string :name
      t.boolean :isActive
      t.string :permaTicker
      t.string :openFIGI
      t.string  :openFIGIComposite
      t.string :countryCode
      t.date  :date
      t.float :open
      t.float :high
      t.float :low
      t.float :close
      t.integer :volume
      t.float :adjOpen
      t.float :adjHigh
      t.float :adjLow
      t.float :adjClose
      t.integer :adjVolume
      t.float :divCash
      t.float :splitFactor
      t.string :exchangeCode
      t.string :description
      t.date :startDate
      t.date :endDate

      t.timestamps
    end
  end
end

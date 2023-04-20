class CreateAddPriceInProductTables < ActiveRecord::Migration[7.0]
  def change
    create_table :add_price_in_product_tables do |t|

      t.timestamps
    end
  end
end

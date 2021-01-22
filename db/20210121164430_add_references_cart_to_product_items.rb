class AddReferencesCartToProductItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :product_items, :cart, index: true, foreign_key: true
  end
end

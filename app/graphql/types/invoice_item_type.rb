module Types
  class InvoiceItemType < Types::BaseObject
    field :id, ID, null: false
    field :item, Types::ItemType, null: true
    field :invoice, Types::InvoiceType, null: true
    field :quantity, Integer, null: false
    field :unit_price, Float, null: false
  end
end

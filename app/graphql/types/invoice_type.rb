module Types
  class InvoiceType < Types::BaseObject
    field :id, ID, null: false
    field :customer, Types::CustomerType, null: true
    field :merchant, Types::MerchantType, null: true
    field :status, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: true
    field :invoice_items, [InvoiceItemType], null: false
  end
end

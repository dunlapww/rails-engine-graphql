module Types
  class CustomerType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :invoices, [InvoiceType], null: false
    field :items, [ItemType], null: false
    field :transaction, [TransactionType], null: false
  end
end

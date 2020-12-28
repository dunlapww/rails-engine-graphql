module Types
  class TransactionType < Types::BaseObject
    field :id, ID, null: false
    field :invoice, Types::InvoiceType, null: false
    field :credit_card_number, String, null: false
    field :credit_card_expiration_date, String, null: false
    field :result, String, null: false
  end
end

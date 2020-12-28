module Types
  class QueryType < Types::BaseObject
    field :all_merchants, [MerchantType], null: false
    field :all_items, [ItemType], null: false
    field :all_invoice_items, [InvoiceItemType], null: false
    field :all_invoices, [InvoiceType], null: false
    field :all_customers, [CustomerType], null: false
    field :all_transactions, [TransactionType], null: false

    def all_merchants
      Merchant.all
    end

    def all_items
      Item.all
    end

    def all_customers
      Customer.all
    end

    def all_invoices
      Invoice.all
    end

    def all_invoice_items
      InvoiceItem.all
    end

    def all_transactions
      Transaction.all
    end
  end
end

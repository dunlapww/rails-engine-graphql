module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :all_merchants, [MerchantType], null: false
    field :all_items, [ItemType], null: false
    def all_merchants
      Merchant.all
    end
    
    def all_items
      Item.all
    end
  end
end

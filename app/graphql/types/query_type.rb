module Types
  class QueryType < Types::BaseObject
    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_links, resolver: Resolvers::LinksSearch
    field :all_users, [UserType], null: false

    # def all_links
    #   Link.all
    # end

    # this method is invoked, when `all_users` fields is being resolved
    def all_users
      User.all
    end
  end
end

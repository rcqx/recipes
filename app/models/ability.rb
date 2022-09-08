class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :delete, Recipe, user: user
    can :delete, Food, user: user
    can :read, Food, user: user
    can :read, Recipe, user: user
    can :delete, Inventory, user:
    can :read, Inventory, user:
  end
end

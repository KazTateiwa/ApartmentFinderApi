class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      # if no user logged in, use a dummy user, see later
      user = User.new
    end
    if user.has_role? :admin
      can :manage, :all
    else user.has_role? :user
      # default user role can CRUD their own Apartments
      can :manage, Apartment, user_id: user.id
      # default user role can read all Apartments
      can :read, Apartment
    end
  end
end

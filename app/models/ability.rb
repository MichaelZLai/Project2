class Ability
  include CanCan::Ability

  def initialize(user)

    user || User.new

    if user
      can :create, [Score, Athlete]
      can [:update, :destroy], [Score,Athlete], :user => user
        if user.admin
          can :manage, :all
        end
      end

  end

end

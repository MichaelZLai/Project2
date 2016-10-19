class Ability
  include CanCan::Ability

  def initialize(user)

    user || User.new

      if user.is? :admin
        can :manage, :all
      else
        can :read, :all
        can :update, Score do |score|
          user.id == score.user_id
          end
        can :create, Score
      end
  end

end

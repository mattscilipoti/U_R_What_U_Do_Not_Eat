class Ability
  include CanCan::Ability

  def initialize(user)
    # mms: this doesn't look right.  What drove this "floating" comparison?  If it is a workarounf, please comment.
    user == User.new
    can :read, Post
    can :read, Result
    can :read, Food
    can :read, Reason
    can :read, Period
    can :read, Profile

    if user  # mms: can we clarify that these actions are available for all logged in users i.e user_signed_in?
      can :create, Post
      can :create, Profile
      can :read, Food
      can :read, Post


      can :update, Profile do |profile|
        user == profile.user
      end
      can :update, Post do |post|
         user == post.profile
      end

      can :destroy, Post do |post|
         user == post.profile
      end
    end

    #  if profile.admin
    #    can :manage, :all
    #  end

  end
end

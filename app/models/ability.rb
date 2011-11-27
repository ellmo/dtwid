class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.superadmin?
      can :manage, :all
    elsif user.admin?
      can :manage, Submission
      can :manage, SubmissionImageLink
      can :manage, News
      can :manage, GalleryImage
      can :manage, SubmissionComment
    elsif user.registered?
      can :read, :all
      can :update, User do |u|
        u == user
      end
      can :search, Submission
      can :create, Submission
      can :create, SubmissionComment
      can [:update, :destroy], Submission do |sub|
        sub.map_author.user == user
      end
      can [:create, :update, :destroy], SubmissionImageLink do |sublink|
        sublink.submission.map_author.user == user
      end
      can [:update, :destroy], SubmissionComment do |subcomment|
        subcomment.user == user
      end
      if user.team
        can :create, Vote
        can :update, Vote do |vote|
          vote.user == user
        end
      end
    else #user is not registered
      can :read, Submission
      can :read, SubmissionComment
      can :read, SubmissionImageLink
      can :search, Submission
    end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end

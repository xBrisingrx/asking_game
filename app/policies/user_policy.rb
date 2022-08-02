class UserPolicy
  attr_reader :user_session, :user

  def initialize(user_session, user)
    @user_session = user_session
    @user = user
  end

  def destroy?
    user_session.admin?
  end
end
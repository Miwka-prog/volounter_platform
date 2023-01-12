class VolounteerHelpRequestsPolicy < ApplicationPolicy
  attr_reader :user, :help_request

  def initialize(user, help_request)
    @user = user
    @help_request = help_request
  end

  def destroy?
    help_request.user == user
  end

  def update?
    help_request.user == user
  end

  def take_in_progress?
    help_request.pending?
  end

  def finish?
    help_request.volounteer_id == user.id && help_request.in_progress?
  end
end
class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end

  def accept?
    record.planet.user == user
  end

  def decline?
    record.planet.user == user
  end
end

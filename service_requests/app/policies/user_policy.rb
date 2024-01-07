class UserPolicy < ApplicationPolicy
    
    def index?
      user.has_role?"Admin"
    end

    def new?
        user.has_role?"Admin"
    end

    def create?
        user.has_role?"Admin"
    end

    def show?
        user.has_role?"Admin"
    end

    def update?
        user.has_role?"Admin"
    end

    def destroy?
        user.has_role?"Admin"
    end

    def edit?
        user.has_role?"Admin"
    end

end
module ActiveAdmin
  class CommentPolicy < ApplicationPolicy
    def index?
      user.admin?
    end

    def show?
      user.admin?
    end

    def create?
      user.admin?
    end

    def new?
      create?
    end

    def update?
      user.admin?
    end

    def edit?
      update?
    end

    def destroy?
      user.admin?
    end

    # ActiveAdminのバッチ操作から呼ばれるアクション
    def destroy_all?
      user.admin?
    end
  end
end

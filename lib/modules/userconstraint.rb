module RouteConstraints::UserConstraint
  def current_user(request)
    User.find_by_id(request.session[:user_id])
  end
end

class RouteConstraints::AdminRequiredConstraint
  include RouteConstraints::UserConstraint

  def matches?(request)
    !current_user(request).present?
    user = current_user(request)
    user.present? && user.is_admin?
  end
end

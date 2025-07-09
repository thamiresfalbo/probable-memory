# frozen_string_literal: true

module RouteConstraints::UserConstraint
end

class RouteConstraints::AdminRequiredConstraint
  include RouteConstraints::UserConstraint
end

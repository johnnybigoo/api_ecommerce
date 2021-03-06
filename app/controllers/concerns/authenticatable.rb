module Authenticatable
  extend ActiveSupport::Concern

  included do
    include DeviseTokenAuth::Concerns::SetUserByToken
    include RackSessionFix
    before_action :authenticate_user!
  end
end
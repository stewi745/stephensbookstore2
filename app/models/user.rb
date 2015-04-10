class User < ActiveRecord::Base
has_secure_password
validates_confirmation_of :password
validates_uniqueness_of :email
validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
end

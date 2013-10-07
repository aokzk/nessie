class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :username,
            :presence => true,
            :uniqueness => true,
            :length => { :minimum => 6, :maximum => 24 },
            :format => { :with => /\A[a-zA-Z\d_\.]+\Z/ }
end

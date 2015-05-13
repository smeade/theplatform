class Account < ActiveRecord::Base
  belongs_to :user
  has_many :users, :inverse_of => :account, :dependent => :destroy
  accepts_nested_attributes_for :users

  validates :name, presence: true
end

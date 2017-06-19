class Provider < ApplicationRecord
  has_and_belongs_to_many :states
  has_and_belongs_to_many :specialties
  belongs_to :user, -> { where role_id == 5}, dependent: :destroy
end

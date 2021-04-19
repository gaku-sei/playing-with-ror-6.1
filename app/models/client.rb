class Client < ApplicationRecord
  validates :idp_id, uniqueness: true, presence: true

  belongs_to :company
end

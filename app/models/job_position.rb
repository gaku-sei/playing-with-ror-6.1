class JobPosition < ApplicationRecord
  validates :title, uniqueness: { scope: :company_id }, presence: true
  validates :public_id, uniqueness: { scope: :company_id }, presence: true

  belongs_to :company
end

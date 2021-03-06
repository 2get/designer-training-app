class Topic < ActiveRecord::Base
  validates :subject, presence: true, length: { maximum: 140 }
  validates :name, presence: true, length: { maximum: 50 }
  validates :body, presence: true

  default_scope { order 'created_at DESC' }
end

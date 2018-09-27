class Comment < ApplicationRecord
  belongs_to :client
  validates :body,        presence: true
  validates :client_id, presence: true
end

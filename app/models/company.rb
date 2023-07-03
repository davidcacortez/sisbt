class Company < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  belongs_to :neighborhood, class_name: "neighborhood", foreign_key: "neighborhood_id"
end

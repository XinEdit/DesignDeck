
class Version < ApplicationRecord
  belongs_to :order

  has_many :samples

  accepts_nested_attributes_for :samples

  mount_uploader :image_from_designer, ImageFromDesignerUploader
  mount_uploader :image_from_customer, ImageFromCustomerUploader
end

# == Schema Information
#
# Table name: versions
#
#  id                    :integer          not null, primary key
#  order_id              :integer
#  image_from_designer   :string
#  image_from_customer   :string
#  for_status            :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  comment_from_customer :text
#  comment_from_designer :text
#

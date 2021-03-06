# == Schema Information
#
# Table name: versions
#
#  id         :integer          not null, primary key
#  stage_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  aasm_state :string
#

class Version < ApplicationRecord
  belongs_to :stage

  has_many :samples

  accepts_nested_attributes_for :samples, :allow_destroy => true

  # scope :samples_for_order, -> (order) { where(order_id: order.id).where(aasm_state: "sample_submitted") }
  scope :decided_version_for_stage, -> (stage) { where(stage_id: stage.id).where(aasm_state: "selected") }

  # def set_comment_from_customer(comment)
  #   self.update_columns(comment_from_customer: comment)
  # end


  include AASM

  aasm do
    state :draft, initial: true
    state :submitted
    state :selected

   	event :submit do
      transitions :from => :draft, :to => :submitted
    end

    event :select do
      transitions :from => :submitted, :to => :selected
    end

  end


end


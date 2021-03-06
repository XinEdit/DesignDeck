class StageComment < ApplicationRecord
	belongs_to :stage
	belongs_to :user

	def set_comment(comment)
		self.update_columns(content: comment)
	end
end

# == Schema Information
#
# Table name: stage_comments
#
#  id         :integer          not null, primary key
#  stage_id   :integer
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

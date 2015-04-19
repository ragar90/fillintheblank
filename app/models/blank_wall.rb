class BlankWall < ActiveRecord::Base
  belongs_to :owner
	mount_uploader :picture_1, PortafolioUploader
	mount_uploader :picture_2, PortafolioUploader
	mount_uploader :picture_3, PortafolioUploader
	validates :area, :done_by, :budget_range, :min_budget, :max_budget, :picture_1, presence: true
	validates :done_by, format: { with: /\d\d\d\d-\d\d-\d\d/, message: "Wrong date format" }
	#scope :with_payment_between, ->(min_value, max_value) { where("blank_walls.min_budget <= :min_value and blank_walls.max_budget >= :max_value", {min_value: min_value*1.0, max_value: max_value*1.0}) }

	def budget_range
		"#{self.min_budget},#{self.max_budget}"
	end

	def budget_range=(budget_range)
		@budget_range = budget_range
		range = budget_range.split(",")
		self.min_budget = range[0]
		self.max_budget = range[1]
	end
end

class Filter
	include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  attr_accessor :wall_type, :area, :budget_range, :min_budget, :max_budget, :is_default

  def self.build_new_filter(filter_params)
  	filter = Filter.new
  	if filter_params.present?
	  	filter.wall_type = filter_params[:wall_type]
	  	filter.area = filter_params[:area]
	  	filter.budget_range = filter_params[:budget_range]
	  	range = filter.budget_range.split(",")
	  	filter.min_budget = range[0]
	  	filter.max_budget = range[1]
	  	filter.is_default = false
  	else
	  	filter.wall_type = :indoors
	  	filter.area = 10
	  	filter.min_budget = 100
	  	filter.max_budget = 500
	  	filter.budget_range = "#{filter.min_budget},#{filter.max_budget}"
	  	filter.is_default = true
  	end
  	return filter
  end

	def self.wall_types
		[["Indoors",:indoors],["Outdoors",:outdoors]]
	end
end
class CoursesController < ActionController::Base
	def new
		@course = Course.new
	end

	def create
		@c = Course.new
		@c.title = params[:title]
		@c.department = params[:department]
		@c.number = params[:number]

		if @c.save
			redirect_to courses_url
		else
			render "new"
		end
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])
		@course.title = params[:title]
		@course.department = params[:department]
		@course.number = params[:number]

		if @course.save
			redirect_to courses_url
		else
			render "new"
		end
	end

	def show
		@course = Course.find(params[:id])
	end

	def index
		@courses = Course.all
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy
		redirect_to courses_url
	end
end

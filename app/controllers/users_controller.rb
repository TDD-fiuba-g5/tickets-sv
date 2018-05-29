class UsersController < ApiController

	def index
		users = User.all
		render :json => users
	end

	def logIn
		user = User.find_by(name: user_params[:name])

		if (user && user.authenticate(user_params[:password]))
			render :json => user
		else
			render status: 401, json: {message: "Invalid credentials"}.to_json
		end
	end

	def create
		user = User.create!(user_params)
		render :json => user
	end

	def user_params
		params.permit(:name, :password)
	end
end

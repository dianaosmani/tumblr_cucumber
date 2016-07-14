class System
	def initialize(browser)
		@browser = browser
	end

	def tumblr
		@tumblr ||= TumblrPage.new @browser
	end

	def tumblr_login
		@tumblr_login ||= TumblrLoginPage.new @browser
	end

	def dashboard
		@dashboard ||= TumblrDashboardPage.new @browser
	end

	def post
		@post ||= TumblrPostPage.new @browser
	end
end

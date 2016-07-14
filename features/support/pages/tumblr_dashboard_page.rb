class TumblrDashboardPage < GenericPage

  def visit
	  @browser.goto("http://tumblr.com/dashboard")
  end

  def go_to_dashboard
  	raise unless @browser.url == "https://www.tumblr.com/dashboard"
  end 
  
end
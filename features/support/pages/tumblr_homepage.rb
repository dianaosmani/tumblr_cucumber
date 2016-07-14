class TumblrPage < GenericPage

def visit
	@browser.goto("http://tumblr.com")
end

end

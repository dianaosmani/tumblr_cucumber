class TumblrLoginPage < GenericPage

  def visit
  	@browser.goto("https://www.tumblr.com/login")
  end

  def login
  	@browser.text_field(type: 'email').send_keys("osmanidiana@gmail.com")
	@browser.button(id: "signup_forms_submit").click
	@browser.text_field(id: "signup_password").wait_until_present(5)
	@browser.text_field(id: "signup_password").send_keys("OSMANI007")
	@browser.button(id: "signup_forms_submit").click
  end

  def email_box
  	@browser.text_field(type: 'email')
  end

  def email_box=(term)
  	email_box.set term
  end

  def pass_box
  	@browser.text_field(id: "signup_password")
  end

  def pass_box=(term)
  	pass_box.set term
  end

  def login_button
  	@browser.button(id: "signup_forms_submit")
  end

end
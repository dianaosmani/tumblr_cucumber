class TumblrPostPage < GenericPage

  def visit
	  @browser.goto("https://www.tumblr.com/new/text")
  end

  def text_post
  	@browser.a(id: "new_post_label_text").when_present
    @browser.element(:id, "new_post_label_text").click
    @browser.div(class: "editor editor-plaintext").send_keys("Hello!")
    @browser.div(class: "editor editor-richtext").send_keys("This is a test by Diana.")
    
    @browser.button(class: "button-area create_post_button").click
    @browser.div(class: 'post-form post-form--text').wait_while_present(10)
    #@browser.alert.when_present.ok
  end
	
  def check_post
  	if @browser.div(class: "post_title").text == "Hello!"
        puts "Success!"
    end
  end
end
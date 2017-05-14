class NewsletterMailer < ApplicationMailer

	 default from: 'noreply+technewletter@spitch.com'
          

  def newsletter(post)
  @post = post
  @recipients = Subscription.all
  mail(:to =>"", :subject => "Tech Alert", :bcc => @recipients.map(&:email).join(","))
end

end
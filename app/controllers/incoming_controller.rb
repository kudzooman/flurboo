class IncomingController < ApplicationController
# http://stackoverflow.com/questions/1177863/how-do-i-ignore-the-authenticity-token-for-specific-actions-in-rails
  skip_before_filter :verify_authenticity_token, only: [:create]

  def create

    sender_email = params['sender']
    subject_text = params['subject']
    email_body = params["body-plain"]

    # using the sender to find the user
    user = User.find_by_email(sender_email)

    # use the subject to find the topic
    topic = Topic.find_by_title(subject_text)

    # if user is nil, create and save user
    if user.nil?
      user = User.new(email: sender_email, password: "helloworld")
      user.save
    end

    # if topic is nil, create and save topic
    if topic.nil?
      topic = Topic.new(title: subject_text)
      topic.save
    end

    # use the body-plain to create the bookmark
    # assign bookmark to topic and user and save
    bookmark = Bookmark.where(url: email_body, user: user, topic: topic).first  

    if bookmark.nil?
      bookmark = Bookmark.new(url: email_body, user: user, topic: topic)
      bookmark.save
    end


    # Assuming all went well. 
    head 200
  end
end

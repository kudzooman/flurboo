class IncomingController < ApplicationController
# http://stackoverflow.com/questions/1177863/how-do-i-ignore-the-authenticity-token-for-specific-actions-in-rails
  skip_before_filter :verify_authenticity_token, only: [:create]

  def create
    # Take a look at these in your server logs
    # to get a sense of what you're dealing with.
    puts "INCOMING PARAMS HERE: #{params}"

    sender = params['sender']
    subject = params['subject']
    body_plain = params["body-plain"]
    user = User.find_by_email(sender)
    id = user.id
    email = user.email

    if user.bookmarks.count > 0
      user_bookmarks = user.bookmarks
      titles = user.bookmarks.map { |bm| bm["title"] }

      if titles.include?(subject)
        user_bookmarks = user_bookmarks.find_by_title(subject)
      else
        new_user_submission = user.bookmarks.create!({ title: subject, url: body_plain })
      end
    else
      new_submission = user.bookmarks.create!({ title: subject, url: body_plain })
    end
    # You put the message-splitting and business
    # magic here. 
    # using the sender to find the user
        # use the subject to find the topic
    # if user is nil, create and save user
    # if topic is nil, create and save topic
    # use the body-plain to create the bookmark
    # assign bookmark to topic and user and save

    # Assuming all went well. 
    head 200
  end
end

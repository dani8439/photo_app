# Photo_App

A ruby on rails app that allows you to upload pictures. Users can add pictures to the database, and view posts created by other users, uploading a single picture and description at a time. Users also have the ability to edit and delete any posts they have made.

# Prerequisites

You will need to have the following installed on your computer in order to use Photo_app

- Ruby
- Rails 5+
- PostgreSQL database

# Set up:

1. Fork the repository and clone it.
2. Rub `bundle install` to install gems.
3. Set up the database with `rake db:create` and `rake db:migrate`
4. Run `rails s` and navigate to `http://localhost:3000`.
5. Click on the register link in the navbar, create a username, email, and password.
6. Log in.
7. Click on New Post on the navbar, and start uploading!
8. In order to edit or delete a post, click on an image. Then click on the edit post link at the bottom of the page. You may either alter an image, alter a description, or delete a post.

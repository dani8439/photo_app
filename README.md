# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

<form>
    <%= simple_form_for @post do |f| %>
        <div class="form-group">
            <p class="text-center"><%= f.input :description %></p>
        </div>
        <div class="form-group">
            <p><%= f.label :image%>
            <%= f.file_field :image, accept: 'image/png, image/gif, image/jpeg' %></p>
            <%= f.button :submit %>
        </div>
    <% end %>
</form>

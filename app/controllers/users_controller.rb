class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_path, notice: 'Update Profile was successfully updated.'
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :telephone)
  end
end
Thay toàn bộ nội dung file app/views/users/edit.html.erb với nội dung sau
<h1>Editing Profile</h1>
<%= form_for @user do |f| %>
  <% if @user.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(@user.errors.count, "error") %> prohibited this idea from being saved:</h2>

      <ul>
      <% @user.errors.full_messages.each do |message| %>
        <li><%= message %></li>
      <% end %>
      </ul>
    </div>
  <% end %>

  <div class="field">
    <%= f.label :user_name %><br>
    <%= f.text_field :user_name %>
  </div>
  <div class="field">
    <%= f.label :telephone %><br>
    <%= f.text_field :telephone %>
  </div>
  <div class="actions">
    <%= f.submit %>
  </div>
<% end %>
require 'message_media_conversations'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

client = MessageMediaConversations::MessageMediaConversationsClient.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)

facebook_controller = client.facebook

result = facebook_controller.get_facebook_authorisation_url()
pp result

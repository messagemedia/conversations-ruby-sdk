require 'message_media_conversations'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

client = MessageMediaConversations::MessageMediaConversationsClient.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)

provisioning_controller = client.provisioning
request = MessageMediaConversations::ProvisionAccountRequest.new("http://accounts-domain.com/callback", "Rainbow Serpent Festival")

result = provisioning_controller.create_provision_account_using_post(request)
pp result

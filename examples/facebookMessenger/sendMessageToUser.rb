require 'message_media_conversations'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

appUsers_controller = client.app_users
app_user_id = 'appUserId'
message = BaseMessageDto.new({"key":"value"})

appUsers_controller.create_send_message(app_user_id, message)

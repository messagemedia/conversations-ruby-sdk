require 'message_media_conversations'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

facebook_controller = client.facebook

facebook_page_id = 'facebookPageId'
result = facebook_controller.create_integrate_facebook_page(facebook_page_id)
pp result

# MessageMedia Conversations Ruby SDK
[![Travis Build Status](https://api.travis-ci.org/messagemedia/conversations-ruby-sdk.svg?branch=master)](https://travis-ci.org/messagemedia/conversations-ruby-sdk)
[![Gem Version](https://badge.fury.io/rb/messagemedia_conversations_sdk.svg)](https://badge.fury.io/rb/messagemedia_conversations_sdk)

The MessageMedia Conversations API allows users to communicate by sending and receiving messages via OTT messaging services. This feature is disabled by default. To enable it, you don't need to make any changes to your application, just an account configuration change by MessageMedia's support team (support@messagemedia.com).

## ⭐️ Installing via RubyGems
Run the following command to install the SDK via RubyGems:
* `gem install messagemedia-conversations-sdk`

## 🎬 Get Started
It's easy to get started. Simply enter the API Key and secret you obtained from the [MessageMedia Developers Portal](https://developers.messagemedia.com) into the code snippet below.

### 🚀 Configure an account
```ruby
require 'message_media_conversations'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

client = MessageMediaConversations::MessageMediaConversationsClient.new(
  basic_auth_user_name: basic_auth_user_name,
  basic_auth_password: basic_auth_password
)

configuration_controller = client.configuration
request = MessageMediaConversations::ConfigureAccountRequest.new("http://accounts-domain.com/callback", "Rainbow Serpent Festival")

result = configuration_controller.create_configure_account(request)
pp result

```

### 🔐 Facebook Authorization
```ruby
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

```

### ⬇️ Get Facebook pages
```ruby
require 'message_media_conversations'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

facebook_controller = client.facebook

result = facebook_controller.get_facebook_pages()
pp result

```

### ♻️ Integrate Facebook page
You can get the facebookPageId by looking at the response of the Get Facebook pages example.
```ruby
require 'message_media_conversations'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

facebook_controller = client.facebook

facebook_page_id = 'facebookPageId'
result = facebook_controller.create_integrate_facebook_page(facebook_page_id)
pp result

```

### 👤 Get users
```ruby
require 'message_media_conversations'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

appUsers_controller = client.app_users
result = appUsers_controller.get_app_users()
pp result

```

### 💬 Get user messages
You can get the appUserId from the response of the Get users example.
```ruby
require 'message_media_conversations'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

appUsers_controller = client.app_users
app_user_id = 'appUserId'

result = appUsers_controller.get_app_user_messages(app_user_id)
pp result

```

### ✉️ Send message to user
You can get the appUserId from the response of the Get users example.
```ruby
require 'message_media_conversations'
require 'pp'

# Configuration parameters and credentials
basic_auth_user_name = 'basic_auth_user_name' # The username to use with basic authentication
basic_auth_password = 'basic_auth_password' # The password to use with basic authentication

appUsers_controller = client.app_users
app_user_id = 'appUserId'
message = BaseMessageDto.new({"key":"value"})

appUsers_controller.create_send_message(app_user_id, message)

```

## 📕 Documentation
Check out the [full API documentation](DOCUMENTATION.md) for more detailed information.

## 😕 Need help?
Please contact developer support at developers@messagemedia.com or check out the developer portal at [developers.messagemedia.com](https://developers.messagemedia.com/)

## 📃 License
Apache License. See the [LICENSE](LICENSE) file.

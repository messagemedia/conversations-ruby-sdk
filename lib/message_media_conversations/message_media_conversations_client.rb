# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  #  message_media_conversations client class.
  class MessageMediaConversationsClient
    # Singleton access to app_users controller.
    # @return [AppUsersController] Returns the controller instance.
    def app_users
      AppUsersController.instance
    end

    # Singleton access to configuration controller.
    # @return [ConfigurationController] Returns the controller instance.
    def configuration
      ConfigurationController.instance
    end

    # Singleton access to facebook controller.
    # @return [FacebookController] Returns the controller instance.
    def facebook
      FacebookController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Initializer with authentication and configuration parameters.
    def initialize(basic_auth_user_name: nil, basic_auth_password: nil)
      Configuration.basic_auth_user_name = basic_auth_user_name if
        basic_auth_user_name
      Configuration.basic_auth_password = basic_auth_password if
        basic_auth_password
    end
  end
end

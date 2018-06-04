# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # AppUsersController
  class AppUsersController < BaseController
    @instance = AppUsersController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Sends a message to the App User with the given ID.
    # @param [String] app_user_id Required parameter: appUserId
    # @param [BaseMessageDto] message Required parameter: message
    # @return void response from the API call
    def create_send_message_using_post(app_user_id,
                                       message)
      begin
        @logger.info("create_send_message_using_post called.")
        # Prepare query url.
        @logger.info("Preparing query URL for create_send_message_using_post.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/conversations/users/{appUserId}/messages'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'appUserId' => app_user_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for create_send_message_using_post.")
        _headers = {
          'content-type' => 'application/json; charset=utf-8'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_send_message_using_post.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: message.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_send_message_using_post')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_send_message_using_post.")
        if _context.response.status_code == 401
          raise APIException.new(
            'Unauthorized',
            _context
          )
        elsif _context.response.status_code == 403
          raise APIException.new(
            'Forbidden',
            _context
          )
        elsif _context.response.status_code == 404
          raise APIException.new(
            'Not Found',
            _context
          )
        end
        validate_response(_context)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Gets the list of messages for the App User with the given ID.
    # @param [String] app_user_id Required parameter: appUserId
    # @return MessagesDto response from the API call
    def get_app_user_messages_using_get(app_user_id)
      begin
        @logger.info("get_app_user_messages_using_get called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_app_user_messages_using_get.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/conversations/users/{appUserId}/messages'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'appUserId' => app_user_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_app_user_messages_using_get.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_app_user_messages_using_get.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_app_user_messages_using_get')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_app_user_messages_using_get.")
        if _context.response.status_code == 401
          raise APIException.new(
            'Unauthorized',
            _context
          )
        elsif _context.response.status_code == 403
          raise APIException.new(
            'Forbidden',
            _context
          )
        elsif _context.response.status_code == 404
          raise APIException.new(
            'Not Found',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_app_user_messages_using_get.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        MessagesDto.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Gets the App User with the given ID.
    # @param [String] app_user_id Required parameter: appUserId
    # @return AppUserDto response from the API call
    def get_app_user_using_get(app_user_id)
      begin
        @logger.info("get_app_user_using_get called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_app_user_using_get.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/conversations/users/{appUserId}'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'appUserId' => app_user_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_app_user_using_get.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_app_user_using_get.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_app_user_using_get')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_app_user_using_get.")
        if _context.response.status_code == 401
          raise APIException.new(
            'Unauthorized',
            _context
          )
        elsif _context.response.status_code == 403
          raise APIException.new(
            'Forbidden',
            _context
          )
        elsif _context.response.status_code == 404
          raise APIException.new(
            'Not Found',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_app_user_using_get.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        AppUserDto.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Gets a list of App Users that belong to the provisioned account.
    # @return AppUsersDto response from the API call
    def get_app_users_using_get
      begin
        @logger.info("get_app_users_using_get called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_app_users_using_get.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/conversations/users'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_app_users_using_get.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_app_users_using_get.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_app_users_using_get')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_app_users_using_get.")
        if _context.response.status_code == 401
          raise APIException.new(
            'Unauthorized',
            _context
          )
        elsif _context.response.status_code == 403
          raise APIException.new(
            'Forbidden',
            _context
          )
        elsif _context.response.status_code == 404
          raise APIException.new(
            'Not Found',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_app_users_using_get.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        AppUsersDto.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end

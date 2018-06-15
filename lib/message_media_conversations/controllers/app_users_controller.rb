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
    # You can use this endpoint in conjuction with the app users or app user by
    # id endpoint where the response from one of the latter endpoints would
    # display the user id and this can be used with this endpoint to send a
    # message to that user. A successful response from this endpoint will have
    # the following structure:
    # ```
    # {
    #   "channel": "facebook",
    #   "text": "Thank you for your query we'll be in touch with an answer
    # shortly."
    # }
    # ```
    # @param [String] app_user_id Required parameter: appUserId
    # @param [BaseMessageDto] body Required parameter: Example:
    # @return SendMessageResponse response from the API call
    def create_send_message(app_user_id,
                            body)
      begin
        @logger.info("create_send_message called.")
        # Prepare query url.
        @logger.info("Preparing query URL for create_send_message.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/beta/conversations/users/{appUserId}/messages'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'appUserId' => app_user_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for create_send_message.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_send_message.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: body.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_send_message')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_send_message.")
        if _context.response.status_code == 400
          raise APIException.new(
            'The posted request is invalid or the account is not provisioned.',
            _context
          )
        elsif _context.response.status_code == 404
          raise APIException.new(
            'The app user does not exist.',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for create_send_message.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        SendMessageResponse.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Gets the list of messages sent to and received by the App User with the
    # given ID. A successful response from this endpoint will have the following
    # structure:
    # ```
    # {
    #   "messages": {
    #     "data": [
    #       {
    #         "direction": "RECEIVED",
    #         "text": "Hey, I was just wondering how much shipping would be to
    # Australia for one of them awesome t-shirts?",
    #         "channel": "FACEBOOK",
    #         "timestamp": "2017-12-12T18:18:40.000Z"
    #       },
    #       {
    #         "direction": "SENT",
    #         "text": "Thank you for your query we'll be in touch with an answer
    # shortly.",
    #         "channel": "FACEBOOK",
    #         "timestamp": "2017-12-08T10:12:16.000Z"
    #       }
    #     ]
    #   },
    #   "metadata" : {
    #     "user_id": "{id}",
    #     "account_id": "FunGuys007"
    #   }
    # }
    # ```
    # @param [String] app_user_id Required parameter: appUserId
    # @return GetAppUserMessagesResponse response from the API call
    def get_app_user_messages(app_user_id)
      begin
        @logger.info("get_app_user_messages called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_app_user_messages.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/beta/conversations/users/{appUserId}/messages'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'appUserId' => app_user_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_app_user_messages.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_app_user_messages.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_app_user_messages')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_app_user_messages.")
        if _context.response.status_code == 404
          raise APIException.new(
            'The app user does not exist.',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_app_user_messages.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        GetAppUserMessagesResponse.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Gets the App User with the given ID. A successful response from this
    # endpoint will have the following structure:
    # ```
    # {
    #   "id": "3898c5e4-73cc-44f9-812f-3698a4c3bb1d",
    #   "surname": "Sims",
    #   "given_name": "Ben"
    # }
    # ```
    # @param [String] app_user_id Required parameter: appUserId
    # @return GetAppUserByIdResponse response from the API call
    def get_app_user_by_id(app_user_id)
      begin
        @logger.info("get_app_user_by_id called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_app_user_by_id.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/beta/conversations/users/{appUserId}'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'appUserId' => app_user_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_app_user_by_id.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_app_user_by_id.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_app_user_by_id')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_app_user_by_id.")
        if _context.response.status_code == 404
          raise APIException.new(
            'The app user does not exist.',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_app_user_by_id.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        GetAppUserByIdResponse.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Gets a list of App Users that belong to the configured account. A
    # successful response from this endpoint will have the following structure:
    # ```
    # {
    #   "data": [
    #     {
    #       "id": "3898c5e4-73cc-44f9-812f-3698a4c3bb1d",
    #       "surname": "Sims",
    #       "given_name": "Ben"
    #     },
    #     {
    #       "id": "331b1da8-10a5-44c7-91df-1dc14cc2f373",
    #       "surname": "Hood",
    #       "given_name": "Robert"
    #     }
    #   ]
    # }
    # ```
    # @return GetAppUsersResponse response from the API call
    def get_app_users
      begin
        @logger.info("get_app_users called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_app_users.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/beta/conversations/users'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_app_users.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_app_users.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_app_users')
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_app_users.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        GetAppUsersResponse.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end

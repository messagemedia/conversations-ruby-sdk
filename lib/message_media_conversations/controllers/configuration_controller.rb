# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # ConfigurationController
  class ConfigurationController < BaseController
    @instance = ConfigurationController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Configures your existing MessageMedia account to use the Conversations API
    # by giving it a human readable name (for reference later on), and also by
    # specifying a callback URL which is where any Inbound Messages and/or
    # Notifications will be pushed to. The request would have the following
    # structure:
    # ```
    # {
    #   "name": "Rainbow Serpent Festival",
    #   "callback_url": "http://accounts-domain.com/callback"
    # }
    # ```
    # * `name` is a required property and is a customer friendly name to
    # identify your provisioned account
    # * `callback_url` is an optional property is the callback URL to forward
    # inbound messages to.
    # *Note: We are currently NOT using our Webhooks functionality for this
    # while it's in beta, when we make this production ready we will look at
    # switching to having these webhooks managed via the Webhooks Management
    # API*
    # @param [ConfigureAccountRequest] body Required parameter: Example:
    # @return ConfigureAccountResponse response from the API call
    def create_configure_account(body)
      begin
        @logger.info("create_configure_account called.")
        # Prepare query url.
        @logger.info("Preparing query URL for create_configure_account.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/beta/conversations/provision'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for create_configure_account.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_configure_account.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: body.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_configure_account')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_configure_account.")
        if _context.response.status_code == 400
          raise APIException.new(
            'Not a valid request body.',
            _context
          )
        elsif _context.response.status_code == 409
          raise APIException.new(
            'The account has already been provisioned.',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for create_configure_account.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        ConfigureAccountResponse.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end

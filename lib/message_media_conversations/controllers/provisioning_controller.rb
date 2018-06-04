# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # ProvisioningController
  class ProvisioningController < BaseController
    @instance = ProvisioningController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Provisions an account to use the Conversations API.
    # @param [ProvisionAccountRequest] request Required parameter: request
    # @return void response from the API call
    def create_provision_account_using_post(request)
      begin
        @logger.info("create_provision_account_using_post called.")
        # Prepare query url.
        @logger.info("Preparing query URL for create_provision_account_using_post.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/conversations/provision'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for create_provision_account_using_post.")
        _headers = {
          'content-type' => 'application/json; charset=utf-8'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_provision_account_using_post.')
        _request = @http_client.post(
          _query_url,
          headers: _headers,
          parameters: request.to_json
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_provision_account_using_post')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_provision_account_using_post.")
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
  end
end

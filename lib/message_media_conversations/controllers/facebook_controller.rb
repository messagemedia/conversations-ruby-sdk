# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # FacebookController
  class FacebookController < BaseController
    @instance = FacebookController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Integrates the Facebook page with the given ID with the provisioned
    # account.
    # @param [String] facebook_page_id Required parameter: facebookPageId
    # @return void response from the API call
    def create_integrate_facebook_page_using_post(facebook_page_id)
      begin
        @logger.info("create_integrate_facebook_page_using_post called.")
        # Prepare query url.
        @logger.info("Preparing query URL for create_integrate_facebook_page_using_post.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/conversations/facebook/pages/{facebookPageId}/integrate'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'facebookPageId' => facebook_page_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_integrate_facebook_page_using_post.')
        _request = @http_client.post(
          _query_url
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_integrate_facebook_page_using_post')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_integrate_facebook_page_using_post.")
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

    # Gets a list of Facebook pages belonging to the provisioned and Facebook
    # authorised account.
    # @return FacebookPagesDto response from the API call
    def get_facebook_pages_using_get
      begin
        @logger.info("get_facebook_pages_using_get called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_facebook_pages_using_get.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/conversations/facebook/pages'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_facebook_pages_using_get.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_facebook_pages_using_get.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_facebook_pages_using_get')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_facebook_pages_using_get.")
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
        @logger.info("Returning response for get_facebook_pages_using_get.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        FacebookPagesDto.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Once an account has been provisioned, endpoint can be called to get the
    # Facebook authorisation URL.
    # @return FacebookAuthorisationResponse response from the API call
    def get_facebook_authorisation_url_using_get
      begin
        @logger.info("get_facebook_authorisation_url_using_get called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_facebook_authorisation_url_using_get.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/v1/conversations/facebook/authorise'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_facebook_authorisation_url_using_get.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_facebook_authorisation_url_using_get.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_facebook_authorisation_url_using_get')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_facebook_authorisation_url_using_get.")
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
        @logger.info("Returning response for get_facebook_authorisation_url_using_get.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        FacebookAuthorisationResponse.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end

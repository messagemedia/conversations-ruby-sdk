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

    # Integrates the Facebook page with the given ID with the configured
    # account.
    # @param [String] facebook_page_id Required parameter: facebookPageId
    # @return String response from the API call
    def create_integrate_facebook_page(facebook_page_id)
      begin
        @logger.info("create_integrate_facebook_page called.")
        # Prepare query url.
        @logger.info("Preparing query URL for create_integrate_facebook_page.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/beta/conversations/facebook/pages/{facebookPageId}/integrate'
        _query_builder = APIHelper.append_url_with_template_parameters(
          _query_builder,
          'facebookPageId' => facebook_page_id
        )
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for create_integrate_facebook_page.')
        _request = @http_client.post(
          _query_url
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_integrate_facebook_page')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for create_integrate_facebook_page.")
        if _context.response.status_code == 400
          raise APIException.new(
            'The account is not provisioned or the Facebook user isn\'t' \
            ' authenticated or the facebookPageId is invalid.',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for create_integrate_facebook_page.")
        _context.response.raw_body

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Gets a list of Facebook pages belonging to the provisioned and Facebook
    # authorised account. A successful response from this endpoint will have the
    # following structure:
    # ```
    # {
    #   "data": [
    #     {
    #       "id": "1573307926039629",
    #       "name": "Rainbow Serpent Festival"
    #     },
    #     {
    #       "id": "373479609790958",
    #       "name": "Fans of Doing Live Demos"
    #     }
    #   ]
    # }
    # ```
    # @return GetFacebookPagesResponse response from the API call
    def get_facebook_pages
      begin
        @logger.info("get_facebook_pages called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_facebook_pages.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/beta/conversations/facebook/pages'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_facebook_pages.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_facebook_pages.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_facebook_pages')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_facebook_pages.")
        if _context.response.status_code == 400
          raise APIException.new(
            'The account is not provisioned or the Facebook user isn\'t' \
            ' authenticated.',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_facebook_pages.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        GetFacebookPagesResponse.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Before you can start integrating Facebook pages on your Facebook account,
    # MessageMedia's messaging platform needs access to that page via what
    # Facebook call a page access token. To get the page access token you first
    # need to provide MessageMedia limited access to your Facebook account.
    # Calling this endpoint will get the Facebook authorisation URL which you
    # are required to go through before you can call the integration endpoints.
    # A successful response from this endpoint will have the following
    # structure:
    # ```
    # {
    #   "authorisation_url":
    # "https://www.facebook.com/v2.12/dialog/oauth?client_id={facebookAppId}&amp
    # ;redirect_uri={apiUrl}/beta/integration/authenticated&amp;state={provision
    # edAccountUUID}&amp;response_type=token&amp;scope=email,manage_pages,pages_
    # messaging"
    # }
    # ```
    # *Note: Granting MessageMedia access will only see allow us to see your
    # basic details and the list of pages you have*
    # @return GetFacebookAuthorisationURLResponse response from the API call
    def get_facebook_authorisation_url
      begin
        @logger.info("get_facebook_authorisation_url called.")
        # Prepare query url.
        @logger.info("Preparing query URL for get_facebook_authorisation_url.")
        _query_builder = Configuration.base_uri.dup
        _query_builder << '/beta/conversations/facebook/authorise'
        _query_url = APIHelper.clean_url _query_builder
  
        # Prepare headers.
        @logger.info("Preparing headers for get_facebook_authorisation_url.")
        _headers = {
          'accept' => 'application/json'
        }
  
        # Prepare and execute HttpRequest.
        @logger.info('Preparing and executing HttpRequest for get_facebook_authorisation_url.')
        _request = @http_client.get(
          _query_url,
          headers: _headers
        )
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_facebook_authorisation_url')
  
        # Validate response against endpoint and global error codes.
        @logger.info("Validating response for get_facebook_authorisation_url.")
        if _context.response.status_code == 400
          raise APIException.new(
            'The account is not provisioned',
            _context
          )
        end
        validate_response(_context)
  
        # Return appropriate response type.
        @logger.info("Returning response for get_facebook_authorisation_url.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        GetFacebookAuthorisationURLResponse.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end

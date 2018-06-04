# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # FacebookAuthorisationResponse Model.
  class FacebookAuthorisationResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :authorisation_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['authorisation_url'] = 'authorisationUrl'
      @_hash
    end

    def initialize(authorisation_url = nil)
      @authorisation_url = authorisation_url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      authorisation_url = hash['authorisationUrl']

      # Create object from extracted values.
      FacebookAuthorisationResponse.new(authorisation_url)
    end
  end
end

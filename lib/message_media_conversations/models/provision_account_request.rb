# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # ProvisionAccountRequest Model.
  class ProvisionAccountRequest < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :callback_url

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['callback_url'] = 'callbackUrl'
      @_hash['name'] = 'name'
      @_hash
    end

    def initialize(callback_url = nil,
                   name = nil)
      @callback_url = callback_url
      @name = name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      callback_url = hash['callbackUrl']
      name = hash['name']

      # Create object from extracted values.
      ProvisionAccountRequest.new(callback_url,
                                  name)
    end
  end
end

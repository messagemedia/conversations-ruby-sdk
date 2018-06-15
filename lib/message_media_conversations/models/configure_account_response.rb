# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # ConfigureAccountResponse Model.
  class ConfigureAccountResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :callback_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['callback_url'] = 'callback_url'
      @_hash
    end

    def initialize(name = nil,
                   callback_url = nil)
      @name = name
      @callback_url = callback_url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      callback_url = hash['callback_url']

      # Create object from extracted values.
      ConfigureAccountResponse.new(name,
                                   callback_url)
    end
  end
end

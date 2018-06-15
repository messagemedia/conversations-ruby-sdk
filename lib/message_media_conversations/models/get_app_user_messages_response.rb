# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # GetAppUserMessagesResponse Model.
  class GetAppUserMessagesResponse < BaseModel
    # TODO: Write general description for this method
    # @return [List of Object]
    attr_accessor :data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['data'] = 'data'
      @_hash
    end

    def initialize(data = nil)
      @data = data
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      data = hash['data']

      # Create object from extracted values.
      GetAppUserMessagesResponse.new(data)
    end
  end
end

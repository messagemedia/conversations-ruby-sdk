# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # SendMessageResponse Model.
  class SendMessageResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :channel

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :text

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['channel'] = 'channel'
      @_hash['text'] = 'text'
      @_hash
    end

    def initialize(channel = nil,
                   text = nil)
      @channel = channel
      @text = text
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      channel = hash['channel']
      text = hash['text']

      # Create object from extracted values.
      SendMessageResponse.new(channel,
                              text)
    end
  end
end

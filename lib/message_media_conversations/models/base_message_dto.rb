# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # BaseMessageDto Model.
  class BaseMessageDto < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :text

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :channel

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['text'] = 'text'
      @_hash['channel'] = 'channel'
      @_hash
    end

    def initialize(text = nil,
                   channel = nil)
      @text = text
      @channel = channel
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      text = hash['text']
      channel = hash['channel']

      # Create object from extracted values.
      BaseMessageDto.new(text,
                         channel)
    end
  end
end

# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MessageMediaConversations
  # MessageDto Model.
  class MessageDto < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :channel

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :text

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :timestamp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['channel'] = 'channel'
      @_hash['id'] = 'id'
      @_hash['text'] = 'text'
      @_hash['timestamp'] = 'timestamp'
      @_hash
    end

    def initialize(channel = nil,
                   id = nil,
                   text = nil,
                   timestamp = nil)
      @channel = channel
      @id = id
      @text = text
      @timestamp = timestamp
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      channel = hash['channel']
      id = hash['id']
      text = hash['text']
      timestamp = APIHelper.rfc3339(hash['timestamp']) if hash['timestamp']

      # Create object from extracted values.
      MessageDto.new(channel,
                     id,
                     text,
                     timestamp)
    end
  end
end

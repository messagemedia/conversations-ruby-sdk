# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # MessagesDto Model.
  class MessagesDto < BaseModel
    # TODO: Write general description for this method
    # @return [List of MessageDto]
    attr_accessor :messages

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['messages'] = 'messages'
      @_hash
    end

    def initialize(messages = nil)
      @messages = messages
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      messages = nil
      unless hash['messages'].nil?
        messages = []
        hash['messages'].each do |structure|
          messages << (MessageDto.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      MessagesDto.new(messages)
    end
  end
end

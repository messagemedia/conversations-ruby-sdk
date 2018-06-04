# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # FacebookPagesDto Model.
  class FacebookPagesDto < BaseModel
    # TODO: Write general description for this method
    # @return [List of FacebookPageDto]
    attr_accessor :pages

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pages'] = 'pages'
      @_hash
    end

    def initialize(pages = nil)
      @pages = pages
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      pages = nil
      unless hash['pages'].nil?
        pages = []
        hash['pages'].each do |structure|
          pages << (FacebookPageDto.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      FacebookPagesDto.new(pages)
    end
  end
end

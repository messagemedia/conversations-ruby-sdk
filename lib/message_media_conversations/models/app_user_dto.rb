# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # AppUserDto Model.
  class AppUserDto < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :given_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :surname

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['given_name'] = 'givenName'
      @_hash['id'] = 'id'
      @_hash['surname'] = 'surname'
      @_hash
    end

    def initialize(given_name = nil,
                   id = nil,
                   surname = nil)
      @given_name = given_name
      @id = id
      @surname = surname
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      given_name = hash['givenName']
      id = hash['id']
      surname = hash['surname']

      # Create object from extracted values.
      AppUserDto.new(given_name,
                     id,
                     surname)
    end
  end
end

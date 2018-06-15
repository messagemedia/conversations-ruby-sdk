# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # GetAppUserByIdResponse Model.
  class GetAppUserByIdResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :surname

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :given_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['surname'] = 'surname'
      @_hash['given_name'] = 'given_name'
      @_hash
    end

    def initialize(id = nil,
                   surname = nil,
                   given_name = nil)
      @id = id
      @surname = surname
      @given_name = given_name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      surname = hash['surname']
      given_name = hash['given_name']

      # Create object from extracted values.
      GetAppUserByIdResponse.new(id,
                                 surname,
                                 given_name)
    end
  end
end

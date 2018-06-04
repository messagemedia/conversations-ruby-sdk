# This file was automatically generated for MessageMedia by APIMATIC v2.0
# ( https://apimatic.io ).

module MessageMediaConversations
  # AppUsersDto Model.
  class AppUsersDto < BaseModel
    # TODO: Write general description for this method
    # @return [List of AppUserDto]
    attr_accessor :users

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['users'] = 'users'
      @_hash
    end

    def initialize(users = nil)
      @users = users
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      users = nil
      unless hash['users'].nil?
        users = []
        hash['users'].each do |structure|
          users << (AppUserDto.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      AppUsersDto.new(users)
    end
  end
end

module Spree
  module WishpotButton
    # Singleton class to access the google base configuration object (WishpotButtonConfiguration.first by default) and it's preferences.
    #
    # Usage:
    #   Spree::WishpotButton::Config[:foo]                  # Returns the foo preference
    #   Spree::WishpotButton::Config[]                      # Returns a Hash with all the google base preferences
    #   Spree::WishpotButton::Config.instance               # Returns the configuration object (GoogleBaseConfiguration.first)
    #   Spree::WishpotButton::Config.set(preferences_hash)  # Set the google base preferences as especified in +preference_hash+
    #
    # NOTE: Thank you to stephph's GoogleBase Spree plugin for this pattern: 
    #       http://github.com/stephp/spree-google-base
    class Config
      include Singleton
      include PreferenceAccess
    
      class << self
        def instance
          return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
          WishpotButtonConfiguration.find_or_create_by_name("Default wishpot button configuration")
        end
      end
    end
  end
end

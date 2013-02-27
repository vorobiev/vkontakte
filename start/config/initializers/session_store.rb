# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_start_session',
  :secret      => '0740a79b06344b5b68c988fa3a05ba046e7d98ca966cfc5a801be9494c9b3adc26459b86b3620de60c391981cb9a27b6ae1ab6829e41c1c864963f37dc609214'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

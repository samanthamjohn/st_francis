# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gems_session',
  :secret      => '44655be79a8b017b3390e8243e65a13f8b57daedac5e7e9e53a8417be115462f6dfb7a691c79f9499659c5d393737a9009eef8053387f9421288b262c5bbf189'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

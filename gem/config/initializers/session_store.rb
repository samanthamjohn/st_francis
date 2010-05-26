# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gem_session',
  :secret      => '9bd2c77fa5be02c66d450d84dbe76f6e5dcf35a48f702747c8244066f083588d0e8c79a3717207abfbfb3ea95b0320417817671db105ecc9bd1fea058d9da4a6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

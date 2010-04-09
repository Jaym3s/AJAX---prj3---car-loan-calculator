# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project3_session',
  :secret      => 'b2089848e8d422bea6933d48a6298730a06a9ca3c2f7296fa9d058e705593e55c73c408fc4a67e84bcda42e9a3816d07134e4ae7cf268033d217a29ff2e0fab4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

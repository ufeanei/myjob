# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Porter::Application.config.secret_key_base = '5a18573a99915a19657f966dee4831935e84a49a1fdf89b671fbd11cf7796b5543eb8b1e096a8aad04038d0113279e217feedbe8b8958471e22281c641f6a367'

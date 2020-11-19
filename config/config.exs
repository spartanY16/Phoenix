# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :share,
  ecto_repos: [Share.Repo]

# Configures the endpoint
config :share, ShareWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uXeU8e2v0WfpoWAfCvWYK2cUV7oQ5q+N6vd61TlLElKAOfe0f5hK6sZiYF6bsw/I",
  render_errors: [view: ShareWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Share.PubSub,
  live_view: [signing_salt: "b4H3KZT+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

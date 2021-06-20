# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :full_circle,
  ecto_repos: [FullCircle.Repo]

# Configures the endpoint
config :full_circle, FullCircleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QMmL2BVqDViHGUTV8THpVotzQ37QbjoXZLgYUlfl1peJUr1QT1nyHi5Q3Bjg3VJg",
  render_errors: [view: FullCircleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FullCircle.PubSub,
  live_view: [signing_salt: "l4hPCd4T"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

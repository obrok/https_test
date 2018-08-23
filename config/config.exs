# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :https_test, ecto_repos: [HttpsTest.Repo]

# Configures the endpoint
config :https_test, HttpsTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gtVT9XhLu9Fwlgjf4gL9SzlZKqPLiSfFkHfnnq68XSMc0PXCiRBG/jSFL7MifIup",
  render_errors: [view: HttpsTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HttpsTest.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

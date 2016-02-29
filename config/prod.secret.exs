use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :phoenix_sample, PhoenixSample.Endpoint,
  secret_key_base: "pyop1/5BqM7pOyIYq5YdKhfjXe6mN/uaJjayBgP8ECSGXlVcyLhtbyo8u7gxceHw"

# Configure your database
config :phoenix_sample, PhoenixSample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_sample_prod",
  pool_size: 20

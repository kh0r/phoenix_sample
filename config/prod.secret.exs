use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :phoenix_sample, PhoenixSample.Endpoint,
  secret_key_base: "eQN1iXqlstsZ8qV+aItM4OeNDE5m1iUOX/OmyaCX0g28a9E00AwOnttcyCBtSJ8j"

# Configure your database
config :phoenix_sample, PhoenixSample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_sample_prod"

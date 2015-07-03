use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :phoenix_sample, PhoenixSample.Endpoint,
  secret_key_base: "F+RMC3Neh1ncmar+nWTEHxR/4xQX75OBiWiOIdo6PIeHXJOFi7ngB0SQcNxTjXmY"

# Configure your database
config :phoenix_sample, PhoenixSample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_sample_prod",
  size: 20 # The amount of database connections in the pool

import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :catcounter, CatcounterWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ByCJMCM0qE2XVYO2C43q7fMI+mQKo1Pns9TVcYEnKlJ9zt96DFbFG+QB2hKWCCh2",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

require "sequel"

DB = Sequel.connect adapter: "postgres",
                    host: ENV.delete("DATABASE_HOST") || "localhost",
                    database: ENV.delete("DATABASE_NAME"),
                    user: ENV.delete("DATABASE_USER"),
                    password: ENV.delete("DATABASE_PASSWORD"),
                    max_connections: ENV.fetch("DATABASE_MAX_CONNECTIONS", 10),
                    pool_timeout: ENV.fetch("DATABASE_POOL_TIMEOUT", 10)
DB.extension(:pg_array, :pg_json)

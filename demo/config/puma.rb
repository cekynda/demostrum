# frozen_string_literal: true

threads 4, 16
workers ENV.fetch("PUMA_WORKERS", 4)

before_fork do
end

on_worker_boot do
  # initialize worker variables
  # rabbit connection, as example

  # Rabbit.rabbit_connection ||= begin
  #   rabbit_connection = Bunny.new
  #   rabbit_connection.start
  #   rabbit_connection
  # end
end

on_worker_shutdown do
  # utilize worker variables
  # rabbit connection, as example

  # Rabbit.rabbit_connection.close
end

preload_app!

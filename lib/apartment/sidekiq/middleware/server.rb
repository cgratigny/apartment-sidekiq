module Apartment::Sidekiq::Middleware
  class Server
    def call(worker_class, item, queue)
      yield
    end
  end
end

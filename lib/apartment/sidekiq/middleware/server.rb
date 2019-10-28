module Apartment::Sidekiq::Middleware
  class Server
    def call(worker_class, item, queue)
      Apartment::Tenant.switch!(item['apartment'])
      yield
    end
  end
end

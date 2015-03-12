module Sinatra

  module RequestBody

    def self.registered(app)
      app.helpers SinatraRequestBody::Helpers
      app.before do
        merge_to_params
        _symbolize(params)
      end
    end

  end

end
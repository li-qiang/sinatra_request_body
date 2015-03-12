module Sinatra

  module RequestBody

    def self.registered(app)
      app.helpers SinatraRequestBody::Helper
      app.before do
        merge_to_params
        _symbolize(params)
      end
    end

  end

end
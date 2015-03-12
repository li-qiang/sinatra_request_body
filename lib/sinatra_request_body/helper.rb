require 'multi_json'
module SinatraRequestBody

  module Helper

    def merge_to_params
      data_body = request.body.read.force_encoding("utf-8")
      data = _parse(data_body) if data_body.present?
      params.merge!(data) if data.present?
    end

    def _parse(data)
      begin
        null = nil
        eval(data)
      rescue Exception => e
        MultiJson.load(data, symbolize_keys: true)
      end
    end

    def _symbolize(obj={})
      if obj.is_a?(Hash)
        obj.symbolize_keys!
        obj.values.each do|value|
          _symbolize(value) if value.is_a?(Hash)
        end
      elsif obj.is_a?(Array)
        obj.each{|iterm| _symbolize(iterm)}
      end
    end

  end

end

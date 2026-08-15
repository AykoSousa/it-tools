require 'uri'

class UrlencoderController < ApplicationController
    def index
    end

    def encode
        @input_uri = params[:uri].to_s

        if @input_uri.present?
            @result_uri = URI.encode_www_form_component(@input_uri)
            @action_type = "Encoded"
        end

        render :index
    end

    def decode
        @input_uri = params[:uri].to_s

        if @input_uri.present?
            @result_uri = URI.decode_www_form_component(@input_uri)
            @action_type = "Decoded"
        end

        render :index
    end
end
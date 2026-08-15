require 'base64'

class Base64Controller < ApplicationController
    def index
    end

    def generate
        @input_text = params[:text].to_s

        if @input_text.present?
            @base64 = Base64.strict_encode64(@input_text)
        end

        render :index
    end
end
require 'digest'

class Md5Controller < ApplicationController
    def index
    end

    def generate
        @input_text = params[:text].to_s

        if @input_text.present?
            @md5_hash = Digest::MD5.hexdigest(@input_text)
        end

        render :index
    end
end
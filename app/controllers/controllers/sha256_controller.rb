require 'digest'

class Sha256Controller < ActionController::Base
    def index
    end

    def generate
        @input_text = params[:text].to_s

        if @input_text.present?
            @sha256_hash = Digest::SHA256.hexdigest(@input_text)
        end

        render :index
    end
end
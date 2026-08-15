require 'digest'

class Sha512Controller < ActionController::Base
    def index
    end

    def generate
        @input_text = params[:text].to_s

        if @input_text.present?
            @sha512_hash = Digest::SHA512.hexdigest(@input_text)
        end

        render :index
    end
end
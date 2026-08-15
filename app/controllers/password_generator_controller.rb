class PasswordGeneratorController < ApplicationController
    def index
    end

    def generate
        @LOWER_CHARS = 'abcdefghijklmnopqrstuvwxyz'
        @UPPER_CHARS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
        @SPECIAL_CHARS = '!@#$%&*(){}[]|/:;.,<>^~'
        @NUMBER_CHARS = '123456789'

        @number_of_carachters = params[:number_of_carachters].to_i
        @upper = params[:upper].to_s
        @number = params[:number].to_s
        @special = params[:special].to_s

        @chars = ''
        @password = ''

        for i in 1..@number_of_carachters do
            @chars = @LOWER_CHARS

            if @upper == '1'
                @chars = @chars + @UPPER_CHARS
            end

            if @number == '1'
                @chars = @chars + @NUMBER_CHARS
            end

            if @special == '1'
                @chars = @chars + @SPECIAL_CHARS
            end

            @password = @password + @chars.chars.sample
        end

        @password

        render :index
    end
end
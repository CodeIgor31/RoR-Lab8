# frozen_string_literal: true

# To check the result
class ResultPageController < ApplicationController
  add_flash_types :error
  def result
    @counter = 0
    @result_arr = []
    @number = params[:num].to_i
    i = 0
    while i <= @number
      k = i
      if k.to_s == k.to_s.reverse && (k**2).to_s == (k**2).to_s.reverse
        @result_arr.append(i)
        @counter += 1
      end
      i += 1
    end
  end
end

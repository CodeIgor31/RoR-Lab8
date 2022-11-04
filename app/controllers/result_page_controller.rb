# frozen_string_literal: true

class ResultPageController < ApplicationController
  def result
    number = params[:num].to_i
    i = 0
    @counter = 0
    @arr_first = []
    @arr_second = []
    while i <= number
      k = i
      if k.to_s == k.to_s.reverse && (k**2).to_s == (k**2).to_s.reverse
        @arr_first.append(i)
        @arr_second.append(i**2)
        @counter += 1
      end
      i += 1
    end
  end
end

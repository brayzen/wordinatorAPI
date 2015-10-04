class AnagramController < ApplicationController

  def anagram
    if params[:word1].chars.sort == params[:word2].chars.sort
      evaluation = true
      render :json => { word1: params[:word1],
                        word2: params[:word2],
                        answer: evaluation,
                      }
    else
      evaluation = false
      render :json => { word1: params[:word1],
                        word2: params[:word2],
                        answer: evaluation,
                      }
    end
  end
end

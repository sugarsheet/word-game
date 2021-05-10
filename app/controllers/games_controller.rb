require 'open-uri'

class GamesController < ApplicationController
   def new
    @letters = ('A'..'Z').to_a.sample(10)
   end

   def score
    @word = params[:word]

    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    word_serialized = URI.open(url).read
    word_info = JSON.parse(word_serialized)

    if !word_info["found"]
      score = 0
    end

    # Verifier que toutes les lettres dans le mot se trouvent dans letters 
    # aller voir API si mot correct
    # si les 2 conditions au dessus TRUE, on va rajouter bon nombre au score
    # en fonction de la reponse if true = add bonne qte au score
   
   end
end

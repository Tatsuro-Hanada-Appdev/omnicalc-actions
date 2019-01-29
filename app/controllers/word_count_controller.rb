class WordCountController < ApplicationController
  def word_count
    @text = params.fetch("user_text")
    @special_word = params.fetch("user_word")

    # ================================================================================
    # Your code goes below.
    # The text the user input is in the string @text.
    # The special word the user input is in the string @special_word.
    # ================================================================================
    split_word= @text.split(' ')
    
    @word_count =split_word.length

    @character_count_with_spaces = @text.chomp.length

    @character_count_without_spaces = @text.chomp.gsub(' ','').length

    @occurrences = split_word.count(@special_word)

    # ================================================================================
    # Your code goes above.
    # ================================================================================

    render("word_count_templates/word_count.html.erb")
  end

  def word_count_form
    render("word_count_templates/word_count_form.html.erb")
  end
end

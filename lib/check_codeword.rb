def check_codeword(codeword)
    if codeword == "horse"
      return "Correct! Come in."
    elsif codeword.chars.first == "a" && codeword.chars.last == "e"
      return "Close, but nope."
    else
      return "WRONG!"
    end
end
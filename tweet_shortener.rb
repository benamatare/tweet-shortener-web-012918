
def dictionary
  words_to_be_substituted = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter string
  holder_array = string.split(" ")
  holder_array.collect do |word|
    if dictionary.keys.include? word
      word = dictionary[word]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener array
  bulked_tweets = array.collect do |element|
     word_substituter element
  end
  puts bulked_tweets.join(", ")
end

def selective_tweet_shortener string
  method = if string.length > 140 
    word_substituter string.join(" ")
  else 
    string
  end
  method
end
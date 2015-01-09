class String
  define_method (:word_frequency) do |argument|
    n = 0
    split().each() do |word|
      if word.downcase() == argument.downcase()
        n = n + 1
      end
    end
    n
  end
end

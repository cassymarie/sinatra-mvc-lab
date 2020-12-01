class PigLatinizer 

     def initialize
     end
        
     def piglatinize(phrase)
          final = ""
          vowel_sound = ['a','e','i','o','u']

          phrase.split(" ").each do |word|
               if vowel_sound.include?(word[0].downcase)
                    latin_word = "#{word}way "
               else
                    broken = word.split(/([aeoui].*)/)
                    latin_word = "#{broken[1]}#{broken[0]}ay "
               end
               final << latin_word
          end

          final.strip
     end



end
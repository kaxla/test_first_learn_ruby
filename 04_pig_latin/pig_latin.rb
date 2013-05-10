


def translate(s)
  word_array = s.split.map do |s|
   
#word beginning w/ vowel
   if s =~ /^[aeiou]/i
     s + "ay"
     
#sch
   elsif s[0..2] == "sch"
     s[3..-1] + "schay"
     
#qu as consonant (this may not be the way you want it done if the qu is anywhere but the 2nd and 3rd letter it has no effect on the pig-latinizing)     
   elsif s[1..2] == "qu"
     s[3..-1] + s[0..0] + "quay"
     
#qu
   elsif s[0..1] == "qu"
     s[2..-1] + "quay"
     

#begins w/ 2 consonants
    elsif ((s[1..1] =~ /^[bcdfghjklmnpq'qu'rstvwxyz]/i) && (s[2..2] =~ /^[aeiou]/i))
      #puts "2 consonants"
      s[2..-1] +  s[0..1] + "ay"

#begins w/ 3 consonants
    elsif ((s[1..1] =~ /^[bcdfghjklmnpq'qu'rstvwxyz]/i) && (s[2..2] =~ /^[bcdfghjklmnpq'qu'rstvwxyz]/i))
      #puts "3 consonants"
      s[3..-1] + s[0..2] + "ay"
      
#begins w/ 1 consonant    
    else 
      s[1..-1] + s[0..0] + "ay"
    end #if/else
 end #do
 word_array.join(" ")
end #def
 
puts translate("apple")
puts translate("banana")
puts translate("cherry")
puts translate("eat pie")
 puts translate("three")
 puts translate("school")
 puts translate("quiet")
 puts translate("square")
 puts translate("the quick brown fox")




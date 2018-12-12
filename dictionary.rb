def substrings(str, dictionary)
  str = str.downcase.split(" ")
  hash_result = Hash.new(0)

    str.each do |strings|
      dictionary.each do |word|
        if strings.include? word
          hash_result[word] = hash_result[word] + 1
        end
      end
    end
    puts "YOUR STRING IS: " + str.join(" ").capitalize
    puts "THE DICTIONARY: *** " + dictionary.join(", ").upcase + "***"
    puts "//*****************************************//"
    puts hash_result
    puts "//*************THE HASH********************//"
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going, it? go go go go go", dictionary)

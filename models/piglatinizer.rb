class PigLatinizer

	def initialize
		@vowels = %w(a e i o u A E I O U)
	end

	def piglatinize(word)
		@vowels.include?(word[0])? vowelize(word) : consonate(word)
	end

	def vowelize(word)
		word += "way"
	end

	def consonate(word)
		letters = word.split("")
		idx = letters.find_index{|x| @vowels.include?(x)}
		(letters + letters.slice!(0...idx) << "ay").join("")
	end

	def to_pig_latin(sentence)
		words = sentence.split(" ")
		words.map {|word| self.piglatinize(word)}.join(" ")
	end

end
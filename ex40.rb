class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end
end

happy_bday = Song.new(["Happy birthday to you",
					"I don't want to get sued",
					"So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
						"With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

song2line1 = "Wooo hoooo!"
song2line2 = "Wooo hoooo!"
song2line3 = "I got my head checked by a jumbo jet"

song2 = Song.new([song2line1, song2line2, song2line3])

song2.sing_me_a_song
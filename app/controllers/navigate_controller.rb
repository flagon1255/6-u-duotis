class NavigateController < ApplicationController
	def index
		@Title = 'Classic Cars'

		@Text = 'Why choose a classic car? Why a less efficient vehicle, with none of the modern amenities, that needs more maintenance and can at any time suffer a failure that is difficult to repair quickly due to parts availability?

As technology evolves, in a relentless search for speed, efficiency and ease of use, many times the user experience is neglected. It s easier to open the streaming service app and search for the song than go through the Vinyl shelf, pick the album, put the record on the turntable and locate the right groove. It s simpler to take a picture with a smartphone and review it instantly than taking your time to perfect your skills, shoot film and wait a few days for the results. This instant gratification is great for everyday life, for a world that changes so fast that it leaves us no time to slow down and enjoy the experiences.
'

		@Text1 = 'Many people forget the difference between a classic car and an old car. In my opinion, when it comes to a classic vehicle, the way it makes you feel, outweighs all its faults. It has to be more than the sum of all its parts. A classic car has character, personality, it has human qualities.'

	end
end

#!/usr/bin/ruby

class Handler

	def self.UP_ARROW
		return "\e[A"
	end

	def self.DOWN_ARROW
		return "\e[B"
	end

	def self.LEFT_ARROW
		return "\e[D"
	end

	def self.RIGHT_ARROW
		return "\e[C"
	end

	def self.DEL
		return "q"
	end

	def self.read_char				# key input reader from: https://gist.github.com/acook/4190379
		STDIN.echo = false
		STDIN.raw!

		input = STDIN.getc.chr
		if input == "\e" then
			input << STDIN.read_nonblock(3) rescue nil
			input << STDIN.read_nonblock(2) rescue nil
		end
	ensure
		STDIN.echo = true
		STDIN.cooked!

		return input
	end
end

class UTF8

	def self.TOP_LEFT_CORNER
		return "\u250F".encode("UTF-8")
	end

	def self.TOP_RIGHT_CORNER
		return "\u2513".encode("UTF-8")
	end

	def self.BOTTOM_LEFT_CORNER
		return "\u2517".encode("UTF-8")
	end

	def self.BOTTOM_RIGHT_CORNER
		return "\u251B".encode("UTF-8")
	end

	def self.T_DOWN
		return "\u2533".encode("UTF-8")
	end

	def self.T_UP
		return "\u253B".encode("UTF-8")
	end

	def self.T_LEFT
		return "\u252B".encode("UTF-8")
	end

	def self.T_RIGHT
		return "\u2523".encode("UTF-8")
	end

	def self.CROSS
		return "\u254B".encode("UTF-8")
	end

	def self.VERT_WALL
		return "\u2503".encode("UTF-8")
	end

	def self.HORI_WALL
		return "\u2501".encode("UTF-8")
	end
end

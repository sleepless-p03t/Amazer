class Portal

	def initialize(maze, num, cr, cc)
		@maze = maze
		@num = num
		@cr = cr
		@cc = cc
		@portal = "\u2707".encode("UTF-8")
		@coordinates = []
	end

	def test_portal_up(y, x)
		dy = y - 1
		if @coordinates.include?("(#{dy},#{x})")
			return 0
		else
			return 1
		end
	end

	def test_portal_down(y, x)
		dy = y + 1
		if @coordinates.include?("(#{dy},#{x})")
			return 0
		else
			return 1
		end
	end

	def test_portal_left(y, x)
		dx = x - 1
		if @coordinates.include?("(#{y},#{dx})")
			return 0
		else
			return 1
		end
	end

	def test_portal_right(y, x)
		dx = x + 1
		if @coordinates.include?("(#{y},#{dx})")
			return 0
		else
			return 1
		end
	end

	def teleport(y, x)
		system("tput cup #{y} #{x}")
		system("tput ech 1")
		
		@coordinates.delete("(#{y},#{x})")

		while true
			r = rand(0..@maze.length - 1)
			c = rand(0..@maze[0].length - 1)

			if valid_pos?(r, c) && !@coordinates.include?("(#{r},#{c})")
				return [ r, c ]
			end
		end
	end

	def show_portals
		for i in 1..@num
			while true
				r = rand(0..@maze.length - 1)
				c = rand(0..@maze[0].length - 1)
				
				if r != @cr && c != @cc && valid_pos?(r, c)
					@coordinates.push("(#{r},#{c})")
					system("tput cup #{r} #{c}")
					print(@portal)
					break
				end
			end
		end
	end
	
	private

	def valid_pos?(y, x)
		if @maze[y][x] != " "
			return false
		end

		if @maze[y][x] == " " && @maze[y][x - 1] == " " && @maze[y][x + 1] == " "
			return true
		else
			return false
		end
	end
end

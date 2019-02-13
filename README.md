# Amazer

This is a little terminal based maze game written in Ruby that I made for no reason

## Getting Started
```
git clone https://github.com/sleepless-p03t/Amazer
```

### Prerequisites
* Ruby
```
sudo apt-get install ruby-full
```

### Running the game
```
cd Amazer/
ruby maze
```

### Changing the look of the maze

Certain aspects of the maze can be modified via the .mazecfg file:
* char specifies the player's ASCII character
* chr_color specifies the color of the player
* mz_color specifies the maze color
* fl_color specifies the color of the start and end flags
* show_path specifies whether or not to show the path the player has taken
* path_color specifies the path color
* mz_solid specifies whether or not to make the maze walls solid lines or ASCII
* banner specifies whether or not to show a winning banner
* portals specifies whether or not to add portals to the maze

Colors are limited to
* lr | light_red
* lg | light_green
* ly | light_yellow
* lb | light_blue
* lp | light_purple
* lc | light_cyan
* lw | light_white
* default

*Example .mazecfg:*
```
char = O
chr_color = lb
mz_color = lw
fl_color = lr
show_path = false
path_color = lc
mz_solid = true
banner = false
portals = false
```

### Playing the game

**At the Main Menu:**

Use the Up and Down arrows to target an option, and use the Right arrow to select the option

**In game:**

Use Left, Right, Up, and Down to move arround the maze
If you get stuck, press q to return to the main menu

### Bugs
Command line flags are not being fully parsed

There is only one in-game bug that I am presently aware of: sometimes the Arrow key value is output
This only affects output

### Inspiration

I found a maze generator on [rosettacode.org](https://rosettacode.org/wiki/Maze_generation#Ruby) and built a game around it

I tweaked the code slightly, primarily by having it output to an array rather than to the screen

### Interesting Aspects

The mazes are randomly generated, but the size of the maze is determined by the size of the terminal window
There is an unused blank space on the right side of the screen to allow for game progress information to be displayed

I plan to eventually (maybe) write an AI solver to map out the maze so that I can add more obstacles like switches and doors
If more obstacles are incorporated, I plan to then allow for "level" development for varied gameplay dynamics

### Why I chose Ruby

It's a personal preference, don't really have any other reason

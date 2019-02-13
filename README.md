# Amazer

This is a little terminal based maze game written in Ruby

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

Example .mazecfg:
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

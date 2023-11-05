## NVIM and Tmux configs

Some configurations I like from nvim and tmux. After working in a new company with visual code, and intellij and also doing some vim configs in the past. Basically:

Visual code I like it for simple things and pair programming.

Intellij for refactoring bunch of code with strongly typed code works like a charm.

Vim I loved it, but is a very personal tool not suitable at all for Pair Programming, had some problems with plugins in the past...

NVIM simple wow, what a beautiful upgrade to vim, such a beautiful community out there providing such a good input, still not suitable for Pairprogramming or doing massive code changes...
But still for fun programming and moving with my own personal taste is just my preferred choice. Many of the decisions taken here are from Theprimeagen + some personal ones from me

NVIM plugins I added to The primeagen, Tree for Nvim, surround nvim, startify, and support for the languages I use, typescript, javascript, golang.
Changed some of the keybindings for my own preferences, some of them I did not touch because they just made sense, indentation in 2, just beacuse is more laptop friendly.
Also added a follower in the indentation too.

Not that much more for plugins as I like it light weight as possible.

Tmux? I enjoy using properly more than one small screen with only those things that are meaningful to me, like following logs of k8s, tests during coding sessions or monitoring things...
I added some basics to the usage of mouse, added the darcula and some presentation in the line like kubernetes context, weather info, and cpu / ram / battery usage.

Last but not least oh my god shell config with zshrc and in some ocassions guake to have an immediate window for some basics commands at distance of a keystroke is always welcomed.

### Installation

Before doing anything and if you are new to this, go to youtube see theprimeagen video about nvim from scratch. Then you might want to consider following to install this plugins by yourself too.
This is just for me to have things at hand cross computers, and no need to repeat my self for the same configs.

NVIM
- Install nvim
- Copy the directory nvim inside of the folder .config of your home directory.
- Install all the plugins running :PackerSync

Don't forget to source the files before installing the plugins :) 

TMUX
- Install tmux
- Install tpm tmux
- Copy the tmux.conf as .tmux.conf inside of the Home directory
- Install using <C-s-I> (or <C-b-I> depending if the given config is up todate with the keybinding

Take some fernet with cola and enjoy

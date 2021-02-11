# vimIDE-Heptagon
NeoVim/vim configurations for heptagon development


This project configures neovim (nvim) to work better with Heptagon development. 
Project involves custom syntax highlter and completion using UltiSnips

![intro image](intro.gif)

## Installing dependencies for Heptagon and Lustre
### Lustre V4 installation
    
   - Appropriate distribution can be downloaded from [here](https://www-verimag.imag.fr/DIST-TOOLS/SYNCHRONE/lustre-v4/distrib/index.html). 
   - Installation step is as simple as extracting the zip file. and setting some environment variables, Please check the [Installation step](https://www-verimag.imag.fr/DIST-TOOLS/SYNCHRONE/lustre-v4/distrib/linux64/README)

### Heptagon installation in debian based machines

   Please note that there might be mutliple ways to install lustre, this  is just one of them.

   -   Install ocaml ```sudo apt install ocaml```
   -   Install opam  ``` sudo apt install opam```
   -   Install dependencies 

        ``` sudo apt install mccs
            sudo apt install libgtk2.0-dev```

   -   Install packages with opam
        ``` opam init --solver=mccs
            opam install menhir lablgtk ocamlgraph ocamlbuild camlp4
            opam install heptagon 
        ```

 
 
 
 

## Configuring Neovim
 
 - Neovim configuration file is stored at $HOME/.config/nvim/init.vim . You might have to create the directory. ```mkdir -p $HOME/.config/nvim``` . After that copy [init.vim](init.vim) to the folder(or create a hardlink). init.vim can automatically install [vimplug](https://github.com/junegunn/vim-plug). For this you need to have curl command installed. Given below is the snipptet from init.vim which does that 
 
 ```
 if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
```
## Syntax Highlighting 

 - Uses vim's defualt syntax highlighter. 
 - Supports keyword highlighting, code folding (it follows basic language rules from Aa LRM
 - syntax highlighting is provided by the file [syntax/hept.vim](syntax/hept.vim). This file needs to kept in ```~/.local/share/nvim/syntax/hept.vim```
 - files with .ept extension is automatically tagged as filetype=hept by the file [ftdetect/hept.vim](ftdetect/hept.vim) . To be kept in ```~/.local/share/nvim/ftdetect/hept.vim```
 
## Code completion

 - Installing Plugins for Neovim. We use the below plugins to ease up the development 
   - sirver/ultisnips
   - neomake/neomake
   - roxma/nvim-completion-manager
 These are mentioned in the plug# section of init.vim and can be installed by the command
 
 ```:PlugInstall```
 
 -  Some ready to use code snippets are available in the file [hept.snippets](UltiSnips/hept.snippets) . This file should be kept in the path ```$HOME/UltiSnips/hept.vim``` . Snippets can be edited in nvim using the command ```:UltiSnipsEdit``` .	
 
 - You can use ctags to enable code completion from tags file 
 - Autocompletion is providided by the nvim-completion-manager plugin : press enter to select option , then press Tab to expand the selected
 
 
 

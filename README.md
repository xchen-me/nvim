# A modern-looking, multi-purpose neovim configuration

- modular: add and configure plugins in separate files, then source
  them to a central init.vim file

- multi-purpose: use it for writing in science and engineering with
  markdown, pandoc, and LaTeX, or for coding in python

- one build, diverse realizations everywhere: enjoy consistent
  performance in the commandline, in a packaged GUI such as
  [vimR](https://github.com/qvacua/vimr), or in [VS
  Code](https://github.com/asvetliakov/vscode-neovim)!

- modern-looking:

  ![Split windows](./img/ranger.png)

  ![Split windows](./img/split window.jpg)

  ![Multi-window editing](./img/split window 3.jpg)

# Setup

- install [neovim](https://neovim.io)

- clone this folder to a convenient location on your computer, e.g.,
  \~/Downloads/nvim

- backup your original nvim settings, e.g., in commandline with

  ```{.shell}
  mv ~/.config/nvim ~/.config/nvim-bk
  ```

- move this folder to your vim setting folder, e.g.,

  ```{.shell}
  mv ~/Downloads/nvim ~/.config/nvim
  ```

- To sync setting on multiple computers, store the folder in a network
  drive and symbolically link the folder to your vim setting folder.

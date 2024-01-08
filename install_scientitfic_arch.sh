#!/bin/bash

# Customize this list according to your preferences
packages=(
  base-devel
  python
  python-numpy
  python-scipy
  python-matplotlib
  python-pandas
  python-scikit-learn
  texlive-core # Core TeX Live packages (replaced texlive-most)
  jupyterlab # JupyterLab for interactive computing
  julia # Julia programming language
  r # R statistical language
  gcc-fortran # Fortran compiler
  gsl # GNU Scientific Library
  opencv # Open Source Computer Vision Library
  geany # Lightweight IDE
  neovim # Vim-fork focused on extensibility and usability
  tmux # Terminal multiplexer
  ranger # File manager with VI key bindings
  powerline-fonts # Powerline fonts for the terminal
  flameshot # Powerful yet simple to use screenshot software
  inkscape # Vector graphics editor
  blender # 3D creation suite
  ipython # Enhanced interactive shell
  gnuplot # Command line driven utility for creating 2D and 3D graphs
  python-matplotlib # Feature-rich Python library for creating publication-ready graphs and figures (added "python-" prefix)
  maxima # Computer algebra system
  octave # High-level programming language and numerical computing environment (GNU Octave)
  ghc # Glasgow Haskell Compiler
  sbcl # Steel Bank Common Lisp
  racket # A general-purpose programming language and the world's first ecosystem for language-oriented programming
  rust # Systems programming language
  scala # Object-oriented, functional programming language
  clojure # Dynamic, general-purpose programming language
  haskell-stack # Haskell tool stack
)

# Prompt user to select a Java environment provider
echo -e "\n\e[1;33mPlease select a Java environment provider:\e[0m"
select java_provider in "jdk-openjdk" "jdk11-openjdk" "jdk17-openjdk" "jdk8-openjdk"; do
  case $java_provider in
    jdk-openjdk|jdk11-openjdk|jdk17-openjdk|jdk8-openjdk)
      packages+=("$java_provider")
      break
      ;;
    *)
      echo -e "\e[1;31mInvalid selection. Please enter a valid number.\e[0m"
      ;;
  esac
done

# Install the specified packages
yay -S "${packages[@]}"

#!/usr/bin/env bash
# -----------------------------------------------------------------------------
# Copy files into place.
# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------
# ~/.bashrc
# -----------------------------------------------------------------------------
if [[ -f ~/.bashrc ]]; then
    cp -a ~/.bashrc ~/.bashrc.$(date +%Y%m%d_%H%M%S)
fi
cp ./bashrc ~/.bashrc
chmod 0644 ~/.bashrc


# -----------------------------------------------------------------------------
# .vimrc
# -----------------------------------------------------------------------------
if [[ -f ~/.vimrc ]]; then
    cp -a ~/.vimrc ~/.vimrc.$(date +%Y%m%d_%H%M%S)
fi
cp ./vimrc ~/.vimrc
chmod 0644 ~/.vimrc


# -----------------------------------------------------------------------------
# vim colors
# -----------------------------------------------------------------------------
if [[ ! -d ~/.vim ]]; then
    mkdir ~/.vim
    chmod 0750 ~/.vim
fi

if [[ ! -d ~/.vim/colors ]]; then
    mkdir ~/.vim/colors
    chmod 0750 ~/.vim/colors
fi

find ./colors -type f -name "*.vim" | while read file; do
    colorscheme=$(basename "${file}")
    if [[ -f "~/.vim/colors/${colorscheme}" ]]; then
        cp -a "~/.vim/colors/${colorscheme}" "~/.vim/colors/${colorscheme}.$(date +%Y%m%d_%H%M%S)"
    fi
    cp "${file}" ~/.vim/colors/${colorscheme}
done


# That's all folks.
exit 0

#!/bin/bash

if [ "$(grep "$GH_USER" ~/.gitconfig | sed "s/.*= //")" = "$GH_USER" ]; then
  tmp=$(sed 's/name = '"$GH_USER"'/name = '"$BLYANDEX_USER"'/' ~/.gitconfig | sed 's/email = '"$GH_EMAIL"'/email = '"$BLYANDEX_EMAIL"'/')
  echo "$tmp" > ~/.gitconfig
else
  tmp=$(sed 's/name = '"$BLYANDEX_USER"'/name = '"$GH_USER"'/' ~/.gitconfig | sed 's/email = '"$BLYANDEX_EMAIL"'/email = '"$GH_EMAIL"'/')
  echo "$tmp" > ~/.gitconfig
fi


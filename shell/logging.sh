#!/usr/bin/env bash

# $ [ .. ] Info message!
log.info () {
    printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

# $ [ !! ] Warning message!
log.warning () {
    printf "\r  [ \033[0;33m!!\033[0m ] $1\n"
}

# $ [ OK ] Success message!
log.success () {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

# $ [FAIL] Fail message!
log.fail () {
    printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
}

# $ [ .. ] Running message!
log.run () {
    printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}
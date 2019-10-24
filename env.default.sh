#!/usr/bin/env bash
# Comment Out to Hide Basher Banner
export BASHER_BANNER=true

# Add Command Aliases
alias artisan='php artisan'

# GIT Environment Vars
export GIT_AUTHOR_NAME="Dan Alvidrez"
export GIT_AUTHOR_EMAIL="dan@bayareawebpro.com"

# BASHER Environment Vars
export BASHER_GIT_USER="bayareawebpro"
export BASHER_PROJECTS="$HOME/Sites"

# Will destroy the previously created project when new one is created.
#export BASHER_TESTING=true

# Launch Chrome Using Faux HTTP
#export BASHER_CHROME_SECURE=true

# Define Database Auth or you will be prompted.
#export BASHER_DB_USER="root"
#export BASHER_DB_PASS="root"

# Database Created Callback
#function on:database:created() {
#  local DB_NAME="$1";
#  logger:debug "on:database:created $DB_NAME (define function to use hook)"
#}

# Laravel Installation Callback
#function on:laravel:install() {
#  local PROJECT="$1";
#  logger:text "Another Laravel Eh? Good choice!"
#  logger:debug "on:laravel:install (define function to use hook)"
#  #composer install my/fav-packages
#}

# Laravel Created Callback
#function on:laravel:created() {
#  logger:celebrate "The web needs more apps like $1. Cool!"
#  logger:debug "on:laravel:created (define function to use hook)"
#  #local PROJECT="$1";
#  #local PROJECT="$(sudo valet tld)"
#  #chrome:serve "$PROJECT.local"
#}

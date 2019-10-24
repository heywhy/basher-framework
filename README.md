# Basher Framework

```
______  _______ _______ _     _ _______  ______
|_____] |_____| |______ |_____| |______ |_____/
|_____] |     | ______| |     | |______ |    \_
Version 1.x
```

https://imgur.com/a/GNsxOb5

- Add Zsh Plugin: ~/.oh-my-zsh/custom/includeProfileApp.zsh
- Or, add to to: ~/.profile
```shell script
source /Users/me/bash-profile/app.sh
```

🤖 BashApp Loaded & Ready To Build 😎

---

## Config

See env.default.sh
```shell script
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
export BASHER_TESTING=true

# Launch Chrome Using Faux HTTP
export BASHER_CHROME_SECURE=true

# Define Database Auth or you will be prompted.
export BASHER_DB_USER="root"
export BASHER_DB_PASS="root"
```

## Project

#### Make Project (non macro)
```shell script
make:project "my-folder-name"
```

#### Make Laravel (macro)
- Makes Project
- Creates Database
- Sets Env Vars
- Ready to rock with a single command.

```shell script
make:laravel "my-folder-name"
```

#### Database Commands
```shell script
make:database "my_database"
make:database:env "my_database"

if has:database "git_test_output"; then
  drop:database "git_test_output"
fi
```
---

#### Installers
```shell script
install:animatecss
install:tailwindcss
install:vuejs
```

---

## GIT

#### Create Repo in CWD
```shell script
git:setup
```

#### Set Origin to Master
CWD name must match repo name.
```shell script
git:connect
```

#### Ignore & ReadMe
Created if doesn't exist.
```shell script
git:ignore
git:readme
```

#### Save (push)
```shell script
git:save "custom message"
git:save (uses "wip" when no argument specified)
```

#### Sync (pull)
```shell script
git:sync
```

#### Branch
Full
```shell script
git:branch dev
```
Fresh
```shell script
git:branch gh-pages fresh
```
Switching
```shell script
git:switch master
```
Deleting
```shell script
git:branch:delete dev
```

#### Reset
Revert to Head (Hard)
```shell script
git:reset
```

## Chrome
No argument for 127.0.0.1:8000

```shell script
chrome:serve
chrome:serve:secure
```

Or using an argument

```shell script
chrome:serve "test.local"
```

## PhpStorm

Launch PhpStorm
```shell script
phpstorm:launch
```

Open Project
```shell script
phpstorm:open $PWD
```
---

## Conditionals
```shell script
func:exists "my:method"

(string:is:empty "" && logger:success "string:is:empty") || logger:failed "string:is:empty"
(string:not:empty "not empty" && logger:success "string:not:empty") || logger:failed "string:not:empty"
(string:is:equal "my-string" "my-string" && logger:success "string:is:equal") || logger:failed  "string:is:equal"
(string:not:equal "my-string" "other-string" && logger:success "string:not:equal") || logger:failed "string:not:equal"
(string:matches:regex "123" '^[0-9]+$' && logger:success "string:matches:regex true") || logger:failed  "string:matches:regex true"
(string:matches:regex "asd" '^[0-9]+$' || logger:success "string:matches:regex false") || logger:failed "string:matches:regex false"

(num:is:equal 1 1 && logger:success "num:is:equal") || logger:failed "num:is:equal"
(num:not:equal 1 2 && logger:success "num:not:equal") || logger:failed "num:not:equal"
(num:less:than 0 1 && logger:success "num:less:than") || logger:failed "num:less:than"
(num:greater:than 3 2 && logger:success "num:greater:than") || logger:failed "num:greater:than"
(num:less:than:or:equal 1 2 && logger:success "num:less:than:or:equal") || logger:failed "num:less:than:or:equal"
(num:greater:than:or:equal 3 2 && logger:success "num:greater:than:or:equal") || logger:failed "num:greater:than:or:equal"

```

## Filesystem
```shell script
path:is:file $PATH
path:is:directory $PATH
file:exists $PATH
file:readable $PATH
file:writable $PATH
file:executable $PATH
file:is:symlink $PATH
file:not:empty $PATH
file:newer:than $PATH_A $PATH_B
file:older:than $PATH_A $PATH_B
file:equal:to $PATH_A $PATH_B
directory:make $PATH_A
directory:change $PATH_A
directory:remove $PATH_A
```
---
## Logger
```
logger:divider
logger:blank
logger:info "ready."
logger:success "Cool!"
logger:celebrate "ok..."
logger:warning "failing..."
logger:failed "failed!"
logger:error "error!"
logger:alert "security!"
logger:denied "darn."
logger:debug "Hmmm..."
logger:text "ok..."
```

#### Input
```shell script
logger:input "Where to?" "ANSWER"
logger:success "Result: $ANSWER."
```

#### Confirmation
```shell script
if logger:confirm "Are you sure?"; then
  logger:success "Completed."
else
  logger:failed "Aborted."
fi
```

#### Colors
```
colors:black "im black"
colors:blackb "im blackb"
colors:white "im white"
colors:whiteb "im whiteb"

colors:red "im red"
colors:redb "im redb"
colors:green "im green"
colors:greenb "im greenb"
colors:yellow "im yellow"
colors:yellowb "im yellowb"

colors:blue "im blue"
colors:blueb "im blueb"
colors:purple "im purple"
colors:purpleb "im purpleb"
colors:lightblue "im lightblue"
colors:lightblueb "im lightblueb"
```

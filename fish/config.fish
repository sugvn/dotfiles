function fish_greeting
        # echo "Its not easy, but its that simple )"
        cat ~/Downloads/leetcode_attempt_notes.txt
end

zoxide init fish --cmd cd | source

if status is-interactive
# Commands to run in interactive sessions can go here
end

fish_add_path ~/.local/bin
fish_add_path ~/.local/bin/scripts
# fish_add_path (go env GOPATH)/bin
set -g EDITOR nvim
set -g PAGER bat

set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showuntrackedfiles 0
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_char_stateseparator " "


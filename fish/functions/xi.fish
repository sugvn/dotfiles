function xi --wraps='sudo dnf install' --description 'alias xi=sudo dnf install'
    sudo dnf install $argv
end

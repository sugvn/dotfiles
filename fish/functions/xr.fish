function xr --wraps='sudo dnf remove' --description 'alias xr=sudo dnf remove'
    sudo dnf remove $argv
end

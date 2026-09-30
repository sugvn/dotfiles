function download --wraps='aria2c -x 16 -s 16 -k 1M -c -d ~/Downloads' --description 'alias download=aria2c -x 16 -s 16 -k 1M -c -d ~/Downloads'
    aria2c -x 16 -s 16 -k 1M -c -d ~/Downloads $argv
end

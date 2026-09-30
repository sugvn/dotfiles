function wam --wraps='watch "sensors | tail -15"' --description 'alias wam=watch "sensors | tail -15"'
    watch "sensors | tail -15" $argv
end

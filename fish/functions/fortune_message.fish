function _cowfortune
    if type -q cowfortune
        cowfortune
    else if type -q cowsay && type -q fortune
        fortune | cowsay -f $(ls /usr/share/cows/*.cow | shuf -n1)
    else if type -q fortune
        fortune
    end
end

function fortune_message
    if type -q lolcat
        _cowfortune | lolcat
    else
        _cowfortune
    end
end

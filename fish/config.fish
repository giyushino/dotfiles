if status is-interactive
    set options "ᕦʕ •`ᴥ•´ʔᕤ fishin!" "₍ᐢ•ﻌ•ᐢ₎* what we catchin?" "(≖͞_≖̥) we still have work?" "‧º·(˚ ˃̣̣̥⌓˂̣̣̥ )‧º· i'm tired!" "ᕕ( ╯°□° )ᕗ hurry up!" "(⌣̀_⌣́) fine" "ʕ´• ᴥ•̥`ʔ bearo?" "( •_•) really?" "(˚ ˃̣̣̥⌓˂̣̣̥ ) why me!"   
    set random_option (shuf -e $options -n 1)
    echo $random_option
    # Initialize Conda
# set -gx PATH $HOME/miniconda3/bin $PATH  # commented out by conda initialize
end
set -U fish_greeting ""


function conda
    if test -f /home/allan/miniconda3/bin/conda
        eval /home/allan/miniconda3/bin/conda "shell.fish" "hook" $argv | source
    else
        if test -f "/home/allan/miniconda3/etc/fish/conf.d/conda.fish"
            . "/home/allan/miniconda3/etc/fish/conf.d/conda.fish"
        else
            set -x PATH "/home/allan/miniconda3/bin" $PATH
        end
    end
end


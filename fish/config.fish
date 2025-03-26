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


function vpn  
    cd /opt/cisco/secureclient/bin/ 
    ./vpnui 
end
 
function config  
    cd /home/allan/.config     
    nvim
end

function face
    set options "ᕦʕ •`ᴥ•´ʔᕤ fishin!" "₍ᐢ•ﻌ•ᐢ₎* what we catchin?" "(≖͞_≖̥) we still have work?" "‧º·(˚ ˃̣̣̥⌓˂̣̣̥ )‧º· i'm tired!" "ᕕ( ╯°□° )ᕗ hurry up!" "(⌣̀_⌣́) fine" "ʕ´• ᴥ•̥`ʔ bearo?" "( •_•) really?" "(˚ ˃̣̣̥⌓˂̣̣̥ ) why me!"   
    set random_option (shuf -e $options -n 1)
    echo $random_option
end


function useful
    cd .config 
    cat useful.txt
end


function llm
    /home/allan/miniconda3/envs/llm/bin/python /home/allan/nvim/python/llm.py
end

function llama
    ollama run llama3.2:1b
end

function gemma
    ollama run gemma2:9b
end

function qwen2.5
    ollama run qwen2.5
end

function qwen7
    ollama run qwen:7b
end

function qwen4
    ollama run qwen:4b
end
set -x LS_COLORS "di=36"  # Light blue for directories



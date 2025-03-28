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


function useful
    cd .config 
    cat useful.txt
end


function llm
    echo "======================================="
    echo "|| 1. llama3.2:1b || 6. qwen2.5-code ||"
    echo "|| 2. gemma2:9b   ||                 ||"
    echo "|| 3. qwen2.5     ||                 ||"
    echo "|| 4. qwen:4b     ||                 ||"
    echo "|| 5. qwen:7b     ||                 ||"
    echo "======================================="
    read -P "select an LLM to run: " -l response
    switch $response
        case 1
            echo "loading llama3.2:1b"
            ollama run llama3.2:1b
        case 2
            echo "loading gemma2:9b"
            ollama run gemma2:9b
        case 3
            echo "loading qwen2.5"
            ollama run qwen2.5
        case 4
            echo "loading qwen:4b"
            ollama run qwen:4b
        case 5
            echo "loading qwen:7b"
            ollama run qwen:7b
        case 6
            echo "loading qwen2.5-coder:7b"
            ollama run qwen2.5-coder
        case '*'
            echo "Invalid selection. Please choose 1-5."
    end
end

function p
    python $argv
end

function u
    uv run $argv
end

function venv
    source .venv/bin/activate.fish
end

function claer 
    clear
end

function lookfor 
    find /home/allan -name $argv 2>/dev/null
end

function z 
    zellij
end


set -x LS_COLORS "di=36"  # Light blue for directories




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
    echo "========================================"
    echo "|| 1. qwen3:1.7b   || 6. qwen2.5      ||"
    echo "|| 2. qwen3:0.6b   || 7.              ||"
    echo "|| 3. qwen3:4b     || 8.              ||"
    echo "|| 4. qwen2.5-code || 9.              ||"
    echo "|| 5. deepseek-r1  ||10.              ||"
    echo "========================================"
  read -P "select an LLM to run: " -l response
  switch $response
    case 1
      echo "loading qwen3:1.7b"
      ollama run qwen3:1.7b
    case 2
      echo "loading qwen3:0.6b"
      ollama run qwen3:0.6b
    case 3
      echo "loading qwen3:4b"
      ollama run qwen3:4b
    case 4
      echo "loading qwen2.5-code"
      ollama run qwen2.5-coder:latest
    case 5
      echo "loading deepseek-r1:1.5b"
      ollama run deepseek-r1:1.5b
    case 6
      echo "loading qwen2.5"
      ollama run qwen2.5
    case '*'
      echo "Invalid selection. Please choose 1-6."
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

function lookfor 
    find /home/allan -name $argv 2>/dev/null
end

function fs 
    du -h --max-depth=1  | sort -h
end

function turing1 
    ssh allanz@turing1.cs.ucla.edu
end

function turing2 
    ssh allanz@turing2.cs.ucla.edu
end

function laplace1 
    ssh allanz@laplace1.cs.ucla.edu
end


alias blue="hyprshade on blue-light-filter"
alias bluetoggle="hyprshade toggle"


set -gx PATH /opt/cuda/bin $PATH
set -gx LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH




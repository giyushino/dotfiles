if status is-interactive
    set options "ᕦʕ •`ᴥ•´ʔᕤ fishin!" "₍ᐢ•ﻌ•ᐢ₎* what we catchin?" "(≖͞_≖̥) we still have work?" "‧º·(˚ ˃̣̣̥⌓˂̣̣̥ )‧º· i'm tired!" "ᕕ( ╯°□° )ᕗ hurry up!" "(⌣̀_⌣́) fine" "ʕ´• ᴥ•̥`ʔ bearo?" "( •_•) really?" "(˚ ˃̣̣̥⌓˂̣̣̥ ) why me!"   
    set random_option (shuf -e $options -n 1)
    echo $random_option
    # Initialize Conda
# set -gx PATH $HOME/miniconda3/bin $PATH  # commented out by conda initialize
end
set -U fish_greeting ""
set -Ux fish_features no-keyboard-protocols

set -x WORK /home/allan/nvim/projects

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
    echo "|| 2. qwen3:0.6b   || 7. gemma2:4b    ||"
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
    case 7 
      echo "loading gemma3:4b"
      ollama run gemma3:4b  
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

function c 
    conda
    conda activate $argv
end

function webui 
    conda 
    conda activate ollama
    open-webui serve
end


function venv
    source .venv/bin/activate.fish
end

function lookfor 
    find /home/allan -name $argv 2>/dev/null
end

function gorilla 
    cat /home/allan/nvim/random/gorilla.txt
    wl-copy "$(cat /home/allan/nvim/random/gorilla.txt)"
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

function debian 
    ssh giyushino@131.179.104.61
end


function jellyfish 
     p ~/nvim/python/swim/jellyfish.py
end

function vpn
    /opt/cisco/secureclient/bin/vpnui
end

function brainrot
    python /home/allan/nvim/random/brainrot/brainrot.py #| tee >(wl-copy)
end


alias blue="/home/allan/nvim/bash/colors.sh blue"
alias black="/home/allan/nvim/bash/colors.sh black"

alias color="/home/allan/nvim/bash/colors.sh"
alias todo="/home/allan/nvim/cpp/todo/todo /home/allan/nvim/cpp/todo/todo.txt"

alias bluestrong="nohup hyprsunset --temperature 3500 >/dev/null 2>&1 & disown"
alias bluestrongest="nohup hyprsunset --temperature 3000 >/dev/null 2>&1 & disown"

#alias blue="hyprshade on blue-light-filter"
#alias bluetoggle="hyprshade toggle"
#alias blue="hyprsunset --temperature 4000 & disown"
#alias bluestrong="nohup hyprsunset --temperature 3500 >/dev/null 2>&1 &"
#alias bluestrongest="nohup hyprsunset --temperature 2500 >/dev/null 2>&1 &"
alias blueoff="pkill -x hyprsunset"
alias n-word="nvim"
alias chigga="nvim"
alias gemini="npx https://github.com/google-gemini/gemini-cli"
alias quiet="asusctl profile -P quiet"
alias performance="asusctl profile -P performance"
alias balanced="asusctl profile -P balanced"


set -gx PATH /opt/cuda/bin $PATH
set -gx LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH
set -gx PYTORCH_CUDA_ALLOC_CONF "expandable_segments:True"

#set fish_cursor_default block
#set -g fish_key_bindings fish_vi_key_bindings
zoxide init --cmd cd fish | source


# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/allan/.lmstudio/bin
# End of LM Studio CLI section

#set -Ux LS_COLORS "di=0:fi=0:ln=0:pi=0:so=0:bd=0:cd=0:or=0:mi=0:ex=0"

set -x LS_COLORS "di=0;34:fi=1;34"
alias ls="ls --color=auto"

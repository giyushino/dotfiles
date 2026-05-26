function fish_prompt
    # Gold theme prompt (dark gold, readable on a light background)
    set -l retc BF9B30
    test $status = 0; and set retc BF9B30

    set -q __fish_git_prompt_showupstream
    or set -g __fish_git_prompt_showupstream auto

    function _nim_prompt_wrapper
        set retc $argv[1]
        set -l field_name $argv[2]
        set -l field_value $argv[3]

        set_color normal
        set_color BF9B30
        echo -n ' | '
        set_color -o BF9B30
        set_color normal
        test -n $field_name
        and echo -n $field_name:
        set_color BF9B30
        echo -n $field_value
        set_color -o BF9B30
    end

    set_color BF9B30
    set_color -o BF9B30

    echo -n $USER
    set_color -o BF9B30
    echo -n '@'

    echo -n (prompt_hostname)
    set_color -o BF9B30
    echo -n :(prompt_pwd)
    set_color -o BF9B30

    # Date
    _nim_prompt_wrapper $retc '' (date +%X)

    # Vi-mode
    function fish_mode_prompt
    end

    if test "$fish_key_bindings" = fish_vi_key_bindings
            or test "$fish_key_bindings" = fish_hybrid_key_bindings
            set -l mode
            switch $fish_bind_mode
                    case default
                            set mode (set_color BF9B30)N
                    case insert
                            set mode (set_color BF9B30)I
                    case replace_one
                            set mode (set_color BF9B30)R
                    case replace
                            set mode (set_color BF9B30)R
                    case visual
                            set mode (set_color BF9B30)V
            end
            set mode $mode(set_color normal)
            _nim_prompt_wrapper $retc '' $mode
    end

    # Virtual Environment
    set -q VIRTUAL_ENV_DISABLE_PROMPT
    or set -g VIRTUAL_ENV_DISABLE_PROMPT true
    set -q VIRTUAL_ENV
    and _nim_prompt_wrapper $retc V (path basename "$VIRTUAL_ENV")

    # git
    set -l prompt_git (fish_git_prompt '%s')
    test -n "$prompt_git"
    and _nim_prompt_wrapper $retc G $prompt_git

    # Battery status
    type -q acpi
    and acpi -a 2>/dev/null | string match -rq off
    and _nim_prompt_wrapper $retc B (acpi -b | cut -d' ' -f 4-)

    # New line
    echo

    # Background jobs
    set_color normal

    for job in (jobs)
            set_color $retc
            echo -n '│ '
            set_color BF9B30
            echo $job
    end

    set_color normal
    set_color BF9B30
    set_color -o BF9B30
    echo -n 'λ '
    set_color normal
end

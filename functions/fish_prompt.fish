function fish_prompt
	test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test "$USER" = 'root'
    and echo (set_color red)"#"

    # Main
    echo -n (set_color magenta)$USER(set_color brwhite)'@'(set_color green)(prompt_hostname) (set_color FF0018)'❯'(set_color FFA52C)'❯'(set_color FFFF41)'❯'(set_color 008018)'❯'(set_color 0000F9)'❯'(set_color 86007D)'❯ ' (set_color normal)
end

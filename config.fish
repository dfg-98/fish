### ALIASES ###

alias off='sudo poweroff'
alias notebook='ipython notebook'
alias notebook3='ipython3 notebook'
alias agrep='grep -A 2'
alias bgrep='grep -B 2'
alias abgrep='grep -A 2 -B 2'
alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'
alias uptodate='begin; sudo apt update; sudo apt upgrade; end;'
alias fupgrade='sudo apt full-upgrade'
alias update='sudo apt update'
alias aptsource='sudo vim /etc/apt/sources.list'
alias remove='sudo apt-get autoremove'
alias clean='sudo apt-get autoclean'
alias uplocate='sudo updatedb'
alias off='poweroff'

alias search='sudo apt-cache search '
alias installs='sudo apt-get install '
alias show='sudo apt-cache show '


### Mistakes ###


alias atp='apt'
alias pta='apt'
alias pat='apt'
alias tap='apt'
alias tpa='apt'

alias usdo='sudo'
alias udso='sudo'
alias udos='sudo'
alias uods='sudo'
alias uosd='sudo'
alias usod='sudo'

alias suod='sudo'
alias sdou='sudo'
alias sduo='sudo'
alias soud='sudo'
alias sodu='sudo'

alias ousd='sudo'
alias ouds='sudo'
alias odsu='sudo'
alias odus='sudo'
alias osud='sudo'
alias osdu='sudo'

alias dosu='sudo'
alias dous='sudo'
alias duos='sudo'
alias duso='sudo'
alias dsuo='sudo'
alias dsou='sudo'

alias ubuntu-ui-toolkit-gallery='qmlscene /usr/lib/x86_64-linux-gnu/qt5/examples/ubuntu-ui-toolkit/examples/ubuntu-ui-toolkit-gallery/ubuntu-ui-toolkit-gallery.qml'

function pipmiel

    python -m pip $argv  --index-url "http://nexus.prod.uci.cu/repository/pypi-proxy/simple/" --trusted-host nexus.prod.uci.cu

end


function slice

    set s $argv[1]

    eval "echo -n (string join '' (string split '' $s)[$argv[2]])"

end

function pretty_csv 
    column -t -s, -n $argv | less -F -S -X -K
end

function dtikz

   dot2tex -ftikz  --autosize $argv[1]  > (slice $argv[1] 1..-5)".tex"

end

alias runserver='python manage.py runserver'

set DRF_DOC_PATH $HOME/django-rest-framework
export CHROME_EXECUTABLE=google-chrome-stable

status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source


function activate

    source ~/.pyenv/versions/{$argv[1]}/bin/activate.fish 

end

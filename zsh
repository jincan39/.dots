 alias cls="clear"
 alias c="code-insiders"
 alias ssh-googlecloud="ssh -i ~/.ssh/google-cloud jincan39@35.198.240.133"
 alias ff="ls | xargs -I{} git -C {} fetch --all"
 alias delete_node_modules="find . -maxdepth 2 -name "node_modules" | xargs rm -r"
 alias find_node_modules="find . -maxdepth 2 -name "node_modules" "

# automatically sourced .bash_profile
source  ~/.bash_profile

 function setproxy() {
    # export {HTTP,HTTPS,FTP}_PROXY="http://127.0.0.1:1086" 
        export ALL_PROXY=socks5://127.0.0.1:1086
    }

 function unsetproxy() {
        # unset {HTTP,HTTPS,FTP}_PROXY
            unset ALL_PROXY
        }

export PATH="$PATH:$HOME/.yarn/bin"

export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

#export BAIDING_NGINX_DOMAIN=baidingchat.com

terminate(){
  lsof -P | grep '{port}' | awk '{print $2}' | xargs kill -9 
  }

[[ -s "/Users/kingchan/.gvm/scripts/gvm" ]] && source "/Users/kingchan/.gvm/scripts/gvm" #gvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/usr/local/opt/mongodb@3.2/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#alias for cnpm
alias jnpm="npm --registry=http://registry.m.jd.com \
  --cache=$HOME/.npm/.cache/jnpm"

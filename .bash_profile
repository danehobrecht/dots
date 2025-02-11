#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Created by `pipx` on 2023-09-11 00:08:28
export PATH="$PATH:/home/dane/.local/bin"

# Night shift equivalent for `wayland` compositors
exec wlsunset

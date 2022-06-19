#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias fuck)
eval $(thefuck --alias FUCK)
eval $(thefuck --alias fk)
eval $(thefuck --alias cnm)
eval $(thefuck --alias nm)
eval $(thefuck --alias md)
eval $(thefuck --alias sb)
eval $(thefuck --alias cnmlgb)


PATH="/home/rf/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/rf/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/rf/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/rf/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/rf/perl5"; export PERL_MM_OPT;

# alias nv="nvim-qt"
alias nv="neovide"

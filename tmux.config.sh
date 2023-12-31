unbind r
bind r source ~/.tmux.conf

set -g prefix C-s

#act like vim
setw -g mode-keys vi
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

#list of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'dracula/tmux'

#configuration
set -g @dracula-show-powerline true
set -g @dracula-plugins "weather"
set -g @dracula-show-flags true
set -g @dracula-show-left-icon session
set -g status-position top

#initialize TMUX plugin manager
run '~/.tmux/plugins/tpm/tpm'

# Nvimgelion theme for Zsh
# Inspired by Evangelion color scheme

# Colors from Nvimgelion theme
PURPLE="%F{#984695}"
LIGHT_PURPLE="%F{#d5c6e0}"
BRIGHT_PURPLE="%F{#c51af9}"
MAGENTA="%F{#d694fa}"
ORANGE="%F{#fc735d}"
RED="%F{#fb3475}"
GREEN="%F{#7cb375}"
BRIGHT_GREEN="%F{#9ef01a}"
YELLOW="%F{#fcc25d}"
GREY="%F{#75797a}"
DARK_GREY="%F{#686858}"
RESET="%f"

# Git information
ZSH_THEME_GIT_PROMPT_PREFIX=" ${GREY}git:(${RESET}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${GREY})${RESET}"
ZSH_THEME_GIT_PROMPT_DIRTY="${RED}*${RESET}"
ZSH_THEME_GIT_PROMPT_CLEAN="${GREEN}✓${RESET}"

# Git status
ZSH_THEME_GIT_PROMPT_ADDED="${GREEN}+${RESET}"
ZSH_THEME_GIT_PROMPT_MODIFIED="${ORANGE}!${RESET}"
ZSH_THEME_GIT_PROMPT_DELETED="${RED}✗${RESET}"
ZSH_THEME_GIT_PROMPT_RENAMED="${MAGENTA}➜${RESET}"
ZSH_THEME_GIT_PROMPT_UNMERGED="${YELLOW}═${RESET}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="${GREY}?${RESET}"

# Prompt symbol based on exit status
prompt_symbol() {
  echo -n "%(?.%F{#fc735d}.%F{#fb3475})λ%f"
}

# Current working directory
directory_info() {
  echo -n "${PURPLE}%2~${RESET}"
}

# Git status info
git_info() {
  if [ -n "$(__git_ps1)" ]; then
    echo -n "${ZSH_THEME_GIT_PROMPT_PREFIX}$(parse_git_dirty)${ZSH_THEME_GIT_PROMPT_SUFFIX}"
  fi
}
# Main prompt format
PROMPT='
${ORANGE}%n${RESET}@${MAGENTA}%m ${RESET}$(directory_info)$(git_prompt_info)
$(prompt_symbol) '


# Right prompt - show time
RPROMPT='${GREY}%D{%H:%M:%S}${RESET}'

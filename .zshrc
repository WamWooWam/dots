ZSH_DIR=~/.zsh

# Get uname in lowercase
UNAME=${(L)$(uname)}

# create a list of all files in the format $ZSH_DIR/zshrc.d/$file.zsh or $ZSH_DIR/zshrc.d/$UNAME/$file.zsh
# if the $UNAME directory exists
if [[ -d $ZSH_DIR/zshrc.d/$UNAME ]]; then
  files=($ZSH_DIR/zshrc.d/$UNAME/*.zsh $ZSH_DIR/zshrc.d/*.zsh)
else
  files=($ZSH_DIR/zshrc.d/*.zsh)
fi

# sort the files by name
files=($(sort <<< ${files[@]}))

# source all files
for file in $files; do
  source $file
done

# source all plugins in the format $ZSH_DIR/zshrc.d/plugins/$plugin-name/$plugin-name.plugin.zsh
# if the plugins directory exists and contains at least one folder
if [[ -d $ZSH_DIR/zshrc.d/plugins && -n $(ls -A $ZSH_DIR/zshrc.d/plugins) ]]; then
  plugins=($ZSH_DIR/zshrc.d/plugins/*/*.plugin.zsh)
  for plugin in $plugins; do
    source $plugin
  done
fi
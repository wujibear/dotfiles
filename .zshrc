# Prevents error messages when there's no folder or files within them
setopt +o nomatch

# Source all custom files within config folders
for folder in exports partials aliases
do
  for file in $HOME/.config/$folder/*.zsh
  do
    if [[ -f $file ]]
    then
      source $file
    fi
  done
done

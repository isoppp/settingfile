function find_working_directories
    cd (find ~/workspace -type d -mindepth 1 -maxdepth 2 | fzf)
end

alias cdd 'find_working_directories'

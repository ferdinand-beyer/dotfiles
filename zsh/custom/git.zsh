git_feature_branches() {
    git branch --no-color |\
        grep -vE "^([+*]|\s*($(git_main_branch)|$(git_develop_branch))\s*$)"
}

git_rebase_branches() {
    local branch
    local orig="$(git branch --show-current)"
    local main="$(git_main_branch)"
    for branch in $(git_feature_branches); do
        echo -e "\033[1;33mBranch: $branch\033[0m"
        if  git checkout $branch && git rebase $main; then
            echo -e "\033[1;32mOK:\033[0m $branch"
        else
            git rebase --abort
            echo -e "\033[1;31mAborted:\033[0m $branch"
        fi
    done
    git checkout $orig
}

alias gitsync='gcm && gfa && git rebase && git_rebase_branches && gbda'
alias gmff='git merge --ff-only'

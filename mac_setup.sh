which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"    
fi

echo "Updating Homebrew..."
brew update

# Install Neccessary Packages
UtilitiesList=(
    tree
    ctop
    jq
    httpie
    yarn
    yarn-completion
    netcat
    nmap
    wget
    go
    nvm
    bash-completion
    carthage
    cocoapods
    youtube-dl
    wget
    cask
)

for val in ${UtilitiesList[@]}; do
    echo "Installing ${val}..."
    brew install ${val}
done

# Install Casks
CasksUtilitiesList=(
    azure-data-studio
    visual-studio-code
    intellij-idea
    android-studio
    docker
    slack
    evernote
    microsoft-teams
    microsoft-office
    zoomus
    497799835 # Xcode
    985367838 # Microsoft Outlook
)

for val in ${CasksUtilitiesList[@]}; do
    echo "Installing ${val}..."
    brew install ${val}
done

# Upgrade everything 
brew upgrade

# Run brew doctor to check if any warnings
brew doctor

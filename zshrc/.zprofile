
export PATH="$HOME/.cargo/bin:$PATH"

# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
export PATH="/usr/local/bin:${PATH}"

# Functions
# assembly code loader
asldr() { ld "$1".o -o "$1" -macosx_version_min 10.15.30 -lSystem; }
# nasm loader (for compiled assembly)
nasmldr() { nasm -f macho64 "$1"; }
# load work folders to vscode
zicli-app() { code ~/web/startups/zicli/"$1"; }
# load personal app folders to vscode
my-app() { code ~/web/apps/"$1"; }

# Aliases
alias jnote="jupyter notebook"
alias jlab="jupyter lab" 

# Setting and editing of env variables.

# VARS

# PATH

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:$PATH"

# Local bin directories before anything else
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Load wine staging binary
export PATH="/Applications/Wine Staging.app/Contents/Resources/wine/bin:$PATH"
​

typeset -U PATH # Remove duplicates in $PATH

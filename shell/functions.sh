function cdd() {
	cd "$(ls -d -- */ | fzf)" || echo "Invalid directory"
}

function j() {
	fname=$(declare -f -F _z)
	[ -n "$fname" ] || source "$DOTLY_PATH/modules/z/z.sh"
	_z "$1"
}

function recent_dirs() {
	# This script depends on pushd. It works better with autopush enabled in ZSH
	escaped_home=$(echo "$HOME" | sed 's/\//\\\//g')
	selected=$(dirs -p | sort -u | fzf)

	cd "$(echo "$selected" | sed "s/\~/$escaped_home/")" || echo "Invalid directory"
}

function jwtd() {
    #this script decode a jwt token
    #it depends on jq
    #usage: jwtd <token>
    echo "$1" | cut -d "." -f 2 | base64 -d | jq .
    # jq -R 'split(".") | .[1] | @base64d | fromjson' <<< "$1"

}

function jwte() {
    #this script encode a jwt token
    #it depends on jq
    #usage: jwte <token>
    echo "$1" | jq -R 'split(".") | .[1] | @base64d | fromjson' | jq -c .
    # jq -R 'split(".") | .[1] | @base64d | fromjson' <<< "$1"

}

function pwdgen() {
    #this script generate a random password with the given length
    #it depends on pwgen
    #usage: pwdgen <length>
    pwgen -s -c -y -1 "$1"
}
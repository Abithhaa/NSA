#!/bin/bash

validate_password() {
    local password=$1

    
    if [ ${#password} -lt 8 ]; then
        echo "Password must be at least 8 characters long."
        return 1
    fi

    
    if ! [[ "$password" =~ [[:alpha:]] && "$password" =~ [[:digit:]] ]]; then
        echo "Password must contain both alphabet and number."
        return 1
    fi

   
    if ! [[ "$password" =~ [[:upper:]] && "$password" =~ [[:lower:]] ]]; then
        echo "Password must contain both uppercase and lowercase letters."
        return 1
    fi

    
    echo "Password strength is valid."
    return 0
}


read -s -p "Enter your password: " user_password
echo

validate_password "$user_password"

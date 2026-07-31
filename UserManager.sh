#!/bin/bash

# Ninja group bane ga (agar pehle se nahi hai)
getent group ninja >/dev/null || groupadd ninja

case "$1" in
    addTeam)
        groupadd "$2"
        echo "Team $2 added."
        ;;
    addUser)
        # $2 = username, $3 = team
        useradd -m -g "$3" -G ninja -s /bin/bash "$2"

        # Home directory permissions
        chmod 751 /home/"$2"

        # Shared directories banana
        mkdir -p /home/"$2"/team /home/"$2"/ninja

        # Team folder permissions (User & Team:)
        chown "$2":"$3" /home/"$2"/team
        chmod 770 /home/"$2"/team

        # Ninja folder permissions (User & Ninja group:)
        chown "$2":ninja /home/"$2"/ninja
        chmod 770 /home/"$2"/ninja

        echo "User $2 added to team $3."
        ;;
    delTeam)
        groupdel "$2"
        echo "Team $2 deleted."
        ;;
    delUser)
        userdel -r "$2"
        echo "User $2 deleted."
        ;;
    changePasswd)
        passwd "$2"
        ;;
    changeShell)
        usermod -s "$3" "$2"
        echo "Shell changed for $2."
        ;;
    ls)
        if [ "$2" == "User" ]; then
            awk -F: '$3 >= 1000 {print $1}' /etc/passwd
        elif [ "$2" == "Team" ]; then
            awk -F: '$3 >= 1000 {print $1}' /etc/group
        fi
        ;;
    *)
        echo "Usage: $0 {addTeam|addUser|delTeam|delUser|changePasswd|changeShell|ls}"
        ;;
esac

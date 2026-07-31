
🚀 UserManager.sh 

📌 Overview

Simple shell script to manage users and teams with proper permissions and shared folders.

⚙️ Features


   ✔ Add Team (Group)

   ✔ Add User to Team

   ✔ Delete User / Team

   ✔ 🔑 Change Password / Shell

   ✔ 📋 List Users / Teams

      
🔐 Permissions

  👤 User → Full access (rwx)

  👥 Team → Read + Execute

  🌍 Others → Execute only
 
chmod 751 /home/username

🚀 Usage

🏗️ Create Team

sudo ./UserManager.sh addTeam TEAMA

👤 Add User to Team

sudo ./UserManager.sh addUser RAKESH TEAMB

❌ Delete User

sudo ./UserManager.sh deleteUser USERNAME

🗑️ Delete Team

sudo ./UserManager.sh deleteTeam TEAMNAME

🔑 Change Password

sudo ./UserManager.sh changePassword USERNAME

🐚 Change Shell

sudo ./UserManager.sh changeShell USERNAME /bin/bash

📋 List Users

./UserManager.sh listUsers
📂 List Teams
./UserManager.sh listTeams


<img width="1918" height="897" alt="Screenshot 2026-07-31 234019" src="https://github.com/user-attachments/assets/bc8afd99-374e-4d2c-9ae6-33c452a40e10" />

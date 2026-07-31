🚀 UserManager.sh 

📌 Overview

Simple shell script to manage users and teams with proper permissions and shared folders.

⚙️ Features


   ✔ Add Team (Group)

   ✔ Add User to Team

   ✔ Delete User / Team

   ✔ 🔑 Change Password / Shell

   ✔ 📋 List Users / Teams

📁 Structure

/home
 ├── Rakesh
 │    ├── team
 │    └── ninja
 └── Sandeep
      ├── team
      └── ninja
      
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

UserManager.sh

Overview
Simple shell script to manage users and teams with proper permissions and shaerd folders.
Features
.    Add Team (group)
.    Add User to Team
.    Delete User/Team
.    Change password/shell
.    Lint Users/Teams
Structure
/home
Rakesh 
o	team
o	ninja
•	Sandeep 
o	team
o	ninja
  Permissions
 .  User – Full access(rwx)
  .   Team – Read + Execute
  .   Others -Execute only 
Chmod 751 /home/username

User
Create Team
Sudo ./UserManager.sh addTeam Team


# docker_shortcuts
## Tired of typing out full commands to manage your Docker containers? I have a solution for you!

I ’ve been using these CLI shortcut tools for a while, and they have significantly reduced the time I spend remembering long Docker commands.<br>
I wanted to share this with others who might find it equally beneficial.
</br>
</br>
You may modify or add more function as you wish.
<br>
### It's a prompt based docker manager. You request it ask for input and it'll does long command writing and execute it for you.
</br>
# What's In There:
<br>
Runs in a any linux based environment with docker pre-installed. This tools only provide few function like<br>
1.) List all dockers, images & ports <br>
2.) Reboot container<br>
3.) Change Restart-Policy<br>
4.) Delete & Prunce containers & images<br>
5.) Create Backup of your container.<br>
6.) Restore and deploy container from backup.<br>
</br>

# How to install
</br>
Just download the folder and run the command<br></br>
. install.sh
</br>
</br>


# Available Commands:
</br>
Command Available:</br>
------------------------</br>
d ls           &emsp;&emsp;  - To list all running containers</br>
d view         &emsp;&emsp; - To access container</br>
d img          &emsp;&emsp; - To list all images</br>
d img -a       &emsp;&emsp; - To list all images including hidden/stopped</br>
d kill         &emsp;&emsp; - To remove container</br>
d boot         &emsp;&emsp; - To restart container</br>
d pop          &emsp;&emsp; - To set Restart-Policy</br>
d ls -a        &emsp;&emsp; - To list all running and hidden/stopped containers</br>
d list-ports   &emsp;&emsp; - To list all running docker pots</br>
d backup       &emsp;&emsp; - To backup container</br>
d restore      &emsp;&emsp; - To restore container from backup</br>
d clean        &emsp;&emsp; - To prune</br>




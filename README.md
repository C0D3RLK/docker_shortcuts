# Docker Shortcut Tools
## Tired of typing out full commands to manage your Docker containers? I have a solution for you!

I ’ve been using these CLI shortcut tools for a while, and they have significantly reduced the time I spend remembering long Docker commands.<br>
I wanted to share this with others who might find it equally beneficial.
</br>
</br>
You may modify or add more function as you wish.
<br>
### It's a prompt based docker manager. You request, it ask for input and it'll does long command writing and execute it for you.
</br>
# What's In There:
<br>
Runs in any linux based environment with docker pre-installed. This tools only provide few function like<br>
1.) List all dockers, images & ports <br>
2.) Reboot container<br>
3.) Change Restart-Policy<br>
4.) Delete & Prunce containers & images<br>
5.) Create Backup of your container.<br>
6.) Restore and deploy container from backup.<br>
8.) Download file from running container</br>
9.) Upload file into a running container</br>
10.) View running container logs </br>
11.) Inspect running container </br>
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
d list-ports   &emsp;&emsp; - To list all running docker ports</br>
d backup       &emsp;&emsp; - To backup container</br>
d restore      &emsp;&emsp; - To restore container from backup</br>
d clean        &emsp;&emsp; - To prune</br>
d copy         &emsp;&emsp; - To Upload / Download files between Host & Container</br>
d log         &emsp;&emsp; - To view contianer logs</br>
d ins         &emsp;&emsp; - To inspect contianer </br>


</br></br>
___
# Troubleshooting
</br>
</br>
- If backup automatically chooses a wrong image, try cleanup your images by running the prune command<br>
d clean</br>
</br>
This will clear all abandoned/unwanted images and then re-run the backup command.

</br>
- Sometimes the <code>dview</code> may not able to start bash or sh, it because the path
<code>/usr/bin/bash</code> & <code>/usr/bin/sh</code> . try using <code>/bin/bash </code> or <code> /bin/sh </code>

# Ultima-infrastructure

---

### Getting Started

These instructions will get you a copy of Ultima Platform which comprises 3 "services" (Admin Dashboard, Judge Frontend and Backend) up and running on your local machine

---

#### Prerequisites

The Ultima platform assumes the server it is to run on has some packages(software) installed which are:

- [Java 21](https://www.azul.com/downloads/?package=jdk#zulu)
- [Docker Engine](https://docs.docker.com/engine/install/)
- If you are on Windows, you need [Windows Subsystem For Linux](https://learn.microsoft.com/en-us/windows/wsl/install)

---

### Steps to Running Ultima Platform

Your system is now ready to run the Ultima Platform. The steps for doing that are listed below;

1. Navigate to [this Google Drive link](https://drive.google.com/file/d/19KjapXjxTzRwQ5QyeRpmfOrG40F2kGzL/view?usp=sharing) and download the `Ultima` zip file.
2. Once you unzip the file you, you should see a main folder named `music-vote-app` with 4 sub-folders (ultima-infrastructure, ultima-backend, ultima-backoffice, ultima-judge-frontend).
3. Right-click on the sub-folder named `music-infrastructure`, among the displayed options select "_Open in terminal_".

```
NB: Before we continue it is vital for us to know the use and content of the scripts we are going run. All of them are found in the `ultima-infrastructure` folder.
    There are 5 executable scripts in the said folder 
 - build.sh: This will build all the necessary docker images needed to spin up the Ultima platform
 - start.sh: This script starts up the Ultima platform
 - status.sh: The status displays the state (Up or Exited) of running services and the links to access them on the browser
 - logs.sh: This helps us have a deeper look into the logs produced by the running services
 - stop.sh: Inorder to stop the Ultima platform, we make use of this script

We can now go back to our terminal and continue from where we stopped
```

4. In your terminal, run the command `./build.sh` to build the docker images. This will display "Build completed successfully" when it is done.
5. Next, run `./start.sh` to start up the platform. You should see "Ultima platform successfully started".
6. Now you can run `status.sh`. Copy "Admin App" full link (it should be something like [http://127.0.0.1:8000](http://127.0.0.1:8000)) then enter it on your browser, and you are good to go with testing the Ultima platform on your system.
7. To display more log output from the running services, run `./logs.sh`
8. If you want to stop the platform once you are done using, make use of `./stop.sh`

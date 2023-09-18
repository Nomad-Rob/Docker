# Steps to Set up Docker and run the project environment:
These steps are after you have Docker installed on your machine and in VScode have remote extension installed.

1. Open the Repo Docker from Github in VScode.

2. Check the files in the Dockerfile to make sure the enviroment is setup correctly for your project.

3. Check the Workingfiles.sh file to make sure the files you want to work with I.E. package.json, babel.config.js, webpack.config.js, etc. are in the file.

4. Check the Makefile to ensure what you want to call the image and container are correct.(Maybe project name)

5. Open the terminal in VScode and run the following command to build the image:
    make build  (This will build the image)
    
6. Run the following command to start the container:
    make run  (This will start the container)
    
7. In vscode open your Remote Explorer and click on the container with the project name you gave it in the Makefile. You may need to click at the top left corner and select Dev Container if not already selected.
Attach to current window or open new window with the container/project.

### These next steps are preformed on prefance in the container/project.

In the terminal inside the new container you just made we need the Docker repo to be in the container. Run the following command example :
    git clone https://github.com/Nomad-Rob/Docker
    then move the workingfiles.sh file to the project folder you want to work with.
    ./workingfiles.sh to get all files in the new project folder.
    
OR 

Just copy the workingfiles.sh file and run the script in the new container after you chmod +x workingfiles.sh
to make it executable and have the files you want to work with in the new project.



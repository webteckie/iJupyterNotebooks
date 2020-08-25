# Jupyter Notebooks Setup
It is recommended that VS Code be used to work with this repo. As such you should be comfortable with VS Code and be able
to install extensions. You should also be familiar with Docker Desktop and Powershell. For this repo you need to install the following extensions:

    - Docker Desktop
    - Python 3
    - Maybe others (TBD)
    
# Organizing Notebooks
All notebooks should be placed under the notebooks directory preferrably under an appropriately named folder. If you need
to programmatically access anything under the folder then the following code should be used:

    import os

    os.getcwd() + '/{Notebook-Folder}/{file}'


# How-To
- Start the Jupyter Server container in a Powershell terminal:

    .\StartServerContainer.ps1

- Run command "python: Specify local or remote Jupyter server for connections"

- Specify the Jupyter Notebook URL logged by the started Jupyter Server container

- If prompted to Reload VS Code, please do so

- If ask to select a kernel, choose Python 3

- Open a notebook in the Notebook Editor

- Run the notebook or any of its cells


# Restarting the jupyter-server container
If you need to restart the jupyter-server then just run the RestartServerContainer.ps1 script.

NOTE: if you hybernate your computer then the volume containing your notebooks that gets mounted to the jupyter-server container may get detached.
      As of right now there's not a quick solution to this but to restart the jupyter-server container. Use the RestartServerContainer.ps1 script to 
      quickly do so.


# Docker Tips

- to list containers:

        docker ps -a
    
- to stop all containers:

        docker container stop $(docker container ls -aq)

- to remove all stopped containers:

        docker container rm $(docker container ls -aq)

- to tail the logs of the container:

        docker logs -f Jupyter-server
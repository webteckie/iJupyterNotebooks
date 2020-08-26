# Jupyter Notebooks Setup
It is recommended that VS Code be used to work with this repo. As such you should be comfortable with VS Code and be able to install extensions. You should also be familiar with Docker Desktop and Powershell. For this repo you need to install the following extensions:

    - Docker Desktop
    - Python 3
    - Maybe others (TBD)
    
# Organizing Notebooks
All notebooks should be placed under the notebooks directory preferrably under an appropriately named folder. Notebook modules must have a .ipynb extension. If you need to programmatically access anything under the folder then the following code should be used:

    import os

    filePath = os.getcwd() + '/{Notebook-Folder}/{fileName}'


# How-To
To test your notebooks you need to use a jupyter notebook server that can execute the notebook. This repo provides a powershell script that starts a jupyter-server container that is used to test the notebooks. To start the Jupyter Server container open a Powershell terminal to the root of the repo and run:

    .\StartServerContainer.ps1

    NOTE: the container is mounted a volume that maps to the notebooks directory on the repo root.
    NOTE: when the container starts it will output the URL to connect to the server!

Using the URL output by the container server now it is time to connect the python execution to that server. In VS Code run command:

    "python: Specify local or remote Jupyter server for connections"

    Specify the Jupyter Notebook URL logged by the started Jupyter Server container

    If prompted to Reload VS Code, please do so

    If ask to select a kernel, choose Python 3

Now that the execution environment is all setup it is time to start hacking away at your notebooks.

    Open a notebook in the Notebook Editor

    Run the notebook or any of its cells


# Restarting the jupyter-server container
If you need to restart the jupyter-server then just run the RestartServerContainer.ps1 script.

NOTE: if you hybernate your computer then the volume containing your notebooks that gets mounted to the jupyter-server container may get detached.As of right now there's not a quick solution to this but to restart the jupyter-server container. Use the RestartServerContainer.ps1 script to quickly do so.


# Docker Tips

- to tail the logs of the jupyter-server container:

        docker logs -f Jupyter-server

- to stop the jupyter-server container:

        docker container stop jupyter-server

- to remove the stopped jupyter-server container:

        docker container rm jupyter-server

- to list containers:

        docker ps -a
    
- to stop all containers:

        docker container stop $(docker container ls -aq)

- to remove all stopped containers:

        docker container rm $(docker container ls -aq)

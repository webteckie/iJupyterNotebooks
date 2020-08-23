# How-To
It is recommended that VS Code is used to work with this repo. You need to install the following extensions:

    - Python
    - Remote - Containers
    - Maybe others (TBD)

- Start the Jupyter Server container in a Powershell terminal:

    .\StartServerContainer.ps1

- Run command "python: Specify local or remote Jupyter server for connections"

- Specify the Jupyter Notebook URL logged by the started Jupyter Server container

- If prompted to Reload VS Code, please do so

- Open a notebook in the Notebook Editor

- Run the notebook or any of its cells


# Docker Tips

- to list containers:

    docker ps -a
    
- to stop all containers:

    docker container stop $(docker container ls -aq)

- to remove all stopped containers:

    docker container rm $(docker container ls -aq)

- to tail the logs of the container:

    docker logs -f Jupyter-server
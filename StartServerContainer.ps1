[CmdletBinding()]
param
(
    [Parameter(Mandatory=$false, HelpMessage="The tag of the base jupyter container to use for this container.")]
    [ValidateNotNullOrEmpty()]
    [String] $JupyterBaseContainerTag = "jupyter/scipy-notebook",
    [Parameter(Mandatory=$false, HelpMessage="The tag to use for this container.")]
    [ValidateNotNullOrEmpty()]
    [String] $ContainerTag = "jupyter-notebook-container:1.0"
)

$CurrentDirectory = Resolve-Path .
$Volume = "{0}:/src" -f $CurrentDirectory

docker build --tag $ContainerTag --build-arg BASE_CONTAINER=$JupyterBaseContainerTag .
docker run -v $Volume -p 8888:8888 --name jupyter-server $ContainerTag

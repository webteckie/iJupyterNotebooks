[CmdletBinding()]
param
(
    [Parameter(Mandatory=$false, HelpMessage="The tag to use for the container.")]
    [ValidateNotNullOrEmpty()]
    [String] $ContainerTag = "jupyter/scipy-notebook"
)

$CurrentDirectory = Resolve-Path .
$Volume = "{0}:/src" -f $CurrentDirectory

docker run -v $Volume -p 8888:8888 --name jupyter-server $ContainerTag

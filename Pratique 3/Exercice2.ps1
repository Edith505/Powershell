function ordre {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true,
        ValueFromPipelineByPropertyName=$true)]
        [int[]]$tab,

        [Parameter(Mandatory=$true,
        ValueFromPipelineByPropertyName=$true)]
        [ValidateSet("ASC","DESC")]
        [Alias("order")]
        [string]$order
    )

    for ($i = 0; $i -lt $tab.Count; $i++) {
        
    }
    
}
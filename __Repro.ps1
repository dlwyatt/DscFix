$configData = @{
    AllNodes = @(
        @{
            NodeName = '*'
            SomeOtherProperty = 'Set me here'
        }
    )
}

configuration Something
{
    node someNode
    {
        Write-Verbose "Some Other Property: $($Node.SomeOtherProperty)" -Verbose
    }
}

Something -OutputPath $env:temp\MOF  -ConfigurationData $configData | Out-Null

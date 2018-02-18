$input = Get-Content -Path '.\tempsettings.json' | ConvertFrom-Json 
$hashtable = @{}
$input.psobject.properties | Foreach { $hashtable[$_.Name] = $_.Value }


$output = @()
foreach($key in $hashtable.Keys)
{
  $output+= @{ 
  value = $hashtable[$key]
  name = $key
  }
}
$output | ConvertTo-Json

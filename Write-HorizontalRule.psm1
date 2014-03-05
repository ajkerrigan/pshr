function Write-HorizontalRule {

  <#
  .SYNOPSIS
  Simulate the HTML horizontal rule (<hr>) tag by repeating a character
  pattern across the width of the console.

  .PARAMETER Patterns
  A list of string patterns. Each pattern will be used to construct a full
  console-width string. If no pattern is supplied, the default is "#".

  .EXAMPLE
  PS C:\> Write-HorizontalRule

  ########################################################################

  .EXAMPLE
  PS C:\> Write-HorizontalRule '-=','#','-='

  -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
  ########################################################################
  -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
  #>

  [CmdletBinding()]
  param(
    [Parameter(HelpMessage="A list of patterns to be repeated across
                            the width of the console.")]
    [string[]] $Patterns = "#"
  )

  $consoleWidth = [System.Console]::WindowWidth

  $Patterns | Foreach-Object {
    Write-Output (($_ * ($consoleWidth/$_.Length + 1)).
      Substring(0,$consoleWidth-1))
  }

}

Set-Alias -Name hr -Value Write-HorizontalRule

Export-ModuleMember -Function Write-HorizontalRule -Alias hr
pshr
====

`<hr />` for your Powershell session

This is a port of the bash 'hr' tool which can be found here:

https://github.com/LuRsT/hr

## Quick Start

Clone the repository, import the module and start spewing text!

1. Clone the repository

  `git clone https://github.com/ajkerrigan/pshr.git`

2. Import the module into your Powershell session

  ```Powershell
  Import-Module 'pshr\Write-HorizontalRule'
  ```

3. Start spewing text

  ```Powershell
  Write-HorizontalRule
  ```
  ```
  ########################### (Repeated to the end of your console window)
  ```

  OR

  ```Powershell
  hr
  ```
  ```
  ###########################
  ```

  OR

  ```Powershell
  hr '#','=-','#'
  ```
  ```
  ###########################
  =-=-=-=-=-=-=-=-=-=-=-=-=-=
  ###########################
  ```
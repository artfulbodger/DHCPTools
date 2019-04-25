#Requires -Module DhcpServer
function Set-DhcpScopeDNSServers
{
<#
    .SYNOPSIS
    Sets DHCP scope option for DNS Servers.

    .DESCRIPTION
    Removes existing DNS Server scope option settings, then sets these withthe supplied values.

    .PARAMETER scopeid
    DHCP Scope ID.

    .PARAMETER dhcpserver
    DHCP Server hosting DHCP scope (can be FQDN or IP Address).

    .PARAMETER dnsserver
    Comma seperated list of DNS servers in order.

    .EXAMPLE
    Set-DhcpScopeDNSServers -scopeid 10.0.0.0 -dhcpserver dhcp1.example.com -dnsserver 10.0.0.200
    Sets the DNS server for ScopeID 10.0.0.0 to 10.0.0.200 on DHCP server dhcp1.example.com

    .NOTES
    Remote Server Administration Tools (RSAT) for Windows operating systems is required to use this module.
      Once installed enable the DHCP Server Tools which adds the DHCP Management Console, the DHCP Server cmdlet module for Windows PowerShell, and the Netsh command line tool.

    .LINK
	  https://artfulbodger.github.io/DHCPTools/Set-DhcpScopeDNSServers/

  #>
      [CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
    Param
    (
        [Parameter(Mandatory,HelpMessage='Scope ID you wish to change')][string]$scopeid,
        [Parameter(Mandatory,HelpMessage='DHCP Server hosting Scope')][string]$dhcpserver,
        [Parameter(Mandatory,HelpMessage='New value of DNS Server Option')][string[]]$dnsserver
    )
    Process
    {
      Try {
        $null = Get-DhcpServerv4Scope -ComputerName $dhcpserver -ScopeId $scopeid -ErrorAction Stop
        Remove-DhcpServerv4OptionValue -ComputerName $dhcpserver -OptionId 6 -ScopeId $scopeid
        Set-DhcpServerv4OptionValue -ComputerName $dhcpserver -ScopeId $scopeid -DnsServer $dnsserver
        Write-Host "DNS servers for DHCP Scope $scopeid have been updated to $dnsserver" -ForegroundColor Green
      } Catch {
        Write-Host "DHCP Scope $scopeid does not exist on server $dhcpserver" -ForegroundColor Red
      }  
    }
}
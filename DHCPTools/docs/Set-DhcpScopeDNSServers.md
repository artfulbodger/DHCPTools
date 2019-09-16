---
external help file: DHCPTools-help.xml
Module Name: DHCPTools
online version: https://artfulbodger.github.io/DHCPTools/Set-DhcpScopeDNSServers/
schema: 2.0.0
---

# Set-DhcpScopeDNSServers

## SYNOPSIS
Sets DHCP scope option for DNS Servers.

## SYNTAX

```
Set-DhcpScopeDNSServers [-scopeid] <String> [-dhcpserver] <String> [-dnsserver] <String[]> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Removes existing DNS Server scope option settings, then sets these withthe supplied values.

## EXAMPLES

### EXAMPLE 1
```
Set-DhcpScopeDNSServers -scopeid 10.0.0.0 -dhcpserver dhcp1.example.com -dnsserver 10.0.0.200
```

Sets the DNS server for ScopeID 10.0.0.0 to 10.0.0.200 on DHCP server dhcp1.example.com

## PARAMETERS

### -scopeid
DHCP Scope ID.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -dhcpserver
DHCP Server hosting DHCP scope (can be FQDN or IP Address).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -dnsserver
Comma seperated list of DNS servers in order.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Remote Server Administration Tools (RSAT) for Windows operating systems is required to use this module.
  Once installed enable the DHCP Server Tools which adds the DHCP Management Console, the DHCP Server cmdlet module for Windows PowerShell, and the Netsh command line tool.

## RELATED LINKS

[Online Version](https://artfulbodger.github.io/DHCPTools/Set-DhcpScopeDNSServers)


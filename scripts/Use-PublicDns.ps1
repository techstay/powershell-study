# This script helps you set public dns

$CLOUDFLARE_IPV4_DNS = @('1.1.1.1', '1.0.0.1')
$CLOUDFLARE_IPV6_DNS = @('2606:4700:4700::1111', '2606:4700:4700::1001')
$GOOGLE_IPV4_DNS = @('8.8.8.8', '8.8.4.4')
$GOOGLE_IPV6_DNS = @('2001:4860:4860::8888', '2001:4860:4860::8844')

# Find your true network interface
$interface_index = Get-NetAdapter -Physical | Select-Object -ExpandProperty ifIndex -First 1
Set-DnsClientServerAddress -InterfaceIndex $interface_index -ServerAddresses $CLOUDFLARE_IPV4_DNS
Set-DnsClientServerAddress -InterfaceIndex $interface_index -ServerAddresses $CLOUDFLARE_IPV6_DNS

# If it goes wrong, uncomment this to reset network settings
# SET-DnsClientServerAddress -InterfaceIndex $interface_index -ResetServerAddresses
Clear-DnsClientCache
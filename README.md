# twl8n.github.io
Celadon Acres Farm web site.
Visit http://twl8n.github.io/index

# Github pages issues

Error from DNS provider:
Could not add A Record for '@': Cannot add multiple records for the same host.

Solution:
Add "A (Round Robin)" records.

- Log in to your domain name provider, in my case Pair Domains aka PairNIC.
- Click "celadonacres.com"
- Click "E-mail Forwarding, Web Site Forwarding, and Custom DNS"
- At the bottom of the "Custom DNS Records" section, select "A (Round Robin)" from the menu
- Under "Add Round Robin A Record," please enter "@" under "Host Name"
- Under the boxes marked "IP Addresses," please enter
185.199.108.153
185.199.109.153
185.199.110.153
185.199.111.153
- Click "Submit" directly underneath this section

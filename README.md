# twl8n.github.io
Celadon Acres Farm web site.
Visit http://twl8n.github.io/index

home page: index.md
left navigation top: _config.yml
left nav bottom: _layouts/default.html

mkdir -p /assets/css/
touch /assets/css/style.scss

What is the difference between thses two minimal themes??

Github pages minimal:

https://github.com/pages-themes/minimal?tab=readme-ov-file#customizing

Orderedlist minimal: 

https://github.com/orderedlist/minimal/tree/master?tab=readme-ov-file

Modify customize CSS style sheet:

https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/adding-a-theme-to-your-github-pages-site-using-jekyll#customizing-your-themes-css

Jekyll troubleshooting:

https://help.github.com/articles/using-jekyll-with-pages#troubleshooting

https://www.amazon.com/gp/product/0813060826/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0813060826&linkCode=as2&tag=tomsvwbugrepa&linkId=978ce6df3a821522468e58aca0b58889

https://www.amazon.com/Sorghums-Savor-Ronni-Lundy/dp/0813060826

<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-na.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=US&source=ac&ref=tf_til&ad_type=product_link&tracking_id=tomsvwbugrepa&marketplace=amazon&region=US&placement=0813060826&asins=0813060826&linkId=5ebfaeeaaaccba7ef041b60346f3bddf&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff">
</iframe>

http://www.amazon.com/exec/obidos/ASIN/1562614800/tomsvwbugrepa


# Useful Github Pages Jekyll starting guide

https://devhints.io/jekyll

http://jmcglone.com/guides/github-pages/

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

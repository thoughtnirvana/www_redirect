### www_redirect

DNS servers don't allow an `A` record to be mapped to a `CNAME`. When you are using google appengine or dotcloud for
hosting which doesn't give you an IP address but a CNAME, you can map `www.yourdomain.com` to the CNAME given by your
hosting provider and redirect your `A` record to this running code.

For example, you can run either of `www_redirect.coffee` or `www_redirect.ru` on your VPS with static ip say
227.18.10.190. Then you can set `yourdomain.com` `A` `227.18.10.190:80` and the service will redirect it to
`www.yourdomain.com`.

This is just one of the ways to redirect naked domains to www subdomain. You can redirect using your webserver as well.

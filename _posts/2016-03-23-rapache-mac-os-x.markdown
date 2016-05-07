---
layout: post
title:  "Setting up rApache on Mac OS X"
date:   2016-03-22 13:01:00 -0700
categories: R,apache
---
Someone asked me to set up [rApache][rapache] on Mac OS X 10.9 (Mavericks). All these instructions worked on 10.11 (El Capitan) though. 

Why rApache? It was the easiest way for this application to embed R code in some HTML files without having to set up a virtual machine for an [OpenCPU][opencpu] server. OpenCPU would be the best way to do it if you know Javascript and are capable of setting up an Ubuntu or Debian server. Plus, there are some good OpenCPU [web app examples][opencpu-ex] that have high-resolution icons. 

Unfortunately, there is no rApache package for OS X in brew or macports, so you'll have to build it from source.

The three pre-requisites for building from source are listed on [rApache's website][rapache-man]: 
* R installed as a shared library
* Apache 2.2 or greater
* libapreq2 2.05 or higher (there is a version bundled with rApache, so it's not necessary to build this separately)

# Installing Apache
Using brew, Apache 2.2 or 2.4 is easy enough to install with `brew install homebrew/apache/httpd22` (or `httpd24`). You can also `brew tap homebrew/apache` and then `brew install httpd22` or `httpd24`. 

Brew's version of Apache will install by default into `/usr/local/`. The configuration will be in `/usr/local/etc/apache2/2.2/httpd.conf` (for `httpd22`) and the default web server root will be at `/usr/local/var/www/htdocs`.

---
XAMPP and rApache
---
I wasn't able to install rApache when using the latest version of XAMPP (5.6.19). The problem appeared to be an inconsistent version of `libiconv.2.dylib` between XAMPP's build and the one that I built `mod_R.so`. I was seeing an error with an undefined symbol `_iconv` in `/Applications/XAMPP/xamppfiles/lib`. 

It seems like this problem happens with a lot of software, but I couldn't find a good solution. I tried to get around this problem by installing `libiconv` with `brew`, but it didn't solve the problem. Installing Apache with `brew` gets around this problem, but you'll have to install PHP, MySQL, and everything else that XAMPP supplies on your own. 

A quick check of rApache's Google Group was not enlightening, except to see that other people had the same issue.

## Installing R 
I installed R with `brew` which by default installs R as a shared library. It installs into `/usr/local/bin/r`.

Building R from source works, too, as long as you run `./configure --enable-R-shlib`. More details for downloading and installing R from source are available at [R's website][r-install].

You probably will also want to install the `brew` package for R by running `install.packages("brew")` at the R console. This allows the really convenient addition of R code into HTML like you would do with PHP using the `<%` and `%>` tags.

## Installing libapreq2
There is a version of libapreq2 that comes with rApache and will build and install by default if you don't specify your own apreq2 when you `configure` rApache. I recommend this route for ease. Also, I quickly scanned the changelog for libapreq2 and it didn't seem like any major bugs were fixed between the bundled version 2.05 and the current version 2.13. But I compiled it anyway for completeness and to avoid the kind of bugs that I saw installing with XAMPP.

To install `libapreq2` on OS X, I used Subversion to download the latest build using `svn checkout httpvn.apache.org/repos/asf/httpd/apreq/trunk/ httpd-apreq-2`. If you go this route, you'll have to `brew install libtool` (this is really `glibtool` if you're using brew), `brew install automake autoconf`, and run `cpan` then `install ExtUtils::XSBuilder`. You'll also have to change `libtool` to `glibtool` in the `configure` file so that you use the GNU-compatible `glibtool` you installed with brew instead of OS X's older `libtool`. 

Then you can `./configure --with-apache2-apxs=/usr/local/bin/apxs` before running `make` and `make install`.

## Installing rApache
Finally, you should be able to install rApache. I used `git clone https://github.com/jeffreyhorner/rapache.git`. After you change directory into the `rapache` folder, you can run the configure script and specify 
`./configure --with-R=/usr/local/bin/r --with-apxs=/usr/local/bin/apxs`

If you built `libapreq2` from source, you'll have to add the `--with-apreq2-config=/usr/local/Cellar/apr-util/1.5.4_1/libexec/bin/apreq2-config` to the line above (or wherever your apreq2-config is installed--to find this, you could `make install | grep apreq2-config` in the `httpd-apreq-2` source folder).

You should also run `make test` and `make itest` then go to http://localhost:8181 and click on each of the links. To test R's brew package, you'll have to uncomment the `<Directory>` tags corresponding to the RHandler brew::brewin `rapache/test/httpd.conf`.

Importantly, the sendBin test script tests R's ability to send binary data to the web server to allow plots to be displayed.

### Notes
It's useful to run `brew update && brew upgrade` to make sure you have the latest libpng, cairo, etc. If you don't, the test script sendBin.R could crash and not give an Error 500 or even a 404. Not only that, but I was unable to find any mention of a crash in Apache's error_log!

# Putting it all together
You can edit your `/usr/local/etc/apache2/2.2/httpd.conf` (or wherever your Apache httpd.conf resides) to run individual R files or apply R functions to the files in a directory (like you'd want to do with R's brew package) by adding directives like those in the testing httpd.conf 
Now you should be able to run `$ sudo apachectl start` or `$ sudo apachectl restart` and check out the web server running on your computer at http://localhost:8080.

[rapache]: http://www.rapache.net
[opencpu]: https://www.opencpu.org
[opencpu-ex]: https://www.opencpu.org/apps.html
[rapache-man]: http://rapache.net/manual.html
[r-install]: https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Installing-R-under-OS-X
[apreq-dl]: https://httpd.apache.org/apreq/:

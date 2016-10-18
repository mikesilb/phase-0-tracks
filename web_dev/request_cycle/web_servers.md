# Web Servers (Release 1)

2. Generally, the Linux philosophy is based on the fact that the people who will use it already have some basic computing proficiency and thus, there was a general sense that users were not going to destroy the system in a catastrophic way; rather, the system was based on general prerequisite knowledge and proficiency that can only be constructively built upon.  


Beyond thus, there are nine major tenets to the Linux philosophy:

* Small is Beautiful
* Each Program Does One Thing Well
* Prototype as Soon as Possible
* Choose Portability Over Efficiency
* Store Data in Flat Text Files
* Use Software Leverage
* Use Shell Scripts to Increase Leverage and Portability
* Avoid Captive User Interfaces
* Make Every Program a Filter

Please see (https://opensource.com/business/14/12/linux-philosophy) for more detail about each principle.

3. A VPS is an allocated chunk of memory on a given computer that is isolated and committed towards becoming a webserver.  It is virtual because it need not be an full-fledged computer (including all the hardware, etc.)  However, for intents and purposes, it can be considered like a unique computing system that is committed towards being a server (which can be used to process HTTP requests from a separate browser).  Advantages of using a VPS are: 1) More stability and reliability for basic web hosting needs, 2) More control compared to shared hosting, 3) Green technology, environmentally friendly, and more efficient use of resources, 4) Easy scalability when needed, and 5) Cost effective solutions for small websites. (https://blog.servermania.com/the-5-major-benefits-of-using-a-virtual-private-server/)

4. It's a bad idea to run programs as the 'root' user on a Linux system because if anything goes seriously wrong, it affects the entire system including all accounts.  However, if individual accounts are set up where commands run in these accounts, there is always some security buffer from major issues wreaking havoc.
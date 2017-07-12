##What are some of the key design philosophies of the Linux operating system?
The design philosophy of Linux assumes that the user knows what they are doing. Another couple of tenets of the Linux philosphy are that "small is beautiful" and "each program does one thing well." Small, efficient programs are used to accomplish a given task. Another tenet is to "use software leverage." This means that you should use existing code to accomplish a task if good code already exists to do what you want. This will save you time.

##In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS? 
A VPS is a virtual computer that you can control remotely that is running on a chunk of memory of a cloud server.

Advantages of a VPS:

* More stable and reliable for basic web hosting.
* More control since you get complete root acess.
* More environmentally friendly.
* Easy to scale up your hosting resources as necessary.
* Cost effective even for small websites.

##Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
When you are logged in as a user account, programs can only write to your home folder. This means that system files cannot be modified without gaining root permissions. This is more secure because if you were logged in as the root user a malicious web page could access and alter all files on your computer including other users and system files. Running linux as a user account also helps protect against buggy applications that might accidentally delete all files it has access to.
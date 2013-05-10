# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_t = [
	  {:username => 'msk098', :email => 'mist@gmail.com', :password => 'yeahmaybe',:password_confirmation => 'yeahmaybe', :role => 'admin'},
          {:username => 'johnsuser', :email => 'jmk@uiowa.edu', :password => 'password1',:password_confirmation => 'password1', :role => 'user'},
          {:username => 'jsmith', :email => 'james@hotmail.com', :password => 'password2',:password_confirmation => 'password2', :role => 'user'},
          {:username => 'kate_rog', :email => 'krogers@live.com', :password => 'password3',:password_confirmation => 'password3', :role => 'user'},
          {:username => 'links', :email => 'tina@gmail.com', :password => 'password4',:password_confirmation => 'password4', :role => 'user'}
          
          ]

profile_t = [
	  {:user_id => 1,:first_name => 'Marcus', :last_name => 'Scott', :total_score => 0},
          {:user_id => 2,:first_name => 'John', :last_name => 'Kelleher', :total_score => 50},
          {:user_id => 3,:first_name => 'James', :last_name => 'Smith', :total_score => 25},
          {:user_id => 4,:first_name => 'Kate', :last_name => 'Rogers', :total_score => 32},
          {:user_id => 5,:first_name => 'Tina', :last_name => 'Link',:total_score => 12}
          ]

user_t.each do |user|
  User.create!(user)
end

profile_t.each do |profile|
  Profile.create!(profile)
end

level_t = [
	    {:level_name => 'Level 1', :points => 0, :activity => 'Level 1 is designed for entry level teachers who need basic skills to begin work at Bettendorf High School. You will need a total of 10 Paw Points to advance to level 2, and coincidentally, there are only 10 missions that you can choose to complete. I know what you are saying, "I thought we were going to have some choice!" Rest assured Grasshopper, your time will come.<br><br>
You need to make sure you fill out the form on the missions you complete. The form will have a couple of content questions about what you learned and the second form is a mission rating. Follow the directions in filling out and submitting the form.<br><br>
<b><u>Missions at this level will award you 1 Paw Points</u></b><br><br>'},
	    {:level_name => 'Level 2', :points => 0, :activity => 'Okay Noob, it is time to actually learn some things that you can use. The bad news is that this is not the level where you get your new fancy tablet so you can play angry birds during your off block. The good news is you will be learning some actual programs and in the end will lose your "noobie" status.<br><br>
Some of the quests are chains, where completing one quest will allow you to move on to another. Fear not, you will be earning Paw Points as you go! In order to complete this level you need not complete all of the quests. You also need not do them in order (unless its a chain).<br><br>
<b><u>Missions at this level will award you 2 Paw Points</u></b><br><br>'},
            {:level_name => 'Level 3', :points => 0, :activity => 'Congrats Novice! This level offers very little choice. Here you are going to receive and set up your IPad. The first chain of missions will end with you getting your IPad. The second chain will introduce you to the features of the IPad as well as help you set up your WiFi, mail, and things like that.<br><br>
<b><u>Missions at this level will award you 3 Paw Points</u></b><br><br>'},
            {:level_name => 'Level 4', :points => 0, :activity => 'Gratz on getting that swanky new playground of processors and pixels! We are going to assume that you have your iPad set up with your email and accounts from last level. Now it is time to find out all the cool things you can do with it in your class. Not all of these missions will incorporate the iPad, but there will be enough of them to make you dangerous.<br><br>
<b><u>Missions at this level will award you 4 Paw Points</u></b><br><br>'},
	    {:level_name => 'Level 5', :points => 0, :activity => 'Gratz on losing the Novice title and becoming a User. By this time you are using some of the exciting capabilities of technology in our school. This level gives you the opportunity to work through some social media experiences as well as classroom management systems. This level will consist of many chains that will earn you more titles to go along with your mad skills! If you are still interested in lower level missions, feel free to farm some points from them to your hearts desire!<br><br>
<b><u>Missions at this level will award you 5 Paw Points</u></b><br><br>'},
            {:level_name => 'Level 6', :points => 0, :activity => 'Alright Tech Geeks, you scored yourself some earbuds so lets get some more swag. This level will put you into some of the more advanced features of many of the applications you have been learning to use. Chances are, you may know a lot of this. I know that once I am introduced to a program, I learn most of its use by exploration. Hopefully we can fine tune your skills and develop the true Tech Geek inside you that has been waiting to get out.<br><br>
<b><u>Missions at this level will award you 6 Paw Points</u></b><br><br>'},
            {:level_name => 'Level 7', :points => 0, :activity => 'This level will begin your work on the upper tier of the progression. I am assuming since you have finished Level 6 that you are comfortable finding apps on your own and reviewing them for recommendation to others. Tech Geeks love exploring the virtual environment and coming up with exciting and innovative ways of enhancing their classroom with technology. This level, you will begin sharing those ideas with others. There are not enough missions in this level to reach level 8 without repeating missions. From here on out, the missions will be geared towards enhancing your curriculum through integration, not just teaching yourself how to use swanky gadgets. Feel free to farm some lower missions for small Paw Points, or complete certain level 7 missions multiple times to earn points again and again.<br><br>
<b><u>Missions at this level will award you 7 Paw Points</u></b><br><br>'},
	    {:level_name => 'Level 8', :points => 0, :activity => 'You are almost there! You should now be working right alongside the creators of these missions as a partner in our enterprise. This level will have you creating missions for use by others as well as collaborating with your peers to better their curriculum. This is a school-wide effort and we are all about helping every kid, not just the ones in your classroom.<br><br>
<b><u>Missions at this level will award you 8 Paw Points</u></b><br><br>'},
            {:level_name => 'Level 9', :points => 0, :activity => 'All Praise the Tech God!!! Gratz on becoming what we all strive to become! You are really helping improve this school and your efforts should be applauded. May the bards sing of your greatness from the highest peaks.<br><br>
This level will complete your training. This is not for the faint of heart however. The skills you will learn here will be far beyond what ordinary mortals possess. Prepare for Tech Awesomeness!<br><br>
<b><u>Missions at this level will award you 9 Paw Points</u></b><br><br>'}
	  ]

mission1_t = [
	    {:mission_name => 'An introduction to gamification and why we are doing this (101)',:description => '<h2>A Fine Line Between Cool and Stupid</h2> <br>
Here is where I explain the guts to the game mechanics as well as the reasons why we chose to do this silly adaptation of online MMOs for professional development.<br><br>
There are three big buzz words in educational technology right now: Social Networking, Gamification, and Crowd Sourcing. It was our hope to use these new ideas to our advantage in a way that really has not been done before in a school setting.<br><br> 
Social Networking- This is a no-brainer. Most of you are on Facebook, Twitter, Google + or any number of other social networking sites. I think I still have a MySpace page floating around in the cyber-ether with pictures of my son when he was born (he is 10 now). As a part of this process, you will be asked to develop a relationship with social media. It is a lot like a child. I can bring you great happiness, but it can also burn you. After you have been burned, you may not look at it the same way again, but you will always love it. Without including this in our curriculum, we are ignoring a very big part of our students lives. It may not be what we grew up with, but that is not bad. We need to adapt when adapting is crucial. (Ask Pete Bruecken about Slide Rules sometime).<br><br> 
Gamificaton is the biggest aspect of this professional development. It works like this... I watch my son play these Massive Multi-player Online (Thats MMO... see you learned something already) games and watch him sit and finish mission after mission after mission after mission just to get some stupid reward that really does not mean anything in the real world. That is when it hit me. It does mean something. It is a recognition of an accomplishment he made, progressing through higher and higher levels of development for his character. Its constant feedback, its work and reward. Gamificaiton is taking game mechanics and applying them to the real world. Let me give you an example... Lets say I want to be a better husband (I know she is reading this). My wife and I would decide what it would take to do that and develop missions/quests/objectives... whatever. I then keep track of my progress, keeping points as I go. I start as a level 1 husband, but if I, say do the dishes, or pick up the kids when it was her turn, or do something for her without her asking, I am awarded points. I earn enough points and I advance to a level 2 husband. I am not suggesting you do this with a marriage, but with many things it can work very well. Businesses have been doing this for decades. If you sell more than other floor managers at BestBuy, you earn badges, and your name is placed on a leader board. Hell, I am earning points on my Visa card for buying gas. When I earn enough points, I can be a VIP member. Think Frequent Flier Miles, think of our salary schedule with lane changes!<br><br>
Crowd Sourcing will hit this game in the later stages. Once you reach certain levels, we will be asking you to make tutorials and give presentations at conferences to gain your Paw Points. This is a large effort and we need all the help we can get.<br><br> 
If you are interested in more information about Gamification and how it can be applied, visit the following link.',:points => 1,:urllink_type => 'link',:url => '<br><a href="http://gamification.org/wiki/Gamification" target="_blank">Gamification Wiki</a>'},
	    {:mission_name => 'A short introduction to members of the technology department at BHS (102)',:description => '<h2>Who fixes my stuff when I break it?</h2><br> 
The Technology Department at BHS consists of many faces that you will run into from time to time. Here is a list of each of them with their responsibilities. If you are looking for help with a problem, there is a chain of command that you need to follow.<br><br>  
All queries for tech problems are processed through emailing <b>HS COMPUTER PROBLEMS</b>. When you send a problem in, it is available for viewing by the entire tech department. If someone is absent on a given day, the problem will be picked up by their designated substitute.  If it is a true emergency such as:<br>
I have 30 freshmen staring at me while I am frantically trying to figure out why my projector went black and I have absolutely no idea what I will do with them if I can not use my projector.  In this type of situation, try calling Eric (6062) or LeAnne (6060) to see if they are available to help at that point.<br><br>
<h3>Eric McCoy</h3>
<img src="https://sites.google.com/a/bettendorf.k12.ia.us/bhs-tech-pd/_/rsrc/1332440539524/home/level-1/mission-1-2/Eric%20McCoy.jpg?height=200&width=150"/><br><br>
Eric will be your first line of defense. Eric has been the high schools technician for just over 2 years.  He is responsible for supporting the High School, the Bus Garage, and the Thomas Edison Center.  His office will be located in the new Administration building (fall 2012).  Right now he is located across from the library conference room.  Eric is married (Rachel) and has two young children (Katie, Jack).<br><br>
Eric handles:<br>
Network connection issues<br>
Student and Staff network password resets<br>
Google Docs Accounts<br>
Infinite Campus password resets<br>
First Class troubleshooting<br>
Yellow Dot Quizzes--accounts and passwords<br><br>
<b>Contact Eric (through HS COMPUTER PROBLEMS) for these types of things:</b><br>
My computer has the blue screen of death.<br>
My projector is not working.<br>
I am unable to access my files.<br>
Our printer is not working.<br>
My promethean board is not responding.<br>
I need to reset my Google password.<br>
My document camera is not working.<br><br>
<h3>LeAnne Wagner</h3>
<img src="https://sites.google.com/a/bettendorf.k12.ia.us/bhs-tech-pd/_/rsrc/1332258906276/home/level-1/mission-1-2/WAGNER_LEANNE.jpg?height=200&width=150"/><br><br> 
LeAnne is the Teacher Librarian who is also responsible for helping staff integrate technology into their curriculum. She is here to help you in planning lessons and integrating technology.<br><br>  
<b>Contact LeAnne for these types of things:</b><br>
I want to use a specific tool, but I do not know how.<br>
I have an idea regarding a lesson but I need to talk it through.<br>
I want to integrate technology into my lesson but I am not sure which tool to use.<br>
I am not sure how to download a video from youtube.<br>
How do I use this app?<br>
Which app do I use?<br>
Which database can I use for my lesson?<br><br>
<h2>Student Tech Team</h2><br> 
We will have a student tech team organized in the spring of 2012.  Eventually this student tech team will be a class offered with a curriculum attached but for right now, we are going to enlist the help of students as much as we can with the roll out next year.  Students will man the student tech help desk and will be able to assist other students with their iPads and other technical issues.<br><br>  
<h3>Robert Ogan</h3>
<img src="https://sites.google.com/a/bettendorf.k12.ia.us/bhs-tech-pd/_/rsrc/1331301425063/home/level-1/mission-1-2/robert.jpg?height=266&width=200", width="150", height="200"/><br><br>
Robert has been in charge of the Network Administration for 6 years, he has been in the district technology department for 13 years.<br>
If Eric determines that your computer issue needs to come to Roberts attention, he will contact Robert.  If it is a Moodle question, contact LeAnne first and she will contact Robert.  <b>Robert is handling all district network issues so we want to make sure that we try to handle issues within the building first.</b><br><br> ',:points => 1,:urllink_type => 'link',:url => ''},
            {:mission_name => 'What makes a good password, what kinds of updates are needed, and how should I name files. (103)',:description => '<h2>Passwords & Plug-Ins & File Names Oh My!</h2><br>  
Please read the following information on naming files.',:points => 1,:urllink_type => 'link',:url => '<br><a href="http://www.records.ncdcr.gov/erecords/filenaming_20080508_final.pdf" target="_blank">Best Practices for File Naming</a><br>
<a href="https://security.tennessee.edu/pdfs/PBP.pdf" target="_blank">Passwords</a>'},
            {:mission_name => 'An introduction to basic abilities of First Class mail client (104)',:description => '<h2>FirstClass, you mean WorstClass... (they did not hear me say that)</h2><br> 
Enjoy the following movie, then I have some questions for you to answer.',:points => 1,:urllink_type => 'link',:url => '<br><a href="http://youtube.com/watch?v=IPnKmwrjQtg" target="_blank">http://youtube.com/watch?v=IPnKmwrjQtg</a>'},
            {:mission_name => 'An Introduction to Infinite Campus (105)',:description => '<h2>To Infinity and Beyond!</h2><br>
I hope you enjoy the following tutorial as much as I did making it!',:points => 1,:urllink_type => 'link',:url => '<br><a href="http://youtube.com/watch?v=gSZ-ZalBmAc" target="_blank">http://youtube.com/watch?v=gSZ-ZalBmAc</a>'},
            {:mission_name => 'An introduction to server structure at BHS and where things are saved (106)',:description => '<h2>Where did I save my crap?</h2><br>
First of all, we do not recommend that you save many things to your desktop as those items would not be backed up in any way and would not be recoverable in a situation where your hard drive fails.<br><br>
When you are saving documents, you should save them to the "Documents" folder.  This folder is stored on a server and you can access your data from any computer in the district.  This folder is also backed up and we would be able to recover any files within it if we have a failure.<br><br>
Points to remember when you are saving (Teachers)<br>
<ul>
<li>Within "documents" you can save everything except for music files (mp3, wav, etc.). </li>
<li>There is a limit to the storage space you have available (10GB).  You would be notified via email when you are approaching limit.</li>
<li>If you have downloaded videos, you CAN save them in your "documents".  That is a change in policy (2nd semester, 2012).</li>
<li>You may create as many organizational folders as you need within "documents"</li>
<li>Eventually you will be able to access your "documents" from any computer with an internet connection (home, etc.). You must have items saved in "documents" to be able to access in this manner.</li>
<li>See attached document for "document" locations.</li>
</ul><br>
Points to remember when Students are saving:<br>
<ul>
<li>Students also save within "documents"</li>
<li>See attached document for various ways that students reach their "documents"</li>
</ul>',:points => 1,:urllink_type => 'link',:url => '<br><a href="https://docs.google.com/viewer?a=v&pid=sites&srcid=YmV0dGVuZG9yZi5rMTIuaWEudXN8YmhzLXRlY2gtcGR8Z3g6NWZkMTA5ZWU3YjJkNzYyOQ" target="_blank">Staff Document Folder Locations</a><br><br>
<a href="https://docs.google.com/viewer?a=v&pid=sites&srcid=YmV0dGVuZG9yZi5rMTIuaWEudXN8YmhzLXRlY2gtcGR8Z3g6NTk1YTFkYTc2Y2MxMzA1OA" target="_blank">Student Document Access</a>'},
            {:mission_name => 'An introduction to our phone system (107)',:description => '<h2>Why I Need to Work for NSA to Make a Phone Call Around Here?</h2><br> 
The district is wired with Cisco phones that are connected via the internet.<br>
Offices have a direct dialing number that is the same number as their voicemail.<br>
Classrooms have a direct dial number that should only be used when classes are not in session.<br>
Teachers have a unique voicemail number separate from their classroom number.<br>
Voicemail can be accessed from anywhere in the district using a Cisco phone.<br>
Dial "9" to get an outside line.<br>
If you are calling a local Illinois number, you must dial "1" and the area code before the number.<br><br>
In District Speed Dial Numbers<br>
(the following speed dials can be used from any Cisco phone)<br><br>
Dial               To Call<br>              
200     --     Administration<br>
201     --     Technology<br>
202     --     BHS<br>
203     --     BMS<br>
204     --     Grant Wood<br>
205     --     Herbert Hoover<br>
206     --     Mark Twain<br>
207     --     Neil Armstrong<br>
208     --     Paul Norton<br>
209     --     Thomas Jefferson<br>
210     --     Edison Academy<br>
211     --     Maintenance<br><br>
Consult the attached documents for phone and voicemail numbers,  voicemail instructions and instructions on transferring and retrieving a parked call. You can also find these documents in First Class on the High School Bulletin Board.',:points => 1,:urllink_type => 'link',:url => '<br><a href="https://docs.google.com/viewer?a=v&pid=sites&srcid=YmV0dGVuZG9yZi5rMTIuaWEudXN8YmhzLXRlY2gtcGR8Z3g6NmZjMTNlOGIwMzUzZDYzZQ" target="_blank">Copy of 2011-2012 BHS Phone List</a><br><br><a href="https://docs.google.com/viewer?a=v&pid=sites&srcid=YmV0dGVuZG9yZi5rMTIuaWEudXN8YmhzLXRlY2gtcGR8Z3g6NGY0MmM1ZTdjM2IxMjM2ZA" target="_blank">Transfer Calls</a><br><br><a href="https://docs.google.com/viewer?a=v&pid=sites&srcid=YmV0dGVuZG9yZi5rMTIuaWEudXN8YmhzLXRlY2gtcGR8Z3g6NWE4YjIwYWE3MDdhOWJhOQ" target="_blank">Voicemail Instructions</a><br><br>'},
            {:mission_name => 'A beginning look at the proper way to incorporate technology into the classroom (108)',:description => '<h2>Planning Lessons using START...Your first of many acronyms in these lessons... make flash cards</h2><br> 
The Characteristics of Effective instruction have been developed by the Iowa Core team of instructors as things to look for in Iowas classrooms. They will remain the foundation of every lesson given in this professional development. Please keep them in mind whenever you complete a mission.<br><br> 
AEA 267 has developed a very good model for introducing the 5 Characteristics. We will be using an abbreviated model as you will be working alone on this exercise.<br><br> 
Please use <a href="http://www.aea267.k12.ia.us/icc/index.php?page=characteristics-of-e" target="_blank">this link</a>. When it comes up, ignore the links four links at the top of the table and focus on the START links listed across the bottom. Please review the information on each brief and IC map before completing the following questions. Make notes as to aspects of the characteristics that are common among some or all of the parts of the START paradigm. ',:points => 1,:urllink_type => 'link',:url => '<br><a href="http://educateiowa.gov/index.php?option=com_content&view=article&id=2102" target="_blank">Iowa Department of Education</a>'},
            {:mission_name => 'A look at services that are available through our library (109)',:description => '<h2>Ahhh the Library, Remember When It Had Books!</h2><br> 
<b>This is not your Mothers library!!!!</b><br>
<b>We are going to be "DEWEY FREE"</b><br><br>
So what does that mean exactly?<br>
All fiction books will be in one location.  They will be categorized according to GENRE.<br>
<b>GENRE                                EXAMPLE</b><br>
Realistic Fiction                    Jodi Picoult  "Nineteen Minutes"<br>
Suspense                             Stephen King "Misery"<br>
Mystery                                Dan Brown "DaVinci Code"<br>
Adventure                             Anthony Horowitz "Alex Rider"<br>
SciFi                                    Suzanne Collins "Hunger Games"<br>
Fantasy                                Christopher Paolini "Eragon"<br>
Romance                              Sarah Dessen "This Lullaby"<br>
Sports                                  Elaine Marie Alphin "The Perfect Shot"<br>
Historical Fiction                   Joseph Bruchac "CodeTalkers"<br>
Manga                                  Jun Mochizuki "Pandora Hearts"<br>
Graphic Novels                      Bill Amend "FoxTrot"<br><br>
All NonFiction and Reference books will be in one location.  They will be organized by categories.<br>
<b>CATEGORY                            EXAMPLE</b><br>
Arts and Humanities                Art, Dance, Drama, Music, etc<br>
Career and Tech                      College Information, Crafts, Parenting, Technology, Careers, etc.<br>
Language Arts                         Mythology, Authors, Poetry, Shakespeare, etc.<br>
Health                                     Drugs, Inspirational, Teen issues, Fitness, etc.<br>
Sports                                    Sports, Motivational, Racing, etc.<br>
Science and Math                    Math, Anatomy, Biology, Chemistry, Physics, etc.<br>
Social Studies                         History, Politics, Psychology, Sociology, Economics, etc.<br>
World Languages                     Language dictionaries, Travel, etc.<br>
<b>AEA RESOURCES</b><br>
We have a number of resources offered through the AEA.  Consult the attached file for websites, descriptions, usernames, and passwords and explore these resources.<br>
We have a number of resources available on our <a href="http://bhs.bettendorf.k12.ia.us/Teachers/library/" target="_blank">website</a>.<br>
<b>Things to look for in August 2012:</b><br>
Complete Renovation of the library.<br>
Student Tech Help Desk located in library.<br>
Ebook offerings<br>
Informational Databases',:points => 1,:urllink_type => 'link',:url => '<a href="https://docs.google.com/viewer?a=v&pid=sites&srcid=YmV0dGVuZG9yZi5rMTIuaWEudXN8YmhzLXRlY2gtcGR8Z3g6MThhYzM2NGUyN2QzZGYyOQ" target="_blank">Student Database</a>'},
            {:mission_name => 'A look at copyright law. (110)',:description => '<h2>Mickey Mouse is Pissed!!</h2><br> 
We all know that as teachers we must understand our rights and responsibilities as users of copyrighted materials.  Not only must we understand but we also need to help our students make good choices when using copyrighted material.  This mission will help you to determine what we can use, how we can use it, and when do we need to give credit.<br><br>
First a few definitions:<br>
<h2>Copyright</h2>--protects the rights of the person who creates a "work".  Whether it be a poem, story, book, song, computer code, website, picture, movie, etc. copyright lasts for the life of the creator plus 70 years.<br>
<h2>Public Domain</h2>--when copyright runs out or if a creator chooses, the work is placed here and can be used freely.<br>
<h2>Fair Use</h2>--there are times when a copyrighted "work" can be used and considered to be fair.  Criticism, comment, news reporting, <b>teaching, scholarship</b> and research.<br>

<h2>How do I tell if it falls into fair use?</h2>
<ol>
<li>The purpose and character of the use (commercial, nonprofit, teaching, etc.)</li>
<li>The nature of the copyrighted work (Is the work fact or fiction?)</li>
<li>The amount used in relation to the copyrighted work as a whole and</li>
<li>The effect of the use upon the potential market for the copyrighted work.</li>
</ol><br>  
<h2>For Multimedia Projects:</h2><br>
Credit the source even if it is a fair use.  (It is a good habit for you and your students)<br>
Create a section to include: author, title, publisher, place and date of publication<br>
Opening screen must include a statement that certain materials are included under the fair use and educational multimedia guidelines and further use is restricted.<br>
More information can be found at the following links:<br>
<a href="http://www.copyright.gov/fls/fl102.html" target="_blank">U.S. Copyright Office</a><br>
<a href="http://guides.lib.uiowa.edu/content.php?pid=188558&sid=1890386" target="_blank">Classroom Use Guidelines (University of Iowa Libraries)</a>
<h3>Consult the attached chart for guidelines</h3>',:points => 1,:urllink_type => 'link',:url => '<br><a href="https://docs.google.com/viewer?a=v&pid=sites&srcid=YmV0dGVuZG9yZi5rMTIuaWEudXN8YmhzLXRlY2gtcGR8Z3g6NGYxNTJkMmZjMjliMGMyNg" target="_blank">Copyright.pdf</a>'}
	    ]

mission2_t = [
	    {:mission_name => 'Your love affair with Microsoft Office starts here! (201)',:description => '<h3>Top 25 new Features in Office 2010</h3><a href="http://www.youtube.com/watch?v=fu-b3rlcWyE" target="_blank">http://youtube.com/watch?v=fu-b3rlcWyE</a><br><br><iframe width="560" height="315" src="http://www.youtube.com/embed/fu-b3rlcWyE" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Beginning Word & Power Point (202)',:description => '<h3>Inserting different objects into Word</h3>
<a href="http://youtube.com/watch?v=lnlaSYwZ624" target="_blank">http://youtube.com/watch?v=lnlaSYwZ624</a><br><br><iframe width="560" height="315" src="http://www.youtube.com/embed/lnlaSYwZ624" frameborder="0" allowfullscreen></iframe><br><br>
<h3>In case Power Point has not been overdone for you, here you go!</h3>
<a href="http://youtube.com/watch?v=TR3gcCrTSzw" target="_blank">http://youtube.com/watch?v=TR3gcCrTSzw</a><br><br><iframe width="560" height="315" src="http://www.youtube.com/embed/TR3gcCrTSzw" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Beginning Excel (203)',:description => '
<h3>This is a must for using excel- It is a long one though:)</h3>
<a href="http://youtube.com/watch?v=-SnBlC_1tSk" target="_blank">http://youtube.com/watch?v=-SnBlC_1tSk</a><br><br><iframe width="560" height="315" src="http://www.youtube.com/embed/-SnBlC_1tSk" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Basics of the paint program on windows (204)',:description => '<h3>Basics of Microsoft Paint</h3>
<a href="http://youtube.com/watch?v=E_xOwE_1grY" target="_blank">http://youtube.com/watch?v=E_xOwE_1grY</a><br><br> 
<h3>Once you have the Basics, now for some cool tricks</h3>
<a href="http://youtube.com/watch?v=2ZEAMDTjOgU" target="_blank">http://youtube.com/watch?v=2ZEAMDTjOgU</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/2ZEAMDTjOgU?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br<br>',:points => 2,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'A basic tutorial on Windows interface (205)',:description => '<h3>Windows</h3><br> 
Windows is an operating system.  What does that mean?  An operating system is the software that supports the computers basic functions like, printing, opening applications, and saving.<br>
<h3>Basic tutorial on Windows 7</h3> 
<a href="http://youtube.com/watch?v=d41AkNRnNOc" target="_blank">http://youtube.com/watch?v=d41AkNRnNOc</a><br><br><iframe width="560" height="315" src="http://www.youtube.com/embed/d41AkNRnNOc" frameborder="0" allowfullscreen></iframe><br><br>
<h3>For those of you who are used to Windows take a look at the Top 10 New Tools in Windows 7</h3>
<a href="http://youtube.com/watch?v=tMBEkbH4z0k" target="_blank">http://youtube.com/watch?v=tMBEkbH4z0k</a><br><br><iframe width="560" height="315" src="http://www.youtube.com/embed/tMBEkbH4z0k" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
            {:mission_name => 'A few tips on using search engines and Internet explorer (206)',:description => '<h3>Internet Explorer</h3><br>
Most of us have had occasion to surf the internet.  A lot of us simply open up the browser that we are used to clicking on and the Internet appears.  There are many browsers available to use.  On our desktop computers, we have two main browsers, Internet Explorer and Google Chrome.
Google Chrome will be introduced in the next mission so let us focus on Internet Explorer<br><br>
<h3>Internet Explorer is the default browser for Windows based computers.  The following is a quick review.</h3>
<a href="http://youtube.com/watch?v=9FsXHvbTdgE" target="_blank">http://youtube.com/watch?v=9FsXHvbTdgE</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/9FsXHvbTdgE?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Basic introduction to Google Chrome (207)',:description => '<h3>Google Chrome</h3><br>
I have come to find that Google Chrome is a great browser for surfing the Internet. Come explore it with me!<br>
<a href="http://youtube.com/watch?v=CIKryVNIGjo" target="_blank">http://youtube.com/watch?v=CIKryVNIGjo</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/CIKryVNIGjo?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Basic YouTube surfing and uploading (208)',:description => '<h3>YouTube Basics</h3><br>
As we all know, there is a video out there of just about everything and even some things we do not want to see.  How do I find what I am looking for on YouTube?<br>
How do I create my own channel? and How do I upload a video?  Watch this tutorial and you will be ready to start searching.<br><br>
<a href="http://youtube.com/watch?v=NlCQrSVMzfM" target="_blank">http://youtube.com/watch?v=NlCQrSVMzfM</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/NlCQrSVMzfM?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Collections & Sharing (209)',:description => '<h3>Basics of Google Docs</h3><br>
The key to the usefulness of Google applications comes in the sharing. <br><br>
<a href="http://youtube.com/watch?v=hMrnOBsnaRo" target="_blank">http://youtube.com/watch?v=hMrnOBsnaRo</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/hMrnOBsnaRo?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Docs, Presentations and Spreadsheets (210)',:description => '<h3>Docs, Presentations, and Spreadsheets</h3><br>
This is a VERY QUICK look at the various things you can do in Google docs. This is intended to just wet your appetite for future missions where things will be explained in greater detail.<br><br>
<a href="http://youtube.com/watch?v=WrmAICRY6x4" target="_blank">http://youtube.com/watch?v=WrmAICRY6x4</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/WrmAICRY6x4?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Intro to Forms (211)',:description => '<h3>Forms</h3><br>
Google Forms is a powerful tool for your classroom. If you did not know, you have been using them every time you answer a question for me in these tutorials. There are actually 2 different forms on this page alone! Here is a quick look at their use and how to create a simple form.<br><br>
<a href="http://youtube.com/watch?v=7xDHgN4pM0A" target="_blank">http://youtube.com/watch?v=7xDHgN4pM0A</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/7xDHgN4pM0A?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Logger Pro basics (212)',:description => '<h3>Logger Pro</h3><br>
This is a basic look at Vernier Logger Pro. It goes over hooking up probes and some troubleshooting. It looks at some of the statistical and analysis tools as well as adjusting graphs and data for presentation. Future tutorials will cover analyzing movies and taking remote data.<br><br>
<a href="http://youtube.com/watch?v=puYC8VTmapw" target="_blank">http://youtube.com/watch?v=puYC8VTmapw</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/puYC8VTmapw?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Introduction to Promethean boards (213)',:description => '<h3>Promethean Board Basics</h3><br>
Some of you have Promethean Boards in your classroom, so you probably will breeze right through this tutorial.  Those of you who are wondering how this whiteboard works and what do you use if for--take a look.<br><br>
<h3>What is a Promethean Board?</h3>
<a href="http://youtube.com/watch?v=0iOI3qafp9Q" target="_blank">http://youtube.com/watch?v=0iOI3qafp9Q</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/0iOI3qafp9Q?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Some things you may not have known about Infinite Campus. (214)',:description => '<h3>Intermediate Infinite Campus</h3><br>
How to copy assignments from one class to another and various reports that can be generated.<br><br>
<a href="http://youtube.com/watch?v=tpb1Lhx1tUk" target="_blank">http://youtube.com/watch?v=tpb1Lhx1tUk</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/tpb1Lhx1tUk?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
            {:mission_name => 'PLNs and Twitter (215)',:description => '<h3>PLNs and Twitter</h3><br>
PLNs or Personal Learning Networks--What can it do for you?<br><br>
<a href="http://youtube.com/watch?v=MqSH5TMYlz4" target="_blank">http://youtube.com/watch?v=MqSH5TMYlz4</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/MqSH5TMYlz4?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
<h3>Get started on your PLN with Twitter</h3><br>
<a href="http://youtube.com/watch?v=I0kc0CPtdtg" target="_blank">http://youtube.com/watch?v=I0kc0CPtdtg</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/I0kc0CPtdtg?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Diigo & Google Reader (216)',:description => '<h3>Diigo--Collect, Highlight and Remember</h3>
<a href="http://youtube.com/watch?v=nkrHFM3s8Bc" target="_blank">http://youtube.com/watch?v=nkrHFM3s8Bc</a><br><br>
***If you are using Chrome, install the Diigo extension by clicking <a href="https://chrome.google.com/webstore/detail/diigo-web-collector-captu/oojbgadfejifecebmdnhhkbhdjaphole" target="_blank">here</a> and following the prompts.<br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/nkrHFM3s8Bc?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
<h3>Google Reader--Pull information from a number of websites into one easy location</h3>
<a href="http://youtube.com/watch?v=65iL0Q97RCg" target="_blank">http://youtube.com/watch?v=65iL0Q97RCg</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/65iL0Q97RCg?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Social Media Policies (217)',:description => '<h3>Social Media Policies for Staff</h3><br>
It all begins with two words COMMON SENSE.<br><br>
Information produced and shared by BCSD employees online is a reflection of the entire District<br>
and is subject to the Districts Acceptable Use Policy. Employees who wish to participate in<br>
social media activity are asked to please read these recommendations carefully before posting<br>
or commenting on blogs or social media websites (Facebook, Myspace, Twitter, Linkedin, etc.).<br>
Full Social Media Policy can be seen <a href="http://www.bettendorf.k12.ia.us/Board/policies/400/401.13R2.pdf" target="_blank">here</a>.<br><br>  
As a district employee, you will be/were asked to sign an acceptable use form.  The policy above is a part of that regulation.<br>
As a district employee, anything you put out on the internet reflects on the district.  Think before you submit!!<br><br>
Some things to remember:<br>
<ol>
<li>You are personally responsible for what you put online.</li>
<li>Protect your privacy.</li>
<li>District social networking sites are under  the same umbrella as District email.</li>
<li>Honesty, Respect and Consideration should be the same online as it would be in person.</li>
<li>Personal and Professional accounts are often blurred together.  Be mindful of that when posting anything online.</li>
<li>Do NOT post any confidential student information</li>
<li>Blogs, Wikis, Podcasts, etc are an extension of your classroom--must be school appropriate.</li>
<li>Check your social media sites and make sure the privacy settings will protect you from unwanted interaction.</li>
<li>You, as an individual have free speech, but you as a professional have an obligation to the District.</li>
<li>Remember Copyright and Fair Use policies include Social Media.</li>
<li>Images, Avatars and Usernames should all be school appropriate and follow Copyright guidelines.</li>
<li>When using Social Bookmarking sites, verify URL addresses of bookmarks and use appropriate tags.</li>
</ol>
<br><br>   
If you would like to create a Social Media Account, consult with Matt Degner first as he will be the liaison to the Technology Director.<br>',:points => 2,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Infinite Campus from home (218)',:description => '<h3>How to work on Infinite Campus from home</h3><br>
<a href="http://youtube.com/watch?v=i9isxrhYv9o" target="_blank">http://youtube.com/watch?v=i9isxrhYv9o</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/i9isxrhYv9o?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''},
            {:mission_name => 'First Class from home (219)',:description => '<h3>How to use First Class from home</h3><br>
<a href="http://youtube.com/watch?v=0ehEKYs6wYg" target="_blank">http://youtube.com/watch?v=0ehEKYs6wYg</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/0ehEKYs6wYg?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 2,:urllink_type => 'link',:url => ''}
	    ]

mission3_t = [
	    {:mission_name => 'First impressions of the iPad and creating an Apple ID(301)',:description => '
<h3>iPad 101</h3><br>
If you have used an iPad for years, or if you are just putting your paws on one for the first time, there are some things that you NEED TO KNOW about how the Bettendorf Community Schools have set up the iPad you are issued.<br><br> 
<h3><b>The 10 iCommandments</b></h3><br>
<ol>
<li><h3><b>Thou shalt NEVER plug thine iPad into a computer.</b></h3>If you try to sync your IPad with a computer, it will erase the settings that the school has in place. They cannot be placed back without wiping the device.</li>
<li><h3><b>Thou shalt use thine own Apple ID with thy device.</b></h3>You are to create an Apple ID that does NOT use your school issued email with it. When you leave the district (which we all have to do someday) your email will be dismantled and thus you will lose all things associated with your Apple ID. Create an Apple ID using a personal email.</li>
<li><h3><b>Thou shalt protect thine device as if it were thine own.</b></h3>You may not have purchased it but it is your responsibility.</li>
<li><h3><b>Thou shalt not use thine iPad for inappropriate use.</b></h3>No need to explain</li>
<li><h3><b>Thou shalt not covet thine neighbors iPad.</b></h3>Get those missions done and you can have one of your very own.</li>
<li><h3><b>Thou shalt not transfer thine iPad without thine carrying case</b></h3>The case is designed to protect the iPad, specifically the corners and screen.  The case will not protect it if submerged in water, coffee, tea, etc.</li>
<li><h3><b>Thou shalt not use thy schools wireless bandwith in excess</b></h3>Install updates while at home if possible.</li>
<li><h3><b>Thou shalt not leave thy device unattended anywhere.</b></h3>Just as with anything else of value, make sure you know where your iPad is and whether or not it is safe.</li>
<li><h3><b>Thou shalt not leave thy device in your chariot.</b></h3>Extreme temperatures will not be kind to your iPad, nor will thieves who see it sitting in the front seat of your car.</li>
<li><h3><b>Thou shall be free to try new things and expand thy mind.</b></h3>Enjoy the experience.  Try new things.  Do not be afraid to ask questions.  We are in this together!</li>
</ol>
<br><br>
Your first look at The Device<br><br>
Apple IDs<br><br>
Your Apple ID is the way in which Apple tracks what you have done and are capable of doing in their markets. You need to create an Apple ID in order to:<br>
<ul>
<li>Download Apps</li>
<li>log into chat or iCloud</li>
<li>Log into and use iTunes</li>
<li>Gain Support from Apple</li>
<li>(**Do just about anything on the device)</li>
</ul>
<br><br>
In order to create an Apple ID, you need to go to the following website and sign up. Creating an Apple ID is free, but you will need to put credit card information in to create an ID as well as some contact information. The District is allowing you to personalize your device with your own Apple ID. When you download an App (even a personal one... I like Netflix:), that app can be synced to your ITunes account so that if something happens to your tablet, you can always get it back. I would hate for you to download and pay for an App and have your device crash and you lose it. You need this Apple ID to keep those apps.<br><br> 
If you DO NOT have an Apple ID, create one by clicking 
<a href="https://appleid.apple.com/cgi-bin/WebObjects/MyAppleId.woa/" target="_blank">here</a> and following the instructions.  Once you are finished, fill out the form below and then move on to Missions 3.2, 3.3, and 3.4.<br><br>  
If you already have an Apple ID that you use with an iPhone, iPod, iPad or iPod Touch, fill out the form below and finish with Missions 3.2, 3.3, and 3.4.<br><br>
<b>Remember</b>--use a personal email address when signing up for an Apple ID--<b>DO NOT</b> use your school email address.<br>',:points => 3,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'What to do when the iPad does not work (302)',:description => '<h3>What to do when your IPad does not work</h3><br>
Here are a couple of quick things to think about when things do not work well on your IPad.<br>
<a href="http://support.apple.com/kb/TS3274" target="_blank"><h3>IPad troubleshooting</h3></a>',:points => 3,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Teacher acceptable use policies and liabilities. (303) ',:description => '
<h3>Bettendorf Community School District</h3><br>
<center><font color="yellow"><h3>Portable Technology Use Guidelines</h3></font></center><br><br>
Use of Portable Technology Devices such as Laptops, Netbooks, iPads, Digital Cameras, etc. as with any other technology device, is subject to the rules and conditions contained within the Bettendorf Community School Districts Acceptable Use Policy<br><br>
Individuals who have been assigned Portable Technology Devices must regard them as property of the Bettendorf Community School District and assume the security and care of the device, all components and accessories.<br><br>
Portable Technology Devices must not be left in vehicles due to temperature extremes that have been proven to cause damage to the systems and due to the potential for theft.  Portable Technology Devices must not be left in an unsecured location.<br><br>
Devices that are lost, stolen, or damaged will result in financial loss to the School District.  If it is determined that the loss of a system, or damage to a system, is the result of the individuals failure to comply with School District policies and procedures, neglect or because of the individuals intentional act, the individual will be required to reimburse the School District for the cost of repair of the device.  In the case of total loss, the individual will be required to pay a $250.00 damage deductible.  Do not deface or permanently mark on the device.  In cases of obvious neglect, abuse or violations, the Portable Device will be taken from the individual and reassigned.<br><br>
Any data corruption or configuration errors caused by the installation of unauthorized or illegal software may result in a loss of all data on your system due to the need for a complete reload of your Portable Device.<br><br>
End-users are responsible for the backup of all data on their systems.  The Technology Department assumes no liability for the loss of data.<br><br>
Problems with functionality of the device must be reported by a staff member through the District Technology Staff.  No on-site home support will be available to end-users.  If units need to be sent out for repair, loaner units will NOT be available.<br><br>
All Portable Devices have to be recorded in the Bettendorf Community School District Technology inventory.  The Bettendorf Community School District Technology Department reserves the right to perform a physical inventory of the hardware at any point.<br><br>
It is recommended that the individuals who are assigned Portable Devices have homeowners, renters, and/or automobile insurance coverage in case of theft or loss.<br><br>
Individuals must report loss, damaged, or stolen equipment immediately (within 24 hours) to the Bettendorf Community School District Technology Department.  Property loss damage reports must be completed on the appropriate forms and will be closely monitored.  Stolen equipment must be reported to the Police Department to ensure thorough investigations, pursuit of criminal prosecution and full restitution, when possible, to the fullest extent of the law.  Any person who knowingly files an application for insurance, statement of claim or police report containing any materially false information of attempts to conceal information concerning any fact material thereto, is violating the law and may be punished by criminal and/or civil penalties.<br><br>
Portable Devices must be immediately returned upon request to the Bettendorf Community Schools Technology Department.  Failure to do so will result in appropriate action.  The individual is responsible for returning all parts and accessories in working order.<br><br><br>
<center><font color="yellow"><h3>You need to go to the library and get a form. Sign the form and hand it in  to complete this mission!!!!</h3></font></center><br><br>',:points => 3,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Student acceptable use policies and liabilities (304)',:description => '<h3>Student Acceptable Use Policy</h3><br>
<h3>Waiting for policy to be approved by the Board of Education.</h3><br>',:points => 3,:urllink_type => 'link',:url => ''},
            {:mission_name => 'iPad settings (305)',:description => '<h3>General tips on working with iPad settings</h3>
<a href="http://youtube.com/watch?v=6TwpYoOPW88" target="_blank">http://youtube.com/watch?v=6TwpYoOPW88</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/6TwpYoOPW88?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
<h3>Putting your cover on</h3>
<a href="http://youtube.com/watch?v=ILhx5_Y-iEU" target="_blank">http://youtube.com/watch?v=ILhx5_Y-iEU</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/ILhx5_Y-iEU?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
<h3>Initial Set up of iPad</h3>
<a href="http://youtube.com/watch?v=0GOrKcicdmA" target="_blank">http://youtube.com/watch?v=0GOrKcicdmA</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/0GOrKcicdmA?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
<h3>Written Instructions for Initial Set Up are attached below</h3><br><br>',:points => 3,:urllink_type => 'link',:url => '<a href="https://docs.google.com/viewer?a=v&pid=sites&srcid=YmV0dGVuZG9yZi5rMTIuaWEudXN8YmhzLXRlY2gtcGR8Z3g6MzU0MjU0ZTU0MjM1MzI4" target="_blank">Staff Setup Instructions</a>'},
	    {:mission_name => 'Battery Life and care (306)',:description => '<h3>Caring for your iPad</h3><br>
Here is a website that has a short article on some main points to think about when caring for your iPad. Please read through this. It covers caring for the screen, the battery life, environmental aspects, and protecting its body.<br> 
<a href="http://www.tcgeeks.com/how-to-care-for-your-ipad-a-guide-for-everyone/" target="_blank">http://www.tcgeeks.com/how-to-care-for-your-ipad-a-guide-for-everyone/</a><br>
<a href="http://www.apple.com/batteries/ipad.html" target="_blank">http://www.apple.com/batteries/ipad.html</a><br><br>
Here are some things to keep in mind when handling your iPad.<br> 
<ol>
<li><b>Do not leave your iPad in your car:</b> Even without the obvious reason that it may be stolen, the inside of your car can go to extreme temperatures during the day. If you do have to leave the device in your car, place it somewhere out of site, perhaps under a blanket where it can not be seen or in direct sunlight.</li>
<li><b>Do not loan your iPad to someone:</b> This device is your responsibility, both for the hardware and software. You will have customized it to fit your needs. Someone else can delete apps, alter accounts, or gain information about you that you did not intend on sharing.</li>
<li><b>Passcode protect the device.</b> If the device is found, you do not want someone getting into your accounts. If you forget your passcode, the iPad has to be completely reset and all your apps will have to be reinstalled.  So make it something you wont forget. (And do not tell anyone what it is).</li>
</ol>
<br><br>',:points => 3,:urllink_type => 'link',:url => ''},
            {:mission_name => 'iTunes Account Set-up (307)',:description => '<h2>iTunes Set-up</h2><br>
<a href="http://youtube.com/watch?v=OavY0e31SB8" target="_blank">http://youtube.com/watch?v=OavY0e31SB8</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/OavY0e31SB8?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 3,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Downloading Apps (308)',:description => '<h2>Downloading Apps</h2><br>
<a href="http://youtube.com/watch?v=5UWEsf94qdI" target="_blank">http://youtube.com/watch?v=5UWEsf94qdI</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/5UWEsf94qdI?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 3,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Setting up email and accounts (309)',:description => '<h2>Setting up your email</h2><br>
<a href="http://youtube.com/watch?v=axbzsKXfFxo" target="_blank">http://youtube.com/watch?v=axbzsKXfFxo</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/axbzsKXfFxo?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 3,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Preloaded iPad programs (310)',:description => '<h2>Pre-loaded iPad Apps</h2><br>
<a href="http://youtube.com/watch?v=cHC4BHTN5Io" target="_blank">http://youtube.com/watch?v=cHC4BHTN5Io</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/axbzsKXfFxo?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 3,:urllink_type => 'link',:url => ''}
	    ]

mission4_t = [
	    {:mission_name => 'Intermediate spreadsheeting using formulas and graphing (401)',:description => '<h3>Excel is Your Friend</h3><br>
This mission will give you the basics of entering equations in spreadsheets as well as some graphing.<br><br> 
<a href="http://www.youtube.com/watch?v=8bqLnbCRJNk" target="_blank">http://www.youtube.com/watch?v=8bqLnbCRJNk</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/8bqLnbCRJNk?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Intermediate Word with mail merge and other exciting features(402)',:description => '<h3>Intermediate Word</h3><br>
Mail Merge<br><br> 
<a href="http://youtube.com/watch?v=UusH-4DvFaw" target="_blank">http://youtube.com/watch?v=UusH-4DvFaw</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/UusH-4DvFaw?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Indent and Tabs<br><br> 
<a href="http://youtube.com/watch?v=UW-PpOw2R2Q" target="_blank">http://youtube.com/watch?v=UW-PpOw2R2Q</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/UW-PpOw2R2Q?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Reviewing in Word 2010<br><br> 
<a href="http://youtube.com/watch?v=iJE3CG4goO4" target="_blank">http://youtube.com/watch?v=iJE3CG4goO4</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/iJE3CG4goO4?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Gimp (403)',:description => 'Here is a good look at the GIMP software package. It is basically an Open-Source program that replaces Photoshop. Do not feel like you have to watch all of these, but they are good if you want to really get into this<br><br> 
<a href="http://youtube.com/watch?v=xG1eApVSnkY" target="_blank">http://youtube.com/watch?v=xG1eApVSnkY</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/xG1eApVSnkY?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
<a href="http://youtube.com/watch?v=kB2dQcpTZHE" target="_blank">http://youtube.com/watch?v=kB2dQcpTZHE</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/kB2dQcpTZHE?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Here is a look at how to use some of the tools in GIMP to enhance photos. Check it out and then you can have hours of playtime.<br><br>
<a href="http://youtube.com/watch?v=Atk3glHaMjo" target="_blank">http://youtube.com/watch?v=Atk3glHaMjo</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/Atk3glHaMjo?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
',:points => 4,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Messaging (404)',:description => '<h3>Messaging</h3><br>
How to send messages to parents or students through Infinite Campus<br><br> 
<a href="http://youtube.com/watch?v=leaUsZ979Jw" target="_blank">http://youtube.com/watch?v=leaUsZ979Jw</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/leaUsZ979Jw?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Work with flipcharts (405)',:description => '<h3>Work with Flipcharts</h3><br>
Below are a few short videos explaining some of the tools you will need to create visually appealing flipcharts. The tutorial is being done on a Mac, the interface is the same but when you hear "apple-c or apple-v" use your control button to replace the apple button.<br><br>
Color and Fill<br><br> 
<a href="http://youtube.com/watch?v=_cnM3R12zGw" target="_blank">http://youtube.com/watch?v=_cnM3R12zGw</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/_cnM3R12zGw?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Line Width<br><br> 
<a href="http://youtube.com/watch?v=cpGIMNdCwfM" target="_blank">http://youtube.com/watch?v=cpGIMNdCwfM</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/cpGIMNdCwfM?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Eraser<br><br> 
<a href="http://youtube.com/watch?v=x4OJ6JA5E6A" target="_blank">http://youtube.com/watch?v=x4OJ6JA5E6A</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/x4OJ6JA5E6A?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Highlighter<br><br> 
<a href="http://youtube.com/watch?v=pc8dOHR4mO0" target="_blank">http://youtube.com/watch?v=pc8dOHR4mO0</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/pc8dOHR4mO0?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => '
Additional resources to prepare you for Advanced Promethean Missions yet to come.<br><br>
<a href="http://www.youtube.com/watch?v=xsEmX-T5q40&feature=channel" target="_blank">Drag and Drop Media</a><br>
<a href="http://www.youtube.com/watch?v=kNnH-0rQEzk&feature=relmfu" target="_blank">Resizing Images</a><br>
<a href="http://www.youtube.com/watch?v=bgAbsJZlZN8&feature=channel" target="_blank">Locking Images</a><br>
<a href="http://www.youtube.com/watch?v=ns7SqdUfO5g&feature=channel" target="_blank">Text</a><br>
<a href="http://www.youtube.com/watch?v=O9G_hrdOokE&feature=channel" target="_blank">Text Background Color</a><br>
<a href="http://www.youtube.com/watch?v=Og9QrbdZAK0&feature=channel" target="_blank">Duplicate Text</a><br>'},
	    {:mission_name => 'Browsers (406)',:description => '<h3>Browsers</h3><br>
The Object Browser<br><br> 
<a href="http://youtube.com/watch?v=E3XkK0AijJo" target="_blank">http://youtube.com/watch?v=E3XkK0AijJo</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/E3XkK0AijJo?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
The Notes Browser<br><br> 
<a href="http://youtube.com/watch?v=k3GGWcR1NkE" target="_blank">http://youtube.com/watch?v=k3GGWcR1NkE</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/k3GGWcR1NkE?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
The Resource Browser<br><br> 
<a href="http://youtube.com/watch?v=LB0eUs3dlA8" target="_blank">http://youtube.com/watch?v=LB0eUs3dlA8</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/LB0eUs3dlA8?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Resource Packs<br><br> 
<a href="http://youtube.com/watch?v=kxfJLukKpLQ" target="_blank">http://youtube.com/watch?v=kxfJLukKpLQ</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/kxfJLukKpLQ?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Adding to the Resource Browser<br><br> 
<a href="http://youtube.com/watch?v=ooQVFK69oTc" target="_blank">http://youtube.com/watch?v=ooQVFK69oTc</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/ooQVFK69oTc?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Layers and Containers (407)',:description => '<h3>Layer and Containers</h3><br>
Working with Layers<br><br> 
<a href="http://youtube.com/watch?v=YXEIUJmX9o4" target="_blank">http://youtube.com/watch?v=YXEIUJmX9o4</a><br><br><iframe width="560" height="
315" src="https://www.youtube.com/embed/YXEIUJmX9o4?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Working with Containers<br><br> 
<a href="http://youtube.com/watch?v=5KPNsLSftUs" target="_blank">http://youtube.com/watch?v=5KPNsLSftUs</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/5KPNsLSftUs?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'A first look at different IPad Apps and their use in the classroom (408)',:description => 'In this mission, I want us to begin to look at all the different IPAD apps that are out there and start to try them. The first thing you will realize when going to the App Store is that everyone and their brother are creating apps and trying to get a buck for them. (Seriously, my brother and I are trying to develop one to retire on.... thinking about something with monkeys and golf clubs)<br><br>
Anyway, below are two sites that are devoted to rating IPad Apps.<br><br> 
<a href="http://www.iear.org/" target="_blank">Iear.org</a> is devoted to reviewing apps that are used in education. This is a crowd-sourcing site that asks teachers to do the reviewing.<br><br> 
<a href="http://www.appannie.com/" target="_blank">Appannie.com</a> is a third party reviewer of apps. What is nice about this site is that it keeps very good statistics for app downloads and reviews as well as allows us to sort by categories like "No in-app purchases". If you click on STORE STATS at the top, you can get stats on different apps.<br><br>',:points => 4,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Introduction to Aviary (409)',:description => 'Aviary is a program that allows you to work with images and music. There are several short tutorials below that you can find methods for using Aviary. Do not feel like you have to watch all of these. They are an intro to future missions in Aviary.<br><br>
<b><u>Aviary Education- How to use this in the Classroom</u></b><br><br> 
<a href="http://youtube.com/watch?v=zU6u-WSoFvc" target="_blank">http://youtube.com/watch?v=zU6u-WSoFvc</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/zU6u-WSoFvc?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
<b><u>Introduction to Aviarys Image editor</u></b><br><br>
<a href="http://youtube.com/watch?v=ohiTVTveHpg" target="_blank">http://youtube.com/watch?v=ohiTVTveHpg</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/ohiTVTveHpg?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
<b><u>Aviary Audio Editing</u></b><br><br>
<a href="http://youtube.com/watch?v=HrVg8mcgDRM" target="_blank">http://youtube.com/watch?v=HrVg8mcgDRM</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/HrVg8mcgDRM?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Beginning Evernote (410)',:description => '<h3>Student Note Taking... Yes I know its a far fetched idea. </h3><br>
Evernote can be used on an IPad or on a computer. I used it on my transformer, my IPad, and my phone as well as my computer.<br><br> 
<a href="http://youtube.com/watch?v=IHeVZvnCjNA" target="_blank">http://youtube.com/watch?v=IHeVZvnCjNA</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/IHeVZvnCjNA?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Intermediate Evernote (411)',:description => '<h3>Evernote WebClipper and Import Folders</h3><br>
If you want to "clip" an image, text or a whole webpage and save it in Evernote, take a look at the following tutorial.<br><br> 
<a href="http://youtube.com/watch?v=bYI6k58dsQc" target="_blank">http://youtube.com/watch?v=bYI6k58dsQc</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/bYI6k58dsQc?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Importing files and using the Import folder in Evernote<br><br> 
<a href="http://youtube.com/watch?v=Rq9UDcFT1_4" target="_blank">http://youtube.com/watch?v=Rq9UDcFT1_4</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/Rq9UDcFT1_4?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Evernote on the iPad (412)',:description => '<h3>Evernote on the iPad</h3><br>
<a href="http://youtube.com/watch?v=Zkn4FSOTrXc" target="_blank">http://youtube.com/watch?v=Zkn4FSOTrXc</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/Zkn4FSOTrXc?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
<h3>Directions on how to install the Evernote webclipper to your iPad</h3><br><br> 
Safari does not have extensions so we have to manually add the Evernote webclipper as a bookmark.<br>  
Keep this page open while you are working through the steps:<br><br> 
<ol>
<li>From your iPad, go to Settings. Choose Safari. Be sure Always  Show Bookmarks Bar is set to ON. Be sure JavaScript is set to ON. Be sure Accept Cookies is set to From visited.</li>
<li>Open this page in Safari on your iPad - http://wp.me/p1iIjD-3w   </li>
<li>Now copy the code in this link (press and hold on the code and then release; then adjust the blue overlay so it coves the entire code, and tap Copy. <a href="http://lorenzocaum.com/wp-content/uploads/2011/02/evernote-web-clipper-code.txt" target="_blank">evernote-web-clipper-code</a></li>
<li>Next, click on the share icon (square with a right arrow) at the top of your Safari page and click Add Bookmark. Ensure that it will be saving to the Bookmarks Bar and then hit Save.</li>
<li>Now click on the bookmark icon (open book) to pull up your bookmarks. Click on the Bookmarks Bar folder. Then click Edit in the top corner of your window.</li>
<li>Select the bookmark that you just created. Change the name to something of your choice, perhaps Evernote or Clip to Evernote Next delete the URL shown and paste the new code that you copied in step 2 (press and hold, then release, then tap Paste. Hit Bookmarks Bar located in the bottom top left corner to go back.  Click Done located in the top right corner. Click the bookmark icon to make it disappear.</li>
</ol>
<br><br>
Those are all the steps! You have now installed the <a href="http://evernote.com/learn_more" target="_blank">Evernote</a> web clipper on your iPad.<br><br>
To clip a portion of a page: Highlight a section of the page that you want to clip and then hit your Evernote bookmark.<br><br>
To clip an entire page: Hit your Evernote bookmark.<br><br>
Note: the first time the Evernote web clipper is used, it will ask you to log in.<br><br>
<h3><b>Source:  Lorenzo Caum</b></h3><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
            {:mission_name => 'KeepVid  (413)',:description => '<h3>Intro to Pirating Stuff Off the Internet</h3><br><br> 
Grabbing stuff off the Internet for use in the classroom is a valuable time-saver for you. This tutorial will teach you how to download a video from the net for your own use. Note that there are Copyright issues with doing this, so it may not be a bad idea to link to the video or embed it instead of take it. Sometimes taking it is easier though....;)<br><br>
<a href="http://youtube.com/watch?v=OVa3tWs4Ir8" target="_blank">http://youtube.com/watch?v=OVa3tWs4Ir8</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/OVa3tWs4Ir8?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Introduction to Animoto (414)',:description => 'Animoto for Education<br><br>
<a href="http://youtube.com/watch?v=OVa3tWs4Ir8" target="_blank">http://youtube.com/watch?v=OVa3tWs4Ir8</a><br><br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/rPh1uctZBN4?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 4,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Screencast-o-matic (415)',:description => '<h3>How Do You Guys Make These Cool Tutorials?<h3><br><br>
Well, the answer to that is very simple. It does not involve magic powder, or sacrificing a goat or anything, it involves a website called Screencast-o-matic. I will tell you that this tutorial was probably the hardest one to make because I could not capture the screencast of the screencast software. Instead, I took some pics of my screen and am going to lead you through it. It really is VERY simple.<br><br>
<u>Step 1. Go to Screencast-o-matic.com.</u> Feel free to Google this term and it will get you there. The website looks like this:<br>
<img src="https://sites.google.com/a/bettendorf.k12.ia.us/bhs-tech-pd/home/level-4/mission4-15/mission4.15A.jpg?attredirects=0"/><br><br>
Note the two buttons that say, "Start Recording."  It is as easy as pressing those. This program does not need to install on your computer. It runs a Java script in the background, similar to your clipboard. It just saves the movie.<br><br>
<u>Step 2: Defining your window:</u>  Once you click there, it will run this script and place a dotted box around your screen with some controls at the bottom. It will look like this:<br>
<img src="https://sites.google.com/a/bettendorf.k12.ia.us/bhs-tech-pd/home/level-4/mission4-15/mission4.15B.jpg?attredirects=0"/><br><br> 
Note that everything on your screen is still there in the background, but you now have the ability to refit this box to cover whatever part of your screen you want to capture.<br>
<img src="https://sites.google.com/a/bettendorf.k12.ia.us/bhs-tech-pd/home/level-4/mission4-15/mission4.15C.jpg?attredirects=0"/><br><br> 
At the bottom, there are some tools. First and foremost, I would check your microphone. If you begin talking, a green signal bar will appear after the microphone icon. This will tell you that you mic is working.<br><br>
<u>Step 3: Record your video.</u> When you are ready to begin recording, simply press the red record button and you are set. It will count down from 3 and tell you that you need to press ALT-P to pause the recording.<br><br>
<img src="https://sites.google.com/a/bettendorf.k12.ia.us/bhs-tech-pd/_/rsrc/1333635336619/home/level-4/mission4-15/mission4.15D.jpg"/><br><br>
<u>Step 4: Stop recording and save your movie:</u> Once your video is done, hit ALT-P to pause the video and then the Done button to stop the recording. It will bring you to the following screen:<br>
<img src="https://sites.google.com/a/bettendorf.k12.ia.us/bhs-tech-pd/home/level-4/mission4-15/mission4.15E.jpg?attredirects=0"/><br><br>
You can choose to publish your video to screencast-o-matic, youtube, or on your own hard drive. For these tutorials, I have saved the videos to my machine locally and then uploaded them to Youtube. This gives me a copy of them in case I ever need to re-upload them or whatever. Besides, I like my stuff where I can handle it. The options for saving the file locally are below. I have done these in HD, MP4, which is a Quicktime file that plays most everywhere and uploads to Youtube easily.<br><br>
<img src="https://sites.google.com/a/bettendorf.k12.ia.us/bhs-tech-pd/home/level-4/mission4-15/mission4.15F.jpg?attredirects=0"/><br><br> 
<u>Step 5:</u> Let it render and you are done. Once you hit the save video button it will ask you where you want to save it. Choose a place and hit go. It will take some time to render (a 15 min movie took me 3 min or so to render which is not bad)<br><br>
<img src="https://sites.google.com/a/bettendorf.k12.ia.us/bhs-tech-pd/home/level-4/mission4-15/mission4.15G.jpg?attredirects=0"/><br><br>
When it is done, the movie will be on your machine or wherever you saved it. It is that easy.<br><br>
I trust you all will get good at this so you can help me out on future missions. Good luck!<br><br>',:points => 4,:urllink_type => 'link',:url => ''}
	    ]

mission5_t = [
	    {:mission_name => 'Acceptable Use at BHS --must be done to start all social media chains (500)',:description => '<h3>Social Media Policies for Staff</h3><br>
It all begins with two words COMMON SENSE.<br><br>
Information produced and shared by BCSD employees online is a reflection of the entire District<br>
and is subject to the Districts Acceptable Use Policy. Employees who wish to participate in<br>
social media activity are asked to please read these recommendations carefully before posting<br>
or commenting on blogs or social media websites (Facebook, Myspace, Twitter, Linkedin, etc.).<br>
Full Social Media Policy can be seen <a href="http://www.bettendorf.k12.ia.us/Board/policies/400/401.13R2.pdf" target="_blank">here</a>.<br><br>  
As a district employee, you will be/were asked to sign an acceptable use form.  The policy above is a part of that regulation.<br>
As a district employee, anything you put out on the internet reflects on the district.  Think before you submit!!<br><br>
Some things to remember:<br>
<ol>
<li>You are personally responsible for what you put online.</li>
<li>Protect your privacy.</li>
<li>District social networking sites are under  the same umbrella as District email.</li>
<li>Honesty, Respect and Consideration should be the same online as it would be in person.</li>
<li>Personal and Professional accounts are often blurred together.  Be mindful of that when posting anything online.</li>
<li>Do NOT post any confidential student information</li>
<li>Blogs, Wikis, Podcasts, etc are an extension of your classroom--must be school appropriate.</li>
<li>Check your social media sites and make sure the privacy settings will protect you from unwanted interaction.</li>
<li>You, as an individual have free speech, but you as a professional have an obligation to the District.</li>
<li>Remember Copyright and Fair Use policies include Social Media.</li>
<li>Images, Avatars and Usernames should all be school appropriate and follow Copyright guidelines.</li>
<li>When using Social Bookmarking sites, verify URL addresses of bookmarks and use appropriate tags.</li>
</ol>
<br><br>
If you would like to create a Social Media Account, consult with Matt Degner first as he will be the liaison to the Technology Director.<br><br>',:points => 5,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Uses of and Creating a Twitter Account (501)',:description => '<h3>Beginning Twitter</h3><br>
Uses of Twitter and how to set up an account. <br><br> 
<a href="http://youtube.com/watch?v=Fp9fU9znZyw" target="_blank">http://youtube.com/watch?v=Fp9fU9znZyw</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/Fp9fU9znZyw?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 5,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Searching and gaining followers (502)',:description => '<h3>Finding people and following others on Twitter.</h3><br>
This will help you find people.<br><br> 
<a href="http://youtube.com/watch?v=7MuHxjVcnT8" target="_blank">http://youtube.com/watch?v=7MuHxjVcnT8</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/7MuHxjVcnT8?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 5,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Using Twitter in the Classroom (503)',:description => '<h3>Using Twitter in the Classroom.</h3><br>
Here is a link to 50 ways in which you can use Twitter in the classroom. There are a lot of great ideas here, so keep notes! Remember that there are also some great ways to use twitter for your own personal learning. I know I enjoy finding out what Demi Moore is having for breakfast every morning.... (not really.)<br><br> 
<a href="http://www.teachhub.com/50-ways-use-twitter-classroom" target="_blank">Teachhub.com</a><br><br>',:points => 5,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Advanced Twitter (5.4)',:description => '<h3>Advanced Twitter</h3><br>
Follow these 10 steps to becoming a Twenius!<br><br> 
<a href="http://youtube.com/watch?v=TRLx3U9uiz8" target="_blank">http://youtube.com/watch?v=TRLx3U9uiz8</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/TRLx3U9uiz8?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 5,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Use of and Creating a Facebook account (505)',:description => '<h3>Creating a Facebook identity</h3><br>
For Facebook Noobs!- If you have never used facebook, you may want to view this.<br><br> 
<a href="http://youtube.com/watch?v=OgyT0Pi4XCA" target="_blank">http://youtube.com/watch?v=OgyT0Pi4XCA</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/OgyT0Pi4XCA?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Facebook Novices- If you have an account but want to learn some simple things. <br><br> 
<a href="http://youtube.com/watch?v=kQ22oIp6-lc" target="_blank">http://youtube.com/watch?v=kQ22oIp6-lc</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/kQ22oIp6-lc?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 5,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Friends and Posting (506)',:description => '<h3>Posting and Friends</h3><br>
Here is some more info on setting up and using Facebook. This goes into setting a profile pic, and how to limit what friends can view. You can also have facebook find friends for you in case you have trouble making friends. <br><br> 
<a href="http://youtube.com/watch?v=teiOKZAFV9w" target="_blank">http://youtube.com/watch?v=teiOKZAFV9w</a><br><br><iframe width="640" height="360" src="https://www.youtube.com/embed/teiOKZAFV9w?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>
Some more on commenting or liking things as well as protecting your profile.<br><br> 
<a href="http://youtube.com/watch?v=2EQJGpLDuyw" target="_blank">http://youtube.com/watch?v=2EQJGpLDuyw</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/2EQJGpLDuyw?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 5,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Groups (507)',:description => '<h3>Groups</h3><br>
Setting up groups in Facebook. This could be of great use for a class.<br><br> 
<a href="http://youtube.com/watch?v=M2HN6REIgbg" target="_blank">http://youtube.com/watch?v=M2HN6REIgbg</a><br><br><iframe width="560" height="315" src="https://www.youtube.com/embed/M2HN6REIgbg?feature=player_embedded" frameborder="0" allowfullscreen></iframe><br><br>',:points => 5,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Facebook in the Classroom (508)',:description => '<h3>Using Facebook in the classroom</h3><br>
Not a twitter fan? Google + too new for you? Sometimes you need to go back to the beginning... No we are not talking about MySpace (remember that), I am talking about Facebook, the monster of a social network. You have logged on, made some friends, and grouped up. Now, how can we use this in the classroom?<br><br>
Here is a link with some ideas. <br><br> 
<a href="http://blogs.kqed.org/mindshift/2011/08/50-reasons-to-invite-facebook-into-your-classroom/" target="_blank">Facebook in the classroom</a><br><br>',:points => 5,:urllink_type => 'link',:url => ''}
	    ]

mission6_t = [
	    {:mission_name => 'Choose an app, integrate and report back (Repeatable) (601)',:description => '<h3>Get STARTed</h3><br><br>
The following are only a sampling of free apps--you can take a look at these and/or any paid apps you may find.  Choose an app that you think you can use (from this list or elsewhere) and integrate into  your classroom. Once you have integrated it, fill out the form below and tell us about it.  You can do this mission as many times as you would like with different apps.<br><br>',:points => 6,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Find an app, rate it and share it. (Repeatable) (602)',:description => '<h3>Go Forth and Spread the Word</h3><br><br>
In this mission, we would like you to tell us about an app that you have found that you love. We all love Netflix, but that is not what I am talking about. Is there a content specific app that you use in your class that you would like everyone else to know about. Perhaps it is not an app at all, but a program like Prezi or Evernote that you use all the time.<br><br> 
Once you find the app that you like, please fill out the form below.<br><br>
At the bottom of the webpage are the apps rated by everyone.<br><br>',:points => 6,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Share a strategy you have used to teach for learner differences (603)',:description => '<h2>i Teach for Learner Differences</h2><br><br> 
Fill out the form below to add to the Learner Differences Database<br><br> 
',:points => 6,:urllink_type => 'link',:url => ''}
	    ]

mission7_t = [
	    {:mission_name => 'Designing a START lesson plan (701)',:description => '<h3>Planning a lesson plan using START.</h3><br>
We all have different methods for planning a lesson. We all have different methods to our madness. I know that personally, I use the learning cycle as a heavy backdrop to my lesson planning. I was weaned on the constructivist theories (buzzword) and they work for me. Planning with the characteristics of effective instruction in mind really is no different for me. Take a look at the following article.<br><br>
Here is a link with some ideas. <br><br> 
<a href="http://www.aea8.k12.ia.us/documents/filelibrary/connie_johnson/iowa_core_curriculum/year_2_session_2/Studentcentered_Classrooms_C573FE1C3C484.doc" target="_blank">Read this page</a><br><br>',:points => 7,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Implementing a lesson in your classroom (702) (Repeatable with 703)',:description => '<h3>Implementing the lesson into your classroom</h3><br><br>
This mission is repeatable as you will actually be working through a lesson that implements technology. It is highly recommended that you complete the next mission as well, for they are linked.<br><br> 
To begin this mission, you first need an idea of what kind of lesson you want to teach. Work through the objectives of the lesson as well as what assessments you are going to use to measure the lessons effectiveness. Be sure to include formative as well as summative assessments in your lesson planning. When you get to deciding what kind of technology to use, I would like you to look over the following matrix for the classroom setting.<br><br> 
The matrixs goal is to give you examples of classroom settings with differing levels of technology integration. It is our hope that you begin to see yourself moving towards the right on the table for many exercises. This will facilitate a true transformation in your classroom using the technology. Remember that we are doing this a lesson at a time, so do not feel that you need to alter all of your teaching right away. Try something new, take a chance and see how the students respond.<br><br> 
<a href="https://docs.google.com/a/bettendorf.k12.ia.us/open?id=0B5XYoc1ZGOhgTmFMNngtMkpSV1k" target="_blank"><h3>Table of Instructional Setting Descriptors</h3></a><br><br>
Next, I would like you to look at what the students will be doing in your lesson with technology. The following is a matrix that gives you examples of how the students will be using technology in the lesson. How far right on the table can you move them in the different categories?<br><br>
<a href="https://docs.google.com/a/bettendorf.k12.ia.us/open?id=0B5XYoc1ZGOhgMVc5eWZUTWZOM1U" target="_blank"><h3>Table of Student Descriptors</h3></a><br><br>
Finally, we want to look at what the teacher will be doing. The following matrix gives examples of your job in the lesson. How far right can we move?<br><br>
<a href="https://docs.google.com/a/bettendorf.k12.ia.us/open?id=0B5XYoc1ZGOhgYmtablpnRllXb3c" target="_blank"><h3>Table of Teacher Descriptors</h3></a><br><br>
After you have looked over these different technology integration tables, give the lesson. The next mission will ask you to reflect on what happened to see if these changes helped facilitate student engagement and mastery of the material.<br><br>',:points => 7,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Reflecting on the lesson (703) (Repeatable with 702)',:description => '<h3>Reflecting on the lesson</h3><br><br>
Now that the lesson is over, spend some time reflecting on how things went. The following questions will guide this reflection in terms of technology integration.<br><br>',:points => 7,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Share your experience with a colleague (704)',:description => '<h3>Share with colleagues</h3><br><br>
You have reflected on your lesson and it was a success.  You are excited to share this experience with someone who will be able to benefit from your wisdom.<br>
Pull together your project electronically and send it to Mike Raso.  He will add it to the database of START examples that he has created for the district.<br>   
Fill out the form below to share it with your colleagues in the building.<br><br>',:points => 7,:urllink_type => 'link',:url => ''},
            {:mission_name => 'RTOP (705)',:description => '<h3>RTOP- Reformed Teaching Observation Protocol</h3><br><br> 
The RTOP is a survey used to measure certain aspects of what is considered student-centered novel teaching. It was developed to measure the level of educational reform happening in specifically math and science classrooms. I think you will see, however, that it can be applied to most all classroom experiences involving technology. I am not claiming that this is the only or the best tool for reflecting on your teaching, I am only claiming that it is one we can use.<br><br>
<a href="http://physicsed.buffalostate.edu/AZTEC/RTOP/RTOP_full/about_RTOP.html" target="_blank">Please read more here:</a><br><br>
Here is a link to the assessment in print form. In completing this chain of missions, we give you the option of filling out the evaluation via a google doc, or you can use this form. At no time will the results from this be used by anyone but you.<br><br> 
<a href="https://docs.google.com/a/bettendorf.k12.ia.us/open?id=0B5XYoc1ZGOhgTFdLSEx1Nll6bGc" target="_blank">RTOP</a>- Print form<br><br>',:points => 7,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Videotape a lesson using technology (Repeatable) (706)',:description => '<h3>Videotape</h3><br><br>
I can tell you that I have never learned more about my teaching methods and pacing than what I learned when I watched myself teach. To complete this mission, record yourself teaching for at least 20 minutes. Watch the video. In the next mission, you will be filling out the RTOP assessment of your teaching.<br><br>
Remember that this mission is repeatable for different lessons. The more you can watch yourself teach, the better!<br><br>',:points => 7,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Reflect on the lesson using the RTOP (Repeatable) (707)',:description => '<h3>Self-Reflection using the RTOP</h3><br><br>
The following is a link to a form on google docs for the RTOP.<br><br> 
Open the file and under the file menu, make a copy of the file for your records. This copy will be under your control. Take the form and record your results. Feel free to use this form for any repeated missions reflecting on your teaching to see if you can increase any scores over time. This file will be yours and under your control so the results will be private.<br><br> 
Feel free to use either of the following forms.<br><br>
<a href="https://docs.google.com/a/bettendorf.k12.ia.us/spreadsheet/ccc?key=0ApXYoc1ZGOhgdDBmSGhrT2pUeG9TZjFaS2dvQjBSRGc" target="_blank">RTOP- GOOGLE DOCS</a><br><br>
<a href="https://docs.google.com/a/bettendorf.k12.ia.us/open?id=0B5XYoc1ZGOhgTFdLSEx1Nll6bGc" target="_blank">RTOP- Print Form</a><br><br>',:points => 7,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Present a lower level tutorial at a session during in-service time. (Repeatable) (708)',:description => '<h3>Present at an In-service</h3><br><br>
It is planned to have some help sessions and mission help at in-services. Work it out with an administrator to present a mission at an in-service. Basically, you can choose an existing tutorial that you feel very comfortable with. Secure a room to give your presentation and then get yourself on the agenda for the in-service. Lead people through the tutorial and answer any questions they have about any level 4-6 missions.<br><br>',:points => 7,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Go back to one of the previous tutorials and create a document that explains things. (Repeatable) (709)',:description => '<h3>Creating a printable tutorial.</h3><br><br> 
We realize that some people work better off of a document rather than a video. Unfortunately, the money is just not in this program for us to have the manpower to create documents to accompany each of the previous tutorials. That being said, when manpower is an issue, we turn to crowdsourcing.<br><br> 
To complete this mission, take a tutorial already made in levels 2-6 and create a document that basically tells the same thing. Please use screenshots to show the computer screen at key moments in the working of the app.<br><br> 
An example of what we are looking for is linked at the bottom of this page.<br><br> ',:points => 7,:urllink_type => 'link',:url => '<a href="https://docs.google.com/viewer?a=v&pid=sites&srcid=YmV0dGVuZG9yZi5rMTIuaWEudXN8YmhzLXRlY2gtcGR8Z3g6MWQ5OTkzMjc5NmFkODky" target="_blank">StaffSetup Instructions</a><br><br>'}
	    ]

mission8_t = [
	    {:mission_name => 'Crowdsourcing Steps (801)',:description => 'Mission 1 Plans',:points => 8,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Clearing an idea with the tech committee (repeatable) (802)',:description => '<h3>Creating a Tutorial</h3><br><br>
This mission has you doing some of our work for us. It is vitally important that the missions listed in earlier levels are content-specific for teachers as well as general purpose programs. In order to complete this mission, you will be creating a tutorial for our site. In order to complete this, you need to work with many of the programs that we have taught you before. Note that following these steps is a chain mission, so you need to fill out the surveys for each mission. Missions 8.2 and 8.3 are repeatable together though.<br><br> 
<b>Step 1:</b> Find an app or program you want to add to the list of available tutorials. This could be an app that you found on the app store, or an app that we already have a beginning tutorial for. Perhaps there is another use for Evernote that we overlooked, or an ingenious way to use iMovie in your classroom that you want to show people how to use.<br><br> 
<b>Step 2:</b> Get the Okay from the tech department. It is important that you are not doing a tutorial that someone else is already working on. (Mission 8.2)<br><br>
<b>Step 3:</b> Take a video or make a document.  I tend to use Screencast-o-matic for all my tutorials. If I am working with the IPad, I will place it under a document camera hooked into MovieMaker and then screencast that screen.<br><br> 
<b>Step 4:</b> Review the video. Check it for length. Does it say everything you want it to say? The tech department will be looking this over as well, so try to make it as professional as possible.<br><br> 
<b>Step 5:</b> Come up with some questions you want people to be able to answer about the video. These will be placed in the content survey following the tutorial.<br><br> 
<b>Step 6:</b> Submit them to the tech department for approval. They will place the tutorial on the site and set everything up. (Mission 8.3)<br><br>',:points => 8,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Making the tutorial and publishing it (repeatable) (803)',:description => '<h3>Clear your idea with the tech department.</h3><br><br>
Go and talk with someone in the tech department at the high school to see if anyone else is doing a tutorial on the topic you are exploring.<br><br>',:points => 8,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Group Mission- Get 4-6 tech geeks together and perform a tuning of someones idea with technology. All of you involved will get the mission points. (repeatable) (804)',:description => '<h3>Give your tutorial to the tech department and publish it</h3><br><br>
Now that you are finished with the tutorial, you probably have a document or movie, and a set of questions for the survey. Hand these in to the tech department to be published.<br><br>',:points => 8,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Visit someone elses class for 20 minutes (805)',:description => '<h3>Tuning</h3><br><br>
Tuning is a method of ratifying a lesson by brainstorming and refining the goals and implementation strategies of the premises. It is a process by which a group of people gather around a single idea and try to collaboratively develop a lesson.<br><br> 
In order to complete this mission, you will need 4-6 other "Tech Geeks" who have reached level 8. You may have an idea for a lesson, or perhaps someone has approached you to be part of their tuning group. Everyone in the group will receive points for this mission when it is completed so be sure they all fill out the surveys below.<br><br> 
You will need people identified in roles for this. You will need a presenter, participants, a small group facilitator, and a large group facilitator.<br><br> 
Here is a link with the tuning protocol. Be sure to follow it to the letter, including time limits. These will have to be scheduled ahead of time due to the hour time commitment, and probably best done on early release days.<br><br>
<a href="http://www.duplinschools.net/cms/lib01/NC01001360/Centricity/Domain/22/TuningALesson-DuplinVersion.pdf" target="_blank">Tuning Protocol</a><br><br>',:points => 8,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Use RTOP to assess their use of technology (806)',:description => '<h3>Rate the lesson using the RTOP</h3><br><br>
The following is a link to a form on google docs for the RTOP.<br><br> 
Open the file and under the file menu, make a copy of the file for your records. This copy will be under your control. Take the form and record your results. Feel free to use this form for any repeated missions reflecting on your teaching to see if you can increase any scores over time. This file will be yours and under your control so the results will be private.<br><br> 
Feel free to use either of the following forms.<br><br>
<a href="https://docs.google.com/a/bettendorf.k12.ia.us/spreadsheet/ccc?key=0ApXYoc1ZGOhgdDBmSGhrT2pUeG9TZjFaS2dvQjBSRGc" target="_blank">RTOP- GOOGLE DOCS</a><br><br>
<a href="https://docs.google.com/a/bettendorf.k12.ia.us/open?id=0B5XYoc1ZGOhgTFdLSEx1Nll6bGc" target="_blank">RTOP- Print Form</a>
<br><br>',:points => 8,:urllink_type => 'link',:url => ''},
            {:mission_name => 'Review your scores with the teacher. (807)',:description => '<h3>Review your scores with the teacher.</h3><br><br> 
Have a post conference with the teacher that you watched and discuss the lesson. You can share your RTOP scores if you would like too, or just use them as a springboard for conversation.<br><br>',:points => 8,:urllink_type => 'link',:url => ''}
	    ]

mission9_t = [
	    {:mission_name => 'Publish a paper on the use of technology in a journal(repeatable) (901)',:description => '<h3>Publish</h3><br><br>
Write, submit, and be accepted in a periodical or journal. Wow, that would be something!<br><br>',:points => 9,:urllink_type => 'link',:url => ''},
	    {:mission_name => 'Present your use of technology at a regional conference (repeatable) (902)',:description => '<h3>Bragging Rights</h3><br><br>
You have reached tech greatness. It is time to spread the word of your great deeds. May the bards sing of your greatness through the ages!! Now it is time to toot your own horn. Present a technological topic at a regional conference and thou shalt be rewarded!!!<br><br>',:points => 9,:urllink_type => 'link',:url => ''}
	    ]

level_t.each do |level|
  Level.create!(level)
end


question_t = [
		'What did you learn in this mission?',
		'What did you not quite get?',
		'How smart do you feel now?'
	     ]	

all_levels = Level.all
all_users = User.all

@current_level = Level.find_by_level_name('Level 1')

  mission1_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 2')

  mission2_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 3')

  mission3_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 4')

  mission4_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end


@current_level = Level.find_by_level_name('Level 5')

  mission5_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 6')

  mission6_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 7')

  mission7_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 8')

  mission8_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

@current_level = Level.find_by_level_name('Level 9')

  mission9_t.each do |mission|
    mission[:level_id] = @current_level.id
    @mission = Mission.create!(mission)
    @updatelevel = Level.find(@mission.level_id)
    @updatelevel.points = @updatelevel.points + @mission.points
    @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  end

#all_levels.each do |level|
  #mission_t.each do |mission|
 #   mission[:level_id] = level.id
  #  @mission = Mission.create!(mission)
  #  @updatelevel = Level.find(@mission.level_id)
 #   @updatelevel.points = @updatelevel.points + @mission.points
 #   @updatelevel.update_attributes!(:level_name => @updatelevel.level_name, :points => @updatelevel.points, :activity => @updatelevel.activity)
  #end
#end

all_users.each do |user|
  all_levels.each do |level|
    Mission.where(:level_id => level.id).each do |mission_obj|
      Transactionmission.create!(:complete_flag => "Not Complete",:user_id => user.id,:level_id => level.id, :mission_id => mission_obj.id)
    end	 
  end
end

all_users.each do |user|
  all_levels.each do |level|
    Transactionlevel.create(:complete_flag => "Not Complete",:user_id => user.id,:level_id => level.id)	 
  end
end

Level.all.each do |level|
  Mission.where(:level_id => level.id).each do |mission|
    Submission.create(:mission_id => mission.id, :level_id => level.id )
  end
end

Submission.all.each do |submission|
  question_t.each do |question|
     Question.create(:submission_id => submission.id, :question => question)
  end
end	


//Declare Variables:
VAR iCrashCounter = 10
VAR bHelmet = false
VAR iCrashed =0
VAR bBrakesWork = true
VAR bHandlesWork= true
VAR bHealthy =true
VAR bRearTire=true
VAR bFriend = true
VAR bAnkle=true
VAR bRightPedal= true
VAR bRespect = true
# IMAGE: s1.jpg


The game will be programmed with the element of random chance based on the choices provided. The main narrative is given in paragraphs shown below with the choices for each section indicated by the underlined text. Based on chance and the selection the player makes, they will either crash or not crash at every situation. The number of times they crash will change the ending they get, listed at the bottom.
    
* [Understood]
-> START
===START===

-It’s another beautiful morning on the bright waterfront little town of Isla Vista. It’s the top of the morning on a Monday, thousands of students are getting ready to unlock their bikes and hit the road to get to class on time. Your first class of the day is at 9:30AM at the Interactive Learning Pavilion. It’s currently 9:15, time to join the 12,000 students biking to campus. 

Your starting point is on the 67 block of Trigo Road, the only street in Isla Vista that has a four-way stop cross-intersection on Camino Pescadero and Camino Del Sur. You feel ready to brave the storm of the IV streets.


* [Put your helmet on, safety first]
    ~ iCrashCounter+=1
    ~ bHelmet = true
    ->FIRSTSTOP
*[Put your earbuds in and listen to some tunes]
    ~ iCrashCounter-=1
    ->FIRSTSTOP
*[You’re already late, let’s get going here]
    ->FIRSTSTOP

-> FIRSTSTOP

===FIRSTSTOP===
#CLEAR
# IMAGE: s1.jpg

You approach the first stop sign on Camino Del Sur and breeze through the large white line as there are no cars in sight. 
As you make your way down the 66 block of Trigo Road, you get a text notification from your phone. The hypnotic buzzing makes you want to know all sorts of things like who, what, and why.
*[Take out your phone and respond to the text, riding your bike with no hands]
    ~ iCrashCounter-=1
    ~temp iTempCrash = RANDOM(0,iCrashCounter)

    //~temp myTemporaryValue = mod(iCrashCounter)
    //    {iTempCrash%iCrashCounter}
    //  {myTemporaryValue}
    //displayVariableValue(myTemporaryValue)
    
    {iTempCrash <=0:
    Despite there being little traffic on the 66 block of Trigo Road, you accidentally ride into one of the all too common small ditches on the road due to the poor infrastructure of Isla Vista and end up losing control of your bike and fall over, scraping up the right side of your jacket and tearing apart your handlebar grip.
        ~iCrashed+=1
        {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
        *[Dust yourself off and keep going]
        ->SECONDSTOP
  - else:
    ->SECONDSTOP
 
}

*[Ignore the text, you have time to check it later]
    You decide that your safety and making it to class on time is your top priority as you ignore the text notification and proceed down Trigo Road with both of your hands on the handlebars. 
    ->SECONDSTOP
===SECONDSTOP===
#CLEAR
# IMAGE: s2.jpg
    You are now approaching the second four-way stop cross-intersection on Camino Pescadero. You need to make a left onto Camino Pescadero to make your way to Pardall Road. As you’re near the stop sign, two cars, one coming from the left and one coming from the right, come to a simultaneous stop. What do you do?

    *[Blow through the stop sign, they see me on a bike so they won’t go]
        ~ iCrashCounter-=1
        ~temp iTempCrash = RANDOM(0,iCrashCounter)
        
        {iTempCrash <=1:
        One of the cars goes. It thankfully doesn’t hit you, but you swerve so hard to avoid it you land on your side, scrape yourself up pretty bad, and knock your rear brakes out of place. You’re annoyed that this driver obeyed proper traffic laws.
            ~iCrashed+=1
            {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
            *[Dust yourself off and keep going]
            ->THIRDSTOP
  - else:
    Both drivers shoot you dirty looks, but you don’t care. You’ve got places to be, no time for proper road safety laws to be followed!)
    *[Keep going]
    ->THIRDSTOP
    }
    *[Come to a complete stop since you got there last]
        Both cars go and you safely proceed after them, making a left onto Camino Pescadero)
        **[keep going]
        ->THIRDSTOP
    *[Stick your left arm out to signal, but still blow the stop sign.]
        ~ iCrashCounter-=1
        ~temp iTempCrash2 = RANDOM(0,iCrashCounter)
        
        {iTempCrash2 <=0:
            ~bBrakesWork=false
            ~iCrashed+=1
            {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
            One of the cars goes. It thankfully doesn’t hit you, but you swerve so hard to avoid it you land on your side, scrape yourself up pretty bad, and knock your rear brakes out of place. You’re annoyed that this driver obeyed proper traffic laws.
            *[Dust yourself off and keep going. You weren't going to use those brakes anyways.]
            ->THIRDSTOP
  - else:
        Both drivers shoot you dirty looks, but you don’t care. You’ve got places to be, no time for proper road safety laws to be followed!)
        *[Keep going]
        ->THIRDSTOP
    }
            
            
===THIRDSTOP===
# CLEAR
# IMAGE: s3.jpg
    You continue down Camino Pescadero until you make a right onto Pardall Road, taking you directly to the campus bike path. You approach the four-way stop cross-intersection on Embarcadero Del Mar. You are now behind a group of other bikers, and as you approach the intersection, there is a car on the left side that is inching its way past the large white line to signal to bikers that they are going to proceed since they have been waiting for quite some time.
    *[Continue peddling since other bikers are not showing any signs of stopping]
        ~ iCrashCounter-=1
        ~temp iTempCrash = RANDOM(0,iCrashCounter)
        
        {iTempCrash <=1:
            The car pulls out in front of you, and you run into the back of it. Your handlebars and face are now out of alignment from the impact.
            *[Most would say it's an improvement on you, the same can't be said for your bike though. Keep on moving]
            ->FOURTHSTOP
    -else:
        The driver waits patiently for you to cross, but the look they give you fills you with more guilt than you expected. You carry on anyway)
        *[Fortunately being selfish means guilt rolls right off your back. Lets keep moving]
        ->FOURTHSTOP
    }
    
    *[Stop and let the car proceed since it was showing signs of gaining speed]
        The car is able to safely pull out in front of you as you ride behind it. They give you a wave to thank you, but you just keep thinking about how you definitely could have made it across.
        **[Lets keep rolling]
            ->FOURTHSTOP
    *[Unintentionally play a game of chicken with the car, inching up one after another]
        ~ iCrashCounter-=1
        ~temp iTempCrash2 = RANDOM(0,iCrashCounter)
        
        {iTempCrash <=1:
            ~iCrashed+=1
            {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
            ~bHandlesWork=false
            The car pulls out in front of you, and you run into the back of it. Your handlebars and face are now out of alignment from the impact
            
            {iCrashed>3:
                *[you look awful. well, no time to lick your wounds! You still have to ruin other people's day still!]
                    ->FOURTHSTOP
            -else:
                *[Most would say it's an improvement on you, the same can't be said for your bike though. Keep on moving]
                ->FOURTHSTOP
            }
            
        -else:
            The driver waits patiently for you to cross, but the look they give you fills you with more guilt than you expected. You carry on anyway)
            *[Fortunately being selfish means guilt rolls right off your back. Lets keep moving]
            ->FOURTHSTOP
        }
  
===FOURTHSTOP===
#CLEAR
#image s4.jpg

    You are now approaching your last intersection in Isla Vista before making your way onto the campus bike bath. The traffic light is green, you have the right of way, but unfortunately, most people in Isla Vista don’t know what right of way means. Maybe it would be a good idea to
    *[Slow down and check for anyone crossing through]
        You slow down and see a person on an electric skateboard zipping past you. Good thing you slowed down to check, last thing you’d ever want to do is even come close to touching an electric skateboard user
        **[Lets keep rolling]
            ->FIFTHSTOP
        
    *[Keep going, if someone goes through a red light, they’re the idiot, not me.]
        ~ iCrashCounter-=1
        ~temp iTempCrash = RANDOM(0,iCrashCounter)
        
        {iTempCrash <=2:
            ~iCrashed+=1
            {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
            ~bHealthy=false
            You ram into an electric skateboard user who shot through the red light while in the middle of the car lane. You both go flying onto the asphalt. You’re hurt bad, but you’re most upset that you had to touch an electric skateboard user in any way
            *[You don't have time to feel sorry for yourself, keep on moving!]
            ->FIFTHSTOP
        -else:
            An electric skateboard user goes flying in front of you through the red light as you cross the intersection. Thank goodness, wouldn’t want to have close contact with someone riding one of those)
                *[You don't have time to count your blessings, keep on moving!]
            ->FIFTHSTOP
        }

===FIFTHSTOP===
#CLEAR
#image s5.jpg
    You have now made your way onto the campus bike path. As you head down the majestic Pardall tunnel, you see the first roundabout in the distance. Going towards this thing gives you anxiety, seeing freshmen and seniors alike shoot in and out of the circle without slowing down for even a second. You decide to approach by
    *[Slowing down and yielding to other bikers before proceeding]
        The bikers behind you almost crash into you because they don’t know what the word yield means, but you did the right thing and successfully entered the circle safely despite this.
        **[lets keep going]
            ->SIXTHSTOP   
    *[Turning right into the roundabout at full speed]
        ~ iCrashCounter-=1
        ~temp iTempCrash = RANDOM(0,iCrashCounter)
        
        {iTempCrash <=2:
            ~iCrashed+=1
            {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
            ~bHealthy=false
            ~bRespect=false
            You try to merge into the circle, but people are already doubled up in it. You knock into the bike next to you, lose your balance, and fall onto the grass beside the circle on your shoulder. Your rear tire gets run over and bent slightly out of shape as well
            *[You don't have time to feel sorry for yourself, keep on moving!]
            ->SIXTHSTOP
        -else:
            You cruise into this bad boy Mad Max style with no regard for anyone's safety.
                *[You don't have time to count your blessings, keep on moving!]
            ->SIXTHSTOP
        }

    *[Turning left into the roundabout at full speed]
        ~ iCrashCounter-=1
        ~iCrashed+=1
        {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
        ~bRespect=false
        You didn't see the biker who was obeying the rules and you create a head on collision in the circle. By doing so you force everyone trying to enter and exit the circle to stop. Everyone hates you, and you don’t deserve to ride a bike
        **[Wow, maybe the extra two seconds it costs to turn right at a rotary is worth it.]
            ->SIXTHSTOP

    
    
===SIXTHSTOP===
#CLEAR
#image s6.jpg
    You somehow made it out of the roundabout alive. You see the beacon of hope Storke Tower in the distance, letting you know you’re almost to class. As you approach the tower, you notice a friend of yours not too far ahead of you. This friend of yours just so happens to be in the same class as you. You decide to gain speed and pass bikers ahead of you to be beside your friend. You have the choice to either bike right next to him or right behind him. Mind you that is a Monday morning and there are thousands of students biking over to their first class of the week.
    *[Bike right beside your friend since you believe that the both of you can out-bike the bikers behind you]
        ~ iCrashCounter-=1
        ~temp iTempCrash = RANDOM(0,iCrashCounter)
        
        {iTempCrash <=2:
            ~iCrashed+=1
            {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
            ~bFriend=false
            Your assumption of out-performing bikers behind you has been proven wrong as you get rear-ended from a biker attempting to pass and end up losing control and falling off the bike onto the side of the bike path. Not only have you banged yourself up, you’re also making you and your friend late to class. 
                *[You don't have time to feel sorry for yourself, keep on moving!]
                ->SEVENTHSTOP
        -else:
            it's your lucky day. Guess the nobody wanted to pass or you just didn't even give enough space for them to consider it.
                *[You don't have time to count your blessings, keep on moving!]
            ->SEVENTHSTOP
    }
            
            
    *[Bike right behind and create space for bikers behind you to pass by]
        You allow just enough room for the bikers behind you to make their way past you and your friend as the two of you catch up with each other and talk about the gruesome homework that is due today. Despite your friends back facing you as you interact with one another, you have prevented upsetting bikers behind you for blocking the entire bike lane.
        ->SEVENTHSTOP

===SEVENTHSTOP===
#CLEAR
#image s7.jpg
Just before you pass by Storke Tower, there is a crosswalk right ahead of you which has groups of students on both sides. They patiently wait for oncoming bikers ahead of you to pass by before proceeding to the other side. As you inch your way towards the crosswalk, the pathway clears up just enough for students to quickly get to the other side. With students on the bike path, how should you approach this scenario?

    *[Maintain your speed and show no signs of slowing down since it is a BIKE path and there shouldn’t be pedestrians in your way]
         ~ iCrashCounter-=1
        ~temp iTempCrash = RANDOM(0,iCrashCounter)
        
        {iTempCrash <=1:
            ~iCrashed+=1
            {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
            ~bAnkle=false
            ~bRightPedal=false
            a pedestrian walks through the bike trail at the very last second. You swerve out of the way while braking, but end up hitting a tree on your side. Your ankle is on fire and your right pedal is cracked
                *[Sometimes you gotta break a few eggs. Bikers thank you for keeping them peds in their place. Keep on moving!]
                ->EIGHTHSTOP
        -else:
            All the pedestrians wait for you to go by. Good, it IS a bike path after all
            *[Those knuckle dragging pedestrians best know their place. Lets keep going.]
            ->EIGHTHSTOP
    }
    *[Speed up, these people should be forced to wait for you]
        ~ iCrashCounter-=1
        ~temp iTempCrash2 = RANDOM(0,iCrashCounter)
        
        {iTempCrash2 <=3:
            ~iCrashed+=1
            {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
            
            ~bAnkle=false
            ~bRightPedal=false
            a pedestrian walks through the bike trail at the very last second, not anticipating you to speed up. You swerve out of the way while braking, but end up hitting a tree on your side. Your ankle is on fire and your right pedal is cracked
                *[Sometimes you gotta break a few eggs. Bikers thank you for keeping them peds in their place. Keep on moving!]
                ->EIGHTHSTOP
        -else:
            All the pedestrians wait for you to go by. Good, it IS a bike path after all
            *[Those knuckle dragging pedestrians best know their place. Lets keep going.]
            ->EIGHTHSTOP
    }
===EIGHTHSTOP===
#CLEAR
#image s8.jpg  
Just as you pass by Storke Tower, you approach the second roundabout on the bike path. This roundabout is thankfully a little less crowded, and there’s nobody coming from the opposite direction. There is someone in front of you that is going a little slower.
    *[Turn right full speed into the roundabout]
        No one is coming near you on the roundabout, so there is no need to yield. You enter and exit quickly and safely.)
        **[tight, lets keep moving]
            ->NINETHSTOP
    *[Turn left full speed into the roundabout to pass]
        ~ iCrashCounter-=1
        ~temp iTempCrash = RANDOM(0,iCrashCounter)
        
        {iTempCrash <=1:
            ~iCrashed+=1
            ~bRespect=false
            {iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}
            
            A person unexpectedly enters the circle from North Hall, and you create a head on collision, forcing everyone trying to enter and exit to stop. Everyone hates you, and you don’t deserve to ride a bike.
                *[You never wanted them as friends anways. Why use are firends to a selfish person anyways! Keep on moving!]
                ->NINETHSTOP
        -else:
        A biker enters the lane going the opposite direction, but you thankfully avoid them. It was really worth it to pass the person in front of you, shaving a total of 2 seconds off your commute.
            *[Lucky day I guess! keep biking!]
                ->NINETHSTOP
        }
===NINETHSTOP===
#CLEAR
#image s9.jpg  
You can almost smell the state of the art features of the Interactive Learning Pavilion in the distance. You’re doing good on time, but that also depends on your definition of good. You either need to make a right turn on the bike lane to go around the psych building, or plow through the walkway between the library and the ILP where the bike lane used to be.
*[Bike on the walkway]
    While technically this is unsafe to do, it’s probably more safe for you to weave through pedestrians than get tailgated on Ucen Road by a car. UCSB should really reinstall the bike path here to make commutes safer and more efficient for bikers and pedestrians alike
    **[Almost there]
    ->TENTHSTOP
*[Bike on the walkway]
    While technically this is unsafe to do, it’s probably more safe for you to weave through pedestrians than get tailgated on Ucen Road by a car. UCSB should really reinstall the bike path here to make commutes safer and more efficient for bikers and pedestrians alike
    **[Almost there]
    ->TENTHSTOP
*[Bike on the walkway]
    While technically this is unsafe to do, it’s probably more safe for you to weave through pedestrians than get tailgated on Ucen Road by a car. UCSB should really reinstall the bike path here to make commutes safer and more efficient for bikers and pedestrians alike
    **[Almost there]
    ->TENTHSTOP

===TENTHSTOP===
#CLEAR
#image s10.jpg 
You arrive at the building, but your lock isn’t letting you change the combination. All you can do is close it up and hope nobody checks if the lock is open.
*[Lock it up next to the east psych building where no one ever goes]
    unfortunately because you locked your bike up next to a low traffic area, someone was able to check all the bike locks for any malfunctions without prying eyes and steal your only mode of transportation. You decide to walk home, but at least you don’t look as pathetic as someone on an electric scooter.
    **[well, lets get inside!]
        ->RUNDOWN
*[Lock it up next to the ILP where there’s lots of foot traffic]
    Good thing you locked your bike up in a high traffic area where nobody is going to check for malfunctioning locks and draw suspicion. You pick up a new lock up at the AS bike shop and ride home as carefully as you always do.
    **[well, lets get inside!]
        ->RUNDOWN

===RUNDOWN===
#CLEAR
#image s11.jpg
{iCrashed<=0: You snap your lock together around your fully functioning bike a minute before class starts and walk in the door right as 9:30 hits. You get full attendance points and even learn something mildly interesting today. You feel great!}
{iCrashed==1: You quickly throw the lock around your bike and rush into class at 9:35. You get full attendance points, but you’re bummed out about your bike getting damaged.}
{iCrashed==2: You put your lock around your bike as fast as possible and sprint into your classroom at 9:45. Your professor only grants you half attendance points, your body feels like it’s about to fall apart, and your bike is quite literally falling apart. But hey, you made it to class at least.}
{iCrashed==3: You’re so beat up you can’t ride a bike anymore, and your bike couldn’t be pedaled another inch in any universe. You’re hauled off in a stretcher to the hospital, and your bike is hauled in an AS member’s arms to go to the bike shop. You have to miss class, and you probably should have been more careful.->DONE}

-> DONE



















































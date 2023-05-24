
//Declare Variables:
VAR iCrashCounter = 5
VAR bHelmet = false
VAR iCrashed =0
VAR bBrakesWork = true


//# IMAGE: s1.jpg

//doesn't work
//LIST number_deck = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
/*
=== function draw_number_from_deck ===
~ shuffle(number_deck)
~ return top(number_deck)
*/


The game will be programmed with the element of random chance based on the choices provided. The main narrative is given in paragraphs shown below with the choices for each section indicated by the underlined text. Based on chance and the selection the player makes, they will either crash or not crash at every situation. The number of times they crash will change the ending they get, listed at the bottom.
    
* [Understood]
-> START
/*===function mod(val)===
   ~  temp myTemporaryValue = val%iCrashCounter
   ~ return myTemporaryValue
===function displayVariableValue(value) ===
    ~return value 
*/
/*===function random===
{shuffle: 
    - ~ return 0
 - ~ return 1
 - ~ return 2
 - ~ return 3
 - ~ return 4
 - ~ return 5
 - ~ return 6
 - ~ return 7
 - ~ return 8
 - ~ return 9
}
*/

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
#CLEAR
-> FIRSTSTOP

===FIRSTSTOP===


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
        *[Dust yourself off and keep going]
        ->SECONDSTOP
  - else:
    ->SECONDSTOP
 
}

*[Ignore the text, you have time to check it later]
    You decide that your safety and making it to class on time is your top priority as you ignore the text notification and proceed down Trigo Road with both of your hands on the handlebars. 
    ->SECONDSTOP
===SECONDSTOP===
    You are now approaching the second four-way stop cross-intersection on Camino Pescadero. You need to make a left onto Camino Pescadero to make your way to Pardall Road. As you’re near the stop sign, two cars, one coming from the left and one coming from the right, come to a simultaneous stop. What do you do?

    *[Blow through the stop sign, they see me on a bike so they won’t go]
        ~ iCrashCounter-=1
        ~temp iTempCrash = RANDOM(0,iCrashCounter)
        
        {iTempCrash <=1:
        One of the cars goes. It thankfully doesn’t hit you, but you swerve so hard to avoid it you land on your side, scrape yourself up pretty bad, and knock your rear brakes out of place. You’re annoyed that this driver obeyed proper traffic laws.
            ~iCrashed+=1
            *[Dust yourself off and keep going]
            ->THIRDSTOP
  - else:
    Both drivers shoot you dirty looks, but you don’t care. You’ve got places to be, no time for proper road safety laws to be followed!)
    *[Keep going]
    ->THIRDSTOP
    }
    *[Come to a complete stop since you got there last]
        Both cars go and you safely proceed after them, making a left onto Camino Pescadero)
    *[Stick your left arm out to signal, but still blow the stop sign.]
        ~ iCrashCounter-=1
        ~temp iTempCrash2 = RANDOM(0,iCrashCounter)
        
        {iTempCrash2 <=0:
            ~bBrakesWork=false
            ~iCrashed+=1
            One of the cars goes. It thankfully doesn’t hit you, but you swerve so hard to avoid it you land on your side, scrape yourself up pretty bad, and knock your rear brakes out of place. You’re annoyed that this driver obeyed proper traffic laws.
            *[Dust yourself off and keep going. You weren't going to use those brakes anyways.]
            ->THIRDSTOP
  - else:
    Both drivers shoot you dirty looks, but you don’t care. You’ve got places to be, no time for proper road safety laws to be followed!)
    *[Keep going]
    ->THIRDSTOP
    }
            
            
===THIRDSTOP===
    You continue down Camino Pescadero until you make a right onto Pardall Road, taking you directly to the campus bike path. You approach the four-way stop cross-intersection on Embarcadero Del Mar. You are now behind a group of other bikers, and as you approach the intersection, there is a car on the left side that is inching its way past the large white line to signal to bikers that they are going to proceed since they have been waiting for quite some time.
    *[Continue peddling since other bikers are not showing any signs of stopping]
        ~ iCrashCounter-=1
        ~temp iTempCrash = RANDOM(0,iCrashCounter)
        
        {iTempCrash <=1:
            The car pulls out in front of you, and you run into the back of it. Your handlebars and face are now out of alignment from the impact.
            *[]
            ->FOURTHSTOP
    -else:
    The driver waits patiently for you to cross, but the look they give you fills you with more guilt than you expected. You carry on anyway)
    *[]
    ->FOURTHSTOP
    *[]
    *[]
  
===FOURTHSTOP===

    -> DONE



















































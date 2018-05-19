//
//  StratViewController.swift
//  RainbowSixApp
//
//  Created by Elliott Jungers on 5/18/18.
//  Copyright © 2018 DCEJ. All rights reserved.
//

import UIKit

class StratViewController: UIViewController {

    @IBOutlet weak var stratLabel: UILabel!
    
    @IBOutlet weak var titleStratLabel: UILabel!
    
    @IBAction func attackStratButton(_ sender: Any)
    
    
    {
        //Set Attack Strat Array
        let attackArray = [
            // Available Text Options
            "All drones must attempt to enter the objective room. Those whose drones fail cannot use their guns until the last minute of the game",
            
            "It is everyone's objective to destroy all cameras before any other objective",
            
            "Everyone must go through the same doorways, in the same order. No windows, hatches, or ladders. You cannot go through the same doorway twice",
            
            "All take an FBI recruit with the automatic shotgun and rush like hell.",
            
            "Use no breaching charges",
            
            "(GIGN) Recruits using revolvers and shields",
            
            "All pick American recruits with a shield, the 5.7, smoke grenades and stun grenades. Open a window (or door) and throw all the nades. Breach.",
            
            "No use of drones",
            
            "All take frag grenade, open up the objective room and lob the frags. Bonus points if you spam an LMG in there as well.",
            
            "Must enter and exit any buildings through windows",
            
            "All pick a GIGN recruit with ballistic shield, revolver, breach charges and frag grenade. As soon as you spawn, press 1 to get your shield in your back and wield your revolver like a true hero.",
            
            "One squadmate goes Jackal, the rest recruit with shotgun. The recruits follow Jackal around as he scans for footprints. Recruits rush to hunt down the scanned player once found.",
            
            "Must use only FBI or SEAL operators and enter through the main entrance",
            
            "All pick Spetznaz recruits with LMG and go full auto on the breachable walls, floors, and doors.",
            
            "No one enters the objective room until all gadgets have been destroyed",
            
            "All pick GIGN recruits with 417, revolver, breach charges and frag grenades. Deal out the damage.",
            
            "ONE Sharpshooter w/DMR (Glaz, Buck, Blackbeard, Dokkaebi or Twitch) w/ 4 shields",
            
            "It is everyone's objective to destroy all cameras before any other objective",
            
            "All players must use the same doorways / entry point",
            
            "All GSG-9 recruit with shotgun and run like hell",
            
            "Defuser carrier is the only one who can shoot",
            
            "All choose shield carrying operators and move as a group toward the objective",
            
            "Fill the objective with smoke, enter, and lie down",
            
            "Only one person can enter the objective room at a time",
            
            "All place breach charges on the ceiling of the objective room if it's breachable (like in chalet) and detonate the five charges at once. Then, shoot from the room above.",
            
            "Objective must be spammed with flash bangs, smoke and shields in one wave",
    
            "When entering a room, you must enter backwards.",
            
            "You have to wait the whole time until one minute and rush in. While waiting you may use your drones. Fast operators recommended.",
            
            "Have the worst teammate be the VIP, they must stay alive the entire round as a one health 3 speed character. However they must also get at least one kill",
            
            "All pick Spetsnaz recruits with LMG's and charge the objective room, once in you must hip fire like crazy until everyone is eliminated",
            
            "The worst player gets to pick any operator other than a shield and the other 4 must surround the worst player",
            
            "One player picks Glaz and the rest pick a weapon with zoom/zoom sights. You must only walk while ADS.",
            
            "Breach one bombsite, then go and plant at the other.",
            
            "Buddy up in teams of two. One character has a shield, puts it on their back and then crouches. They have to maintain eye line with the other characters crotch. The pair must stay this way the whole round. If your partner dies you must commit suicide. 5th person, odd man out, can only pilot a drone unless last alive. Best to be Twitch.",
            
            "One person drones in. The rest form teams of 2 and move in back to back. Don't leave a dead companion.",
            
            "Shields only and you must stand all next to each other.",
            
            "Choose an operator with breaching charges. Everyone plants their charge at separate entrances of the objective room. The team breaches and enters all at the same time.",
            
            "You aren't allowed to fire any bullets until there are only 45 seconds left in the match (You may use gadgets/knife)",
            
            "Everyone uses shield operators. Breach the windows and doors, and just stand there trying to kill the defenders.",
            
            "Pick 1 player on the other team and kill him. You cannot kill any other player until that player is dead.",
            
            "Using FBI Swat shields, line up side by side and push from the opposite end of the building from the objective.",
            
            "All pick recruits with shields, once the building has been entered the team must go prone and crawl around in a line.",
            
            "Kill your bottom fragger",
            
            "Montagne is the mother duck. All others are shield operators. shield operators must follow Montagne in a single file line like ducklings.",
            
            "Everyone picks shields and follows a leader in a line.",
            
            "Everyone picks a recruit with riot shield. The person with the defuse kit is only allowed to use their pistol, while the rest of the team protects them with their shields. The VIP is not allowed to equip their shield and the bodyguards are not allowed to shoot.",
            
            "Only one person can enter the building at once. When that person dies another person may enter the building.",
            
            "All players pick the GSG9 recruit and equip the M870 shotgun. Rush into the building and head to the objective. No one stops for anything. Face the enemy head on and rush forward constantly.",
            
            "Each squad member is assigned an enemy to kill. You are only allowed to kill your assigned target.",
            
            "Everyone equips flash-bangs. When an enemy is spotted flash them and charge to melee.",
            
            "The entire team can only move when a teammate is firing their weapon.",
            
            "Smoke the room and then throw granades in. RUSH.",
            
            "Equip yourself with explosives and breach charges. Then destroy as many walls at once to enter the target room.",
            
            "All recruit",
            
            "May only move while crouching",
            
            "Shotgun only",
            
            "Equip an LMG, you can only hipfire.",
            
            "Pick all girl operators",
            
            "If a teammate goes down, kill them.",
            
            "Stop at nothing until bombsite has been reached.",
            
            "Cannot move while shooting",
            
            "All guns must be put to semi-auto",
            
            "AFK Fake - Must remain motionless through drone phase.",
            
            "Everybody pick recruit shield.",
            
            "Highest scoring player leads the team",
            
            "Smoke and flash objective then rush in",
            
            "highest scoring player stays in spawn saying 'red light' to stop 'green light' to go. If team is dead then he gets told vice versa",
            
            "Recruit SAS shotgun only",
            
            "Russian recruits with LMG. All stand outside the entrance to the objective room. One person breaches and everyone runs in holding the fire button. Do not stop firing.",
            
            "GSG 9 shotgun rush"
            ]
        // Randomly selecting an Attack Strat Option, then printing to console and Label
        let randomIndex = Int(arc4random_uniform(UInt32(attackArray.count)))
        print(attackArray[randomIndex])
        
        let stratMessage = attackArray[randomIndex]
        stratLabel.text = stratMessage
        
        titleStratLabel.text = String()

        
        
    }
    @IBOutlet weak var attackstratlabel: UILabel!
    
    @IBAction func defenseStratButton(_ sender: Any) {
        
        let defenseArray = [
            
            "No reinforced walls / ceilings",
            
            "All pick SAS recruits with FMG, SMG & nitro. Stay as far away as possible from the objective room. As soon as the attackers plant the diffuser, get in the secure area, or grab the hostage, rush them.",
            
            "Whoever picks Doc commands the rest of the squad - All GIGN recruits",
            
            "Constantly teabag throughout round",
            
            "One choose Bandit, the rest GSG-9 recruits with barbed wire. Electrify the floor",
            
            "You can't place barricades on the objective room walls, only the surrounding ones",
            
            "Only the turret and knives may be used",
            
            "All pick GSG9 recruits with the carbine, barb wire and nitro cells. Cover the entire floor with wires.",
            
            "It is everyone's objective to destroy all drones before beginning any preparation",
            
            "Tachanka runs out the nearest exit and leaves a turret gift for your adversaries",
            
            "Rook runs out the nearest exit and leaves an armor gift for your adversaries",
            
            "All lay down when round starts",
            
            "No use of cameras",
            
            "All take Spetsnaz recruits with an automatic shotgun and open all the windows, trap doors and doors you can find during the preparation phase.",
            
            "All take FBI recruits with the auto-shotgun. Put C4 in each corner of the objective room, hide on the floor (but not in the objective room), as soon as they start securing it, detonate the C4 and rush them.",
            
            "Everybody stays in objective rooms",
            
            "When the enemy spawn you're stuck on the spot you stand/crouch, you can only move when crawling.",
            
            "All operators run outside for the first 20 seconds of the game. You cannot return to the building until 20 seconds is up.",
            
            "All pick FBI recruits with an UMP45, an M45, nitros and go to war.",
            
            "Must get a kill before picking up armor",
            
            "Put 1 to 5 shields down in a straight line in objective and you can't go pass them.",
            
            "Tachanka sets up. No matter what somebody must always man the gun.",
            
            "During the preparation phase, your whole team must find a door that goes outside. You must stay there the entire round, and kill anyone that goes there. You can only leave if you run out of bullets.",
            
            "Pick Tachanka and Kapkan, the rest are Spetznaz recruits. You are tasked with protecting the Motherland with King Tachanka. If Tachanka is killed or his LMG destroyed you must surrender the objective in disgrace and humiliation or commit suicide.",
            
            "Everyone must take a deployable shield. Plant them anywhere you want in the room, but it's funnier if you all form a big circle in the room. You can move around your shield or move from shield to shield if they're close by, but you cannot move away from a shield.",
            
            "Everyone roams as a group.",
            
            "Search yourself a nice spot in the warmup phase, you have to stay at this spot +- 1sqm after the warmup phase. You are not allowed to leave it.",
            
            "Bottom Fragger is the only one allowed in the objective room once prep time has ended.",
            
            "Do nothing else than opening windows till the preparation phase is over!",
            
            "Fortify the wrong objective room.",
            
            "Once the preparation phase ends, all defenders must go prone and remain prone for the rest of the round.",
            
            "The top scoring player on your team must commit suicide.",
            
            "Castle fortifies doors. Kapkan traps the weaker barricades. Mute does his thing. Rook armours up team and Tachanka sets up.",
            
            "One person plays Rook and one (or more) person plays a character with a nitro cell. Rook puts down armour and has a friendly place a nitro cell on the armour. Wait until an enemy grabs the armour then detonate the nitro cell.",
            
            "You are only allowed to take 3-speed 1-armor operators or recruits. Place your reinforcements and gadgets. As soon as the round starts you are not allowed to stop sprinting.",
            
            "Everyone must find an object to stand on and only shoot from that. If you touch the floor when the round has started you must kill yourself since the floor is lava.",
            
            "Must go outside and stay outside once the round starts, unless objective in immediate danger.",
            
            "All recruit",
            
            "May only move while crouching",
            
            "Shotgun only",
            
            "If a teammate goes down, kill them.",
            
            "Cannot move while shooting.",
            
            "All guns must be put to semi-auto.",
            
            "Three armor operators only",
            
            "Blow open all the walls to objective",
            
            "Pick all trap operators",
            
            "Not allowed to leave your spawn room",
            
            "Place barb wire in objective room then leave, do not re-enter unless objective is in immediate danger.",
            
            "Everybody follows the highest scoring player to roam around",
            
            "Lowest scoring player has to run outside to the edge of map and back to fish out the enemy until death",
            
            "If you have a hallway near your objective, place deployable shields in a row",
            
            "Recruit SAS shotgun only.",
            
            "Do not stop running once round begins.",
            ]
        
        let randomIndex = Int(arc4random_uniform(UInt32(defenseArray.count)))
        print(defenseArray[randomIndex])
        
        let stratMessage = defenseArray[randomIndex]
        stratLabel.text = stratMessage
        
        stratLabel.numberOfLines = 0
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // attack strat label border

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}




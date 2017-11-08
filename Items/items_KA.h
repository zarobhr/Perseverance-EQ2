/*  
    EQ2Emulator:  Everquest II Server Emulator
    Copyright (C) 2007  EQ2EMulator Development Team (http://www.eq2emulator.net)

    This file is part of EQ2Emulator.

    EQ2Emulator is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    EQ2Emulator is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with EQ2Emulator.  If not, see <http://www.gnu.org/licenses/>.
*/

//Item Stat defines for KA Client

//Stat type 6 (blue stats)
#define KA_ITEM_STAT_HPREGEN				600
#define KA_ITEM_STAT_MANAREGEN				601 //Power Regneration
#define KA_ITEM_STAT_HPREGENPPT				602 //Out-of-Combat Health Regeneration
#define KA_ITEM_STAT_MPREGENPPT				603 //Our-of Combat Power Regeneration
#define KA_ITEM_STAT_COMBATHPREGENPPT		604 //In-COmbat Health Regeneration
#define KA_ITEM_STAT_COMBATMPREGENPPT		605 //In-Combat Power Regeneration
#define KA_ITEM_STAT_MAXHP					606 //Max Health
#define KA_ITEM_STAT_MAXHPPERC				607 //Max Health (Percent)
#define KA_ITEM_STAT_MAXHPPERCFINAL			608 //Max Health (Percent Final)
#define KA_ITEM_STAT_SPEED					609 //Out of combat Run Speed
#define KA_ITEM_STAT_SLOW					610 //Slow
#define KA_ITEM_STAT_MOUNTSPEED				611 //Ground Mount Speed
#define KA_ITEM_STAT_MOUNTAIRSPEED			612 //Mount air SPeed
#define KA_ITEM_STAT_LEAPSPEED				613 //Leap Climb Rate
#define KA_ITEM_STAT_LEAPTIME				614 //Leap Time
#define KA_ITEM_STAT_GLIDEEFFICIENCY		615 //Glide Efficiency
#define KA_ITEM_STAT_OFFENSIVESPEED			616 //In COmbat RUn SPeed
#define KA_ITEM_STAT_ATTACKSPEED			617 //Attack Speed
#define KA_ITEM_STAT_MAXMANA				618 //Max Power
#define KA_ITEM_STAT_MAXMANAPERC			619 //Max Power (percent)
#define KA_ITEM_STAT_MAXATTPERC				620 //AE Auto Attack Avoid Chance
#define KA_ITEM_STAT_BLURVISION				621 //All Atributes
#define KA_ITEM_STAT_MAGICLEVELIMMUNITY		622 //Blurs Vision
#define KA_ITEM_STAT_HATEGAINMOD			623 //Magic Level Immunity
#define KA_ITEM_STAT_COMBATEXPMOD			624 //Hate Gain
												//Combat XP Gain 625
#define KA_ITEM_STAT_TRADESKILLEXPMOD		626 //Tradeskill XP Gain
#define KA_ITEM_STAT_ACHIEVEMENTEXPMOD		627 //AA XP Gain
												//Status Earned 628
#define KA_ITEM_STAT_SIZEMOD				629 //Size
												//AE AUtoAttack Avoid Chance2 630
#define KA_ITEM_STAT_DPS					631 //Damage Per Second
#define KA_ITEM_STAT_STEALTH				632	//Stealth
#define KA_ITEM_STAT_INVIS					633 //Invisibility
#define KA_ITEM_STAT_SEESTEALTH				634 //See Stealth
#define KA_ITEM_STAT_SEEINVIS				635 //See Invisible
#define KA_ITEM_STAT_EFFECTIVELEVELMOD		636 //Effective Level
#define KA_ITEM_STAT_RIPOSTECHANCE			637 //Extra Reposte Chance
#define KA_ITEM_STAT_PARRYCHANCE			638 //Extra Parry Chance
#define KA_ITEM_STAT_DODGECHANCE			639 //Extra Dodge Chance
												//AE AUtoAttack Avoid Chance3 640
#define KA_ITEM_STAT_AEAUTOATTACKCHANCE		641 //AE Auto Attack Chance
#define KA_ITEM_STAT_MULTIATTACKCHANCE		642 //Multi Attack Chance
												//AE AUtoAttack Avoid Chance4 643
												//AE AUtoAttack Avoid Chance5 644
												//AE AUtoAttack Avoid Chance6 645
#define KA_ITEM_STAT_SPELLMULTIATTACKCHANCE 646 //Double Cast Chance
												//Ability Double Cast Chance 647
#define KA_ITEM_STAT_FLURRY					648 //Flurry Chance
												//AE AUtoAttack Avoid Chance7 649
												//AE AUtoAttack Avoid Chance8 650
#define KA_ITEM_STAT_MELEEDAMAGEMULTIPLIER	651 //Melee Damage Mutiplier  
#define KA_ITEM_STAT_EXTRAHARVESTCHANCE		652 //Bountiful Harvest 
#define KA_ITEM_STAT_EXTRASHIELDBLOCKCHANCE 653 //Block Chance
#define KA_ITEM_STAT_ITEMHPREGENPPT	  		654 //In-combat Health Regeneration(item)
#define KA_ITEM_STAT_ITEMPPREGENPPT			655 //In-combat Power Regeneration(item)
#define KA_ITEM_STAT_MELEECRITCHANCE		656 //Crit Chance
#define KA_ITEM_STAT_CRITAVOIDANCE			657 //Crit Avoidance
#define KA_ITEM_STAT_BENEFICIALCRITCHANCE	658 //Beneficial Crit Chance
												//AE AUtoAttack Avoid Chance9 659
												//AE AUtoAttack Avoid Chance10 660
#define KA_ITEM_STAT_CRITBONUS				661 Crit Bonus  
#define KA_ITEM_STAT_POTENCY				662 // Potency //BASEMODIFIER
#define KA_ITEM_STAT_UNCONSCIOUSHPMOD		663 // Unconcious Health
#define KA_ITEM_STAT_ABILITYREUSESPEED		664 //Ability Reuse Speed   SPELLTIMEREUSEPCT	
#define KA_ITEM_STAT_ABILITYRECOVERYSPEED	665 //Ability Recovery Speed    SPELLTIMERECOVERYPCT	
#define KA_ITEM_STAT_ABILITYCASTINGSPEED	666 //Ability Casting Speed     SPELLTIMECASTPCT
#define KA_ITEM_STAT_SPELLREUSESPEED		667 //SpellReuse Speed    SPELLTIMEREUSESPELLONLY
#define KA_ITEM_STAT_MELEEWEAPONRANGE		668 //Melee Weapon Range Increase
#define KA_ITEM_STAT_RANGEDWEAPONRANGE		669 //Ranged Weapon Range Increase
#define KA_ITEM_STAT_FALLINGDAMAGEREDUCTION 670 //Falling Damage Reduction
#define KA_ITEM_STAT_RIPOSTEDAMAGE			671 //Riposte Damage
#define KA_ITEM_STAT_MINIMUMDEFLECTIONCHANCE 672 //Minimum Block Chance
#define KA_ITEM_STAT_MOVEMENTWEAVE			673  //Movement Weave
#define KA_ITEM_STAT_COMBATHPREGEN			674 //Combat HP Regen
#define KA_ITEM_STAT_COMBATMANAREGEN		675 //Combat Mana Regen
#define KA_ITEM_STAT_CONTESTSPEEDBOOST		676 //Contest Only Speeb
#define KA_ITEM_STAT_TRACKINGAVOIDANCE		677 //Tracking Avoidance
#define KA_ITEM_STAT_STEALTHINVISSPEEDMOD	678 //Movement Bonus while Stealthed or Invisible
#define KA_ITEM_STAT_LOOT_COIN				679 //Loot COin
#define KA_ITEM_STAT_ARMORMITIGATIONINCREASE 680 //Mitigation Increase
#define KA_ITEM_STAT_AMMOCONSERVATION		681 //Ammo COnservation
#define KA_ITEM_STAT_STRIKETHROUGH			682 //Strikethrough
#define KA_ITEM_STAT_STATUSBONUS			683 //Statsus Bonus
#define KA_ITEM_STAT_ACCURACY				684 //Accuracy
#define KA_ITEM_STAT_COUNTERSTRIKE			685 //Counterstrike
#define KA_ITEM_STAT_SHIELDBASH				 // dropped 686 AAAAC
#define KA_ITEM_STAT_WEAPONDAMAGEBONUS		687 //Weapn Damage Bonus
#define KA_ITEM_STAT_SPELLWEAPONDAMAGEBONUS  //dropped
#define KA_ITEM_STAT_WEAPONDAMAGEBONUSMELEEONLY 688 //Weapon Damage Bonus Melee Only
#define KA_ITEM_STAT_ADDITIONALRIPOSTECHANCE	//dropped
#define KA_ITEM_STAT_PVPTOUGHNESS				690 //Toughness
#define KA_ITEM_STAT_PVPLETHALITY				691 //Leathality
#define KA_ITEM_STAT_STAMINABONUS				692 //Stamina Bonus
#define KA_ITEM_STAT_WISDOMMITBONUS				693 //Wisdom Mitigation Bonus
#define KA_ITEM_STAT_HEALRECEIVE				694 //Applied Heals
#define KA_ITEM_STAT_HEALRECEIVEPERC			695 //Applied Heals
#define KA_ITEM_STAT_PVPCRITICALMITIGATION		696 //PvP Critical Mitigation
#define KA_ITEM_STAT_BASEAVOIDANCEBONUS			697 //Base Avoidance Bonus
#define KA_ITEM_STAT_INCOMBATSAVAGERYREGEN		698 //In-Combat Savagery Regen
#define KA_ITEM_STAT_OUTOFCOMBATSAVAGERYREGEN	699 //Out of COmbat Savagery Regen
#define KA_ITEM_STAT_SAVAGERYREGEN				6100 //Savagery Regen
#define KA_ITEM_STAT_SAVAGERYGAINMOD			6101 //Savagey Main Mod
//#define KA_ITEM_STAT_MAXSAVAGERYLEVEL			692
//#define KA_ITEM_STAT_INCOMBATDISSONANCEREGEN	693
//#define KA_ITEM_STAT_OUTOFCOMBATDISSONANCEREGEN 694
//#define KA_ITEM_STAT_DISSONANCEREGEN			695
//#define KA_ITEM_STAT_DISSONANCEGAINMOD			696
//#define KA_ITEM_STAT_AEAUTOATTACKAVOID			697
//End of stat type 6 (blue stats)

#define KA_ITEM_STAT_SPELL_DAMAGE				700
#define KA_ITEM_STAT_HEAL_AMOUNT				701
#define KA_ITEM_STAT_SPELL_AND_HEAL				702
#define KA_ITEM_STAT_COMBAT_ART_DAMAGE			703
#define KA_ITEM_STAT_SPELL_AND_COMBAT_ART_DAMAGE704
#define KA_ITEM_STAT_TAUNT_AMOUNT				705
#define KA_ITEM_STAT_TAUNT_AND_COMBAT_ART_DAMAGE706
#define KA_ITEM_STAT_ABILITY_MODIFIER			707


//Item stat type 5 (health,power,savagery,dissonance,concentration)
#define KA_ITEM_STAT_HEALTH				500
#define KA_ITEM_STAT_POWER					501
#define KA_ITEM_STAT_CONCENTRATION			502
#define KA_ITEM_STAT_SAVAGERY			    503
#define KA_ITEM_STAT_DISSONANCE			504
//End of stat type 5

//Item stat type 3 (damage mods)
#define KA_ITEM_STAT_DMG_SLASH				300
#define KA_ITEM_STAT_DMG_CRUSH				301
#define KA_ITEM_STAT_DMG_PIERCE			302
#define KA_ITEM_STAT_DMG_HEAT				303
#define KA_ITEM_STAT_DMG_COLD 				304
#define KA_ITEM_STAT_DMG_MAGIC				305
#define KA_ITEM_STAT_DMG_MENTAL			306
#define KA_ITEM_STAT_DMG_DIVINE			307
#define KA_ITEM_STAT_DMG_DISEASE			308
#define KA_ITEM_STAT_DMG_POISON			309
#define KA_ITEM_STAT_DMG_DROWNING			310
#define KA_ITEM_STAT_DMG_FALLING			311
#define KA_ITEM_STAT_DMG_PAIN				312
#define KA_ITEM_STAT_DMG_MELEE				313
//End of item stat 3

#define KA_ITEM_STAT_DEFLECTIONCHANCE 		400 //just so no build error

// Other stats not listed above (not sent from the server), never send these to the client
// using type 8 as it is not used by the client as far as we know
#define KA_ITEM_STAT_DURABILITY_MOD		800
#define KA_ITEM_STAT_DURABILITY_ADD		801
#define KA_ITEM_STAT_PROGRESS_ADD			802
#define KA_ITEM_STAT_PROGRESS_MOD			803
#define KA_ITEM_STAT_SUCCESS_MOD			804
#define KA_ITEM_STAT_CRIT_SUCCESS_MOD		805
#define KA_ITEM_STAT_EX_DURABILITY_MOD		806
#define KA_ITEM_STAT_EX_DURABILITY_ADD		807
#define KA_ITEM_STAT_EX_PROGRESS_MOD		808
#define KA_ITEM_STAT_EX_PROGRESS_ADD		809
#define KA_ITEM_STAT_EX_SUCCESS_MOD		810
#define KA_ITEM_STAT_EX_CRIT_SUCCESS_MOD	811
#define KA_ITEM_STAT_EX_CRIT_FAILURE_MOD	812
#define KA_ITEM_STAT_RARE_HARVEST_CHANCE	813
#define KA_ITEM_STAT_MAX_CRAFTING			814
#define KA_ITEM_STAT_COMPONENT_REFUND		815
#define KA_ITEM_STAT_BOUNTIFUL_HARVEST		816

#define KA_ITEM_STAT_STR					0
#define KA_ITEM_STAT_STA					1
#define KA_ITEM_STAT_AGI					2
#define KA_ITEM_STAT_WIS					3
#define KA_ITEM_STAT_INT					4



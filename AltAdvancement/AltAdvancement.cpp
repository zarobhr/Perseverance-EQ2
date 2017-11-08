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

#include "AltAdvancement.h"
#include "../../common/ConfigReader.h"
#include "../../common/Log.h"
#include "../Spells.h"
#include "../classes.h"
#include "../Rules/Rules.h"
#include <map>

extern ConfigReader configReader;
extern MasterSpellList master_spell_list;
extern Classes classes;
extern RuleManager rule_manager;
extern MasterAANodeList master_tree_nodes;

MasterAAList::MasterAAList()
{
	MMasterAAList.SetName("MasterAAList::AAList");
}

MasterAAList::~MasterAAList()
{
	DestroyAltAdvancements();
}

void MasterAAList::AddAltAdvancement(AltAdvanceData* data) {
	MMasterAAList.writelock(__FUNCTION__, __LINE__);
	AAList.push_back(data);
	MMasterAAList.releasewritelock(__FUNCTION__, __LINE__);
}

int MasterAAList::Size() {
	return AAList.size();
}

// Jabantiz: Probably a better way to do this but can't think of it right now
AltAdvanceData* MasterAAList::GetAltAdvancement(int32 spellID) {
	vector<AltAdvanceData*>::iterator itr;
	AltAdvanceData* data = NULL;

	MMasterAAList.readlock(__FUNCTION__, __LINE__);
	for (itr = AAList.begin(); itr != AAList.end(); itr++) {
		if ((*itr)->spellID == spellID) {
			data = (*itr);
			break;
		}
	}
	MMasterAAList.releasereadlock(__FUNCTION__, __LINE__);

	return data;
}

void MasterAAList::DestroyAltAdvancements() {
	MMasterAAList.writelock(__FUNCTION__, __LINE__);
	vector<AltAdvanceData*>::iterator itr;
	for (itr = AAList.begin(); itr != AAList.end(); itr++)
		safe_delete(*itr);
	AAList.clear();
	MMasterAAList.releasewritelock(__FUNCTION__, __LINE__);
}

MasterAANodeList::MasterAANodeList() {
}

MasterAANodeList::~MasterAANodeList() {
	DestroyTreeNodes();
}

void MasterAANodeList::AddTreeNode(TreeNodeData* data) {
	TreeNodeList.push_back(data);
}

void MasterAANodeList::DestroyTreeNodes() {
	vector<TreeNodeData*>::iterator itr;
	for (itr = TreeNodeList.begin(); itr != TreeNodeList.end(); itr++)
		safe_delete(*itr);
	TreeNodeList.clear();
}

int MasterAANodeList::Size() {
	return TreeNodeList.size();
}

vector<TreeNodeData*> MasterAANodeList::GetTreeNodes() {
	return TreeNodeList;
}

EQ2Packet* MasterAAList::GetAAListPacket(Client* client)
{

	/*
	-- OP_DispatchESMsg --
	5/24/2011 20:54:15
	199.108.12.165 -> 192.168.0.197
	0000:	00 38 3B 00 00 00 FF A3 02 FF FF FF FF 00 00 00 .8;.............
	0010:	00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
	0020:	00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
	0030:	00 00 00 00 00 00 00 00 FF FF FF FF 00 00 00 00 ................
	0040	00                                              .
	*/

	uchar blah[] = {0xFF,0xE8,0x01,
0x00, //unknown
0x07,0x00,0x00,0x00, //unknown2
0x07,0x00,0x57,0x61,0x72,0x72,0x69,0x6F,0x72, //class_title_tab
0x0C,0x00, //unknown3
0x64,0x00,0x00,0x00, //max_class_aa
0xFD,0x74,0xB6,0x73, //class_id
0x00, //kos_req
0x00,0x00,0x00,0x00, //num_class_items

0x0B,0x00,0x00,0x00, //unknown10
0x11,0x00,0x00,0x00, //class_points_spent
0x00,0x00,0x3B,0x81,0x01,0x00, //unknown11
0x00,0x00, //unknown12
0x00,0x00, //unknown13
0x00,0x00,0x00,0x00, //unknown14
0x00,0x00, //unknown15
0x00,0x00,0x00,0x00,0x00,0x00,0x00, //unknown16
0x09,0x00,0x42,0x65,0x72,0x73,0x65,0x72,0x6B,0x65,0x72, //subclass_title_tab
0x0E,0x00, //unknown17
0x64,0x00,0x00,0x00, //max_subclass_aa
0x5F,0xD6,0xAF,0x50, //subclass_id
0x00, //eof_req
0x00,0x00,0x00,0x00, //num_subclass_items

0x0C,0x00,0x00,0x00, //unknown20
0x08,0x00,0x00,0x00, //subclass_points_spent
0x00,0x00,0x3B,0x81,0x03,0x14, //unknown21
0x00,0x00,0x00, //unknown22
0x1D,0x00,0x3A,0x63,0x65,0x31,0x38,0x36,0x34,0x63,0x37,0x66,0x35,0x33,0x66,0x65,0x62,0x37,0x62,0x5F,0x31,0x3A,0x42,0x65,0x72,0x73,0x65,0x72,0x6B,0x65,0x72, //unknown23
0x01,0x00,0x00,0x00, //unknown24
0x1D,0x00,0x3A,0x63,0x65,0x31,0x38,0x36,0x34,0x63,0x37,0x35,0x66,0x39,0x34,0x61,0x32,0x64,0x37,0x5F,0x31,0x3A,0x45,0x78,0x70,0x65,0x72,0x74,0x69,0x73,0x65, //unknown25
0x00,0x00,0x00,0x00,0x00,0x00, //unknown26
0x07,0x00,0x53,0x68,0x61,0x64,0x6F,0x77,0x73, //shadows_tab_title
0x2C,0x00, //unknown27
0x46,0x00,0x00,0x00, //max_shadows_aa
0x53,0x88,0x59,0x62, //shadows_id
0x00, //rok_req
0x00,0x00,0x00,0x00, //num_shadow_items

0x0E,0x00,0x00,0x00, //unknown30
0x00,0x00,0x00,0x00, //shadows_points_spent
0x00,0x00,0x3B,0x81,0x03,0x00, //unknown31
0x00,0x00,0x00, //unknown32
0x00,0x00, //uknown33
0x00,0x00,0x00,0x00, //unknown34
0x00,0x00, //unknown35
0x00,0x00,0x00,0x00,0x00,0x00, //unknown36
0x06,0x00,0x48,0x65,0x72,0x6F,0x69,0x63, //heroic_tab_title
0x48,0x00, //unknown37
0x32,0x00,0x00,0x00, //max_heroic_aa
0xC0,0x6B,0xFC,0x3C, //heroic_id
0x01, //heroic_dov_req
0x00,0x00,0x00,0x00, //num_heroic_items

0x10,0x00,0x00,0x00, //unknown40
0x00,0x00,0x00,0x00, //heroic_points_spent
0x00,0x00,0x3B,0x81,0x03,0x00, //unknown41
0x00,0x00,0x00, //unknown42
0x00,0x00, //unknown43
0x00,0x00,0x00,0x00, //unknown44
0x00,0x00, //unknown45
0x00,0x00,0x00,0x00,0x00,0x00, //unknown46
0x0A,0x00,0x54,0x72,0x61,0x64,0x65,0x73,0x6B,0x69,0x6C,0x6C, //tradeskill_tab_title
0x49,0x00, //unknown47
0x28,0x00,0x00,0x00, //max_tradeskill_aa
0x1E,0xDB,0x41,0x2F, //tradeskill_id
0x00, //exp_req
0x00,0x00,0x00,0x00, //num_tradeskill_items

0x00,0x00,0x00,0x00, //unknown50
0x00,0x00,0x00,0x00, //tradeskill_points_spent
0x00,0x00,0x3B,0x81,0x03,0x00, //unknown51
0x00,0x00,0x00, //unknown52
0x00,0x00, //unknown53
0x00,0x00,0x00,0x00, //unknown54
0x00,0x00, //unknown55
0x03,0x00,0x00,0x00,0x00,0x00, //unknown56
0x08,0x00,0x50,0x72,0x65,0x73,0x74,0x69,0x67,0x65, //prestige_tab_title
0x67,0x00, //unknown57
0x19,0x00,0x00,0x00, //max_prestige_aa
0xC6,0xA8,0x83,0xBD, //prestige_id
0x01, //prestige_dov_req
0x00,0x00,0x00,0x00, //num_prestige_items

0x10,0x00,0x00,0x00, //unknown60
0x00,0x00,0x00,0x00, //prestige_points_spent
0x00,0x00,0x3B,0x81,0x03,0x06, //unknown61
0x00,0x00,0x00, //unknown62
0x1D,0x00,0x3A,0x34,0x39,0x33,0x64,0x65,0x62,0x62,0x33,0x65,0x36,0x37,0x38,0x62,0x39,0x37,0x37,0x5F,0x35,0x35,0x3A,0x50,0x72,0x65,0x73,0x74,0x69,0x67,0x65, //unknown63
0x01,0x00,0x00,0x00, //unknown64
0x27,0x00,0x3A,0x34,0x39,0x33,0x64,0x65,0x62,0x62,0x33,0x65,0x36,0x61,0x38,0x62,0x62,0x37,0x39,0x5F,0x31,0x32,0x3A,0x50,0x72,0x65,0x73,0x74,0x69,0x67,0x65,0x20,0x45,0x78,0x70,0x65,0x72,0x74,0x69,0x73,0x65, //unknown65
0x02,0x00,0x00,0x00,0x00,0x00, //unknown66
0x13,0x00,0x54,0x72,0x61,0x64,0x65,0x73,0x6B,0x69,0x6C,0x6C,0x20,0x50,0x72,0x65,0x73,0x74,0x69,0x67,0x65, //tradeskill_prestige_tab_title
0x79,0x00, //unknown67
0x19,0x00,0x00,0x00, //max_tradeskill_prestige_aa
0x18,0x2C,0x0B,0x74, //tradeskill_prestige_id
0x01, //coe_req
0x00,0x00,0x00,0x00, //num_tradeskill_prestige_items

0x12,0x00,0x00,0x00, //unknown70
0x00,0x00,0x00,0x00, //tradeskill_prestige_points_spent
0x00,0x00,0x3B,0x81,0x03,0x00, //unknown71
0x00,0x00,0x00, //unknown72
0x00,0x00, //unknown73
0x00,0x00,0x00,0x00, //unknown74
0x00,0x00, //unknown75
0x04,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x00,0x00, //unknown76
0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00, //unknown77
0x01, //num_templates
0x64, //template_unknown1
0x03,0x00,0x4E,0x65,0x77, //template_name
0x00, //template_unknown2
0x00,0x00}; //num_tabs

			return (new EQ2Packet(OP_AdventureList, blah, sizeof(blah)));
}

void MasterAAList::DisplayAA(Client* client) {
	map <int8, vector<TreeNodeData*> >::iterator itr_tree2;
	vector<TreeNodeData*>::iterator itr_tree3;
	map <int8, vector<TreeNodeData*> > Nodes;
	vector<TreeNodeData*> TreeNodeList = master_tree_nodes.GetTreeNodes();
	int8 class_id_test = client->GetPlayer()->GetInfoStruct()->class3;
	for (int x = 0; x < TreeNodeList.size(); x++)
	{
		int8 class_id = client->GetPlayer()->GetInfoStruct()->class3;

		if (TreeNodeList[x]->classID == class_id)
		{
			itr_tree2 = Nodes.lower_bound(TreeNodeList[x]->classID);
			if (itr_tree2 != Nodes.end() && !(Nodes.key_comp()(TreeNodeList[x]->classID, itr_tree2->first)))
			{
				(itr_tree2->second).push_back(TreeNodeList[x]);
				LogWrite(SPELL__INFO, 0, "AA", "Added AA Tree node ID: %u", TreeNodeList[x]->treeID);
			}
			else
			{
				vector<TreeNodeData*> tmpVec;
				tmpVec.push_back(TreeNodeList[x]);
				Nodes.insert(make_pair(TreeNodeList[x]->classID, tmpVec));
				LogWrite(SPELL__INFO, 0, "AA", "Added AA Tree node ID: %u", TreeNodeList[x]->treeID);
			}
		}
	}

	map <int8, vector<AltAdvanceData*> >::iterator itr2;
	vector<AltAdvanceData*>::iterator itr3;

	map <int8, vector<AltAdvanceData*> > ClassTab;
	map <int8, vector<AltAdvanceData*> > SubclassTab;
	map <int8, vector<AltAdvanceData*> > ShadowsTab;
	map <int8, vector<AltAdvanceData*> > HeroicTab;
	map <int8, vector<AltAdvanceData*> > TradeskillTab;
	map <int8, vector<AltAdvanceData*> > PrestigeTab;
	map <int8, vector<AltAdvanceData*> > TradeskillPrestigeTab;
	map <int8, vector<AltAdvanceData*> > AATab[11];

	MMasterAAList.readlock(__FUNCTION__, __LINE__);
	// Get Tree Node ID's
	map <int8, int8> node_id;
	for (itr_tree2 = Nodes.begin(); itr_tree2 != Nodes.end(); itr_tree2++) {
		int8 x = 0;
		for (itr_tree3 = itr_tree2->second.begin(); itr_tree3 != itr_tree2->second.end(); itr_tree3++, x++) {
			node_id[x] = (*itr_tree3)->treeID;
		}
	}

	for (int i = 0; i < Size(); i++) {
		if (AAList[i]->group == node_id[AA_CLASS]) {
			itr2 = AATab[AA_CLASS].lower_bound(AAList[i]->group);
			if (itr2 != AATab[AA_CLASS].end() && !(AATab[AA_CLASS].key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				AATab[AA_CLASS].insert(make_pair(AAList[i]->group, tmpVec));
				LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for Subclass Tab
		if (AAList[i]->group == node_id[AA_SUBCLASS]) {
			itr2 = AATab[AA_SUBCLASS].lower_bound(AAList[i]->group);
			if (itr2 != AATab[AA_SUBCLASS].end() && !(AATab[AA_SUBCLASS].key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				AATab[AA_SUBCLASS].insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for Shadows Tab
		if (AAList[i]->group == node_id[AA_SHADOW]) {
			itr2 = AATab[AA_SHADOW].lower_bound(AAList[i]->group);
			if (itr2 != AATab[AA_SHADOW].end() && !(AATab[AA_SHADOW].key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				AATab[AA_SHADOW].insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for Heroic Tab
		if (AAList[i]->group == node_id[AA_HEROIC]) {
			itr2 = AATab[AA_HEROIC].lower_bound(AAList[i]->group);
			if (itr2 != AATab[AA_HEROIC].end() && !(AATab[AA_HEROIC].key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				AATab[AA_HEROIC].insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for Tradeskill Tab
		if (AAList[i]->group == node_id[AA_TRADESKILL]) {
			itr2 = AATab[AA_TRADESKILL].lower_bound(AAList[i]->group);
			if (itr2 != AATab[AA_TRADESKILL].end() && !(AATab[AA_TRADESKILL].key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				AATab[AA_TRADESKILL].insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for Prestige Tab
		if (AAList[i]->group == node_id[AA_PRESTIGE]) {
			itr2 = AATab[AA_PRESTIGE].lower_bound(AAList[i]->group);
			if (itr2 != AATab[AA_PRESTIGE].end() && !(AATab[AA_PRESTIGE].key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				AATab[AA_PRESTIGE].insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
		// Sort for TradeskillPrestige Tab
		if (AAList[i]->group == node_id[AA_TRADESKILL_PRESTIGE]) {
			itr2 = AATab[AA_TRADESKILL_PRESTIGE].lower_bound(AAList[i]->group);
			if (itr2 != AATab[AA_TRADESKILL_PRESTIGE].end() && !(AATab[AA_TRADESKILL_PRESTIGE].key_comp()(AAList[i]->group, itr2->first))) {
				(itr2->second).push_back(AAList[i]);
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
			else {
				vector<AltAdvanceData*> tmpVec;
				tmpVec.push_back(AAList[i]);
				AATab[AA_TRADESKILL_PRESTIGE].insert(make_pair(AAList[i]->group, tmpVec));
				//LogWrite(SPELL__INFO, 0, "AA", "Added...%u ", AAList[i]->spellID);
			}
		}
	}
	MMasterAAList.releasereadlock(__FUNCTION__, __LINE__);

	int16	version = 1;
	int8	num_class_items = 0;
	int8	num_subclass_items = 0;
	int8	num_shadow_items = 0;
	int8	num_heroic_items = 0;
	int8	num_tradeskill_items = 0;
	int8	num_prestige_items = 0;
	int8	num_tradeskillprestige_items = 0;
	int8	num_trees = 0;
	int8	num_items = 0;
	int8	index = 0;
	Spell*	spell = 0;
	int8	current_rank = 0;
	int32	class_node_id = 0;
	int8     unknown10_DOV[11] = { 11, 12, 14, 16, 0, 0, 0, 0, 0, 0, 0 };
	int8     unknown10_COE[11] = { 11, 12, 14, 16, 1, 0, 0, 0, 0, 0, 0 };
	int8     unknown10_DOV1[11] = { 11, 12, 14, 16, 1, 2, 0, 0, 0, 0, 0 };
	int8     unknown10_COE2[11] = { 11, 12, 14, 16, 1, 2, 3, 0, 0, 0, 0 };
	int8     unknown10_COE3[11] = { 11, 12, 14, 16, 1, 2, 3, 4, 0, 0, 0 };
	int8     unknown10_COE4[11] = { 11, 12, 14, 16, 1, 2, 3, 4, 5, 0, 0 };
	int8     unknown10_COE5[11] = { 11, 12, 14, 16, 1, 2, 3, 4, 5, 6, 0 };
	int8     unknown10_COE6[11] = { 11, 12, 14, 16, 1, 2, 3, 4, 5, 6, 7 };
	int8     unknown10_KA7[11] = { 7, 8, 10, 12, 7, 12, 14, 15, 16, 16, 0 };
	
	int8     unknown10_KA8[11] = { 7, 7, 8, 10, 12, 0, 12, 14, 15, 16, 16 };
	int8	unknown10[11];

	if (client)
		version = client->GetVersion();


	//LogWrite(SPELL__INFO, 0, "AA", "ClassTab Size...%i ", num_class_items);
	PacketStruct* packet = configReader.getStruct("WS_AdventureList", version);
	if (version <= 1096) {  //dov 
		num_trees = 4;
		//std::copy(newarr, newarr + 5, array);
		std::copy(unknown10_DOV, unknown10_DOV + 11, unknown10);
	}
	else if (version <= 1208) {  //dov 
		num_trees = 7;
		//std::copy(newarr, newarr + 5, array);
		std::copy(unknown10_COE, unknown10_COE + 11, unknown10);
	}
	else if ((version >= 63119)||(version == 61331)) {  //dov 
		num_trees = 10;
		//std::copy(newarr, newarr + 5, array);
		std::copy(unknown10_KA7, unknown10_KA7 + 11, unknown10);
	}
	packet->setDataByName("unknown_aa", 0);
	packet->setArrayLengthByName("num_aa_trees", num_trees); //dov = 4  KA=10 COE=7 KA/BL =11
	
	for (int i = 0; i < num_trees ; i++){
		num_items = 0;
		index = 0;
		switch (i) {
		case 0: packet->setArrayDataByName("max_aa", rule_manager.GetGlobalRule(R_Player, MaxClassAA)->GetInt32(),i);
			packet->setArrayDataByName("tree_node_id", node_id[AA_CLASS],i);// was 4
			packet->setArrayDataByName("id", 1762604794, i);//"class_tab_id" node_id[AA_CLASS]
			packet->setArrayDataByName("tab_title", classes.GetClassNameCase(classes.GetSecondaryBaseClass(client->GetPlayer()->GetAdventureClass())).c_str(), i);
			packet->setArrayDataByName("points_spent", 0 , i);
			packet->setArrayDataByName("unknown11b", 1, i);
		
			
			break;
		case 1: packet->setArrayDataByName("max_aa", rule_manager.GetGlobalRule(R_Player, MaxSubclassAA)->GetInt32(),i);
			packet->setArrayDataByName("tree_node_id", node_id[AA_SUBCLASS],i);// was 4
			packet->setArrayDataByName("id", 662389478, i);//"class_tab_id" node_id[AA_CLASS]
			packet->setArrayDataByName("tab_title", classes.GetClassNameCase(client->GetPlayer()->GetAdventureClass()).c_str(), i);
			packet->setArrayDataByName("points_spent", 0, i);
			packet->setArrayDataByName("unknown11b", 5123, i);
			packet->setArrayDataByName("unknown13", ":ce1864c792919a6b_1:Dirge", i);
			packet->setArrayDataByName("unknown14", 1, i);
			packet->setArrayDataByName("unknown15", ":ce1864c75f94a2d7_11:Expertise", i);
			
			break;
		case 2: packet->setArrayDataByName("max_aa", rule_manager.GetGlobalRule(R_Player, MaxShadowsAA)->GetInt32(),i);
			packet->setArrayDataByName("tree_node_id", node_id[AA_SHADOW],i);// was 4
			packet->setArrayDataByName("id", 1650034771, i);//"class_tab_id" node_id[AA_CLASS]
			packet->setArrayDataByName("tab_title", "Shadows", i);
			packet->setArrayDataByName("points_spent", 0, i);
			packet->setArrayDataByName("unknown11b", 3, i);
			break;
		case 3: packet->setArrayDataByName("max_aa", rule_manager.GetGlobalRule(R_Player, MaxHeroicAA)->GetInt32(),i);
			packet->setArrayDataByName("tree_node_id", node_id[AA_HEROIC],i);// was 4
			packet->setArrayDataByName("id", 1023175616, i);//"class_tab_id" node_id[AA_CLASS]
			packet->setArrayDataByName("tab_title", "Heroic", i);
			packet->setArrayDataByName("points_spent", 0, i);
			packet->setArrayDataByName("unknown11b", 3, i);
			break;
		case 4: packet->setArrayDataByName("max_aa", rule_manager.GetGlobalRule(R_Player, MaxTradeskillAA)->GetInt32(), i);
			packet->setArrayDataByName("tree_node_id", node_id[AA_TRADESKILL], i);// was 4
			packet->setArrayDataByName("id", 792845086, i);//"class_tab_id" node_id[AA_CLASS]
			packet->setArrayDataByName("tab_title", "Tradeskill", i);
			packet->setArrayDataByName("points_spent", client->GetPlayer()->GetTradeskillAA(), i);
			packet->setArrayDataByName("unknown11b", 3, i);
			packet->setArrayDataByName("unknown16a", 3, i);
			break;
		case 5: packet->setArrayDataByName("max_aa", rule_manager.GetGlobalRule(R_Player, MaxPrestigeAA)->GetInt32(), i);
			packet->setArrayDataByName("tree_node_id", node_id[AA_PRESTIGE], i);// was 4
			packet->setArrayDataByName("id", 1404768362, i);//"class_tab_id" node_id[AA_CLASS]
			packet->setArrayDataByName("tab_title", "Prestige", i);
			packet->setArrayDataByName("points_spent", client->GetPlayer()->GetPrestigeAA(), i);
			packet->setArrayDataByName("unknown11b", 1539, i);
			packet->setArrayDataByName("unknown13", ":493debb3e678b977_208:Prestige", i);
			packet->setArrayDataByName("unknown14", 1, i);
			packet->setArrayDataByName("unknown15", ":493debb3e6a8bb79_46:Prestige Expertise", i);
			packet->setArrayDataByName("unknown16a", 2, i);
			break;
		case 6: packet->setArrayDataByName("max_aa", rule_manager.GetGlobalRule(R_Player, MaxTradeskillPrestigeAA)->GetInt32(), i);
			packet->setArrayDataByName("tree_node_id", node_id[AA_TRADESKILL_PRESTIGE], i);// was 4
			packet->setArrayDataByName("id", 1946889240, i);//"class_tab_id" node_id[AA_CLASS]
			packet->setArrayDataByName("tab_title", "General", i);
			packet->setArrayDataByName("points_spent", client->GetPlayer()->GetTradeskillPrestigeAA(), i);
			packet->setArrayDataByName("unknown11b", 3, i);
			packet->setArrayDataByName("unknown16a", 4, i);
			break;
		case 7: packet->setArrayDataByName("max_aa", rule_manager.GetGlobalRule(R_Player, MaxDragonAA)->GetInt32(), i);
			packet->setArrayDataByName("tree_node_id", node_id[AA_DRAGON], i);// was 4
			packet->setArrayDataByName("id", 2872317211, i);//"class_tab_id" node_id[AA_CLASS]
			packet->setArrayDataByName("tab_title", "Dragon", i);
			packet->setArrayDataByName("points_spent", 0, i);
			packet->setArrayDataByName("unknown11b", 1, i);
			break;
		case 8: packet->setArrayDataByName("max_aa", rule_manager.GetGlobalRule(R_Player, MaxPrismaticAA)->GetInt32(), i);
			packet->setArrayDataByName("tree_node_id", node_id[AA_PRISMATIC], i);// was 4
			packet->setArrayDataByName("id", 3013333555, i);//"class_tab_id" node_id[AA_CLASS]
			packet->setArrayDataByName("tab_title", classes.GetClassNameCase(classes.GetSecondaryBaseClass(client->GetPlayer()->GetAdventureClass())).c_str(), i);
			packet->setArrayDataByName("points_spent", 0, i);
			packet->setArrayDataByName("unknown11b", 3, i);
			packet->setArrayDataByName("unknown16a", 2, i);
			break;
		case 9: packet->setArrayDataByName("max_aa", rule_manager.GetGlobalRule(R_Player, MaxFarSeasAA)->GetInt32(), i);
			packet->setArrayDataByName("tree_node_id", node_id[AA_FARSEAS], i);// was 4
			packet->setArrayDataByName("id", 2679017126, i);//"class_tab_id" node_id[AA_CLASS]
			packet->setArrayDataByName("tab_title", "Far Seas", i);
			packet->setArrayDataByName("points_spent", 0, i);
			packet->setArrayDataByName("unknown11b", 3, i);
			packet->setArrayDataByName("unknown16a", 4, i);
			break;

		}
			for (itr2 = AATab[i].begin(); itr2 != AATab[i].end(); itr2++) {
				num_items += (itr2->second).size();
			}
			
			packet->setArrayDataByName("kos_req", 0,i);
			packet->setSubArrayLengthByName("num_node_items", num_items,i);
			for (itr2 = AATab[i].begin(); itr2 != AATab[i].end(); itr2++) {
				for (itr3 = itr2->second.begin(); itr3 != itr2->second.end(); itr3++, index++) {
					//spell = master_spell_list.GetSpell((*itr3)->spellID, (*itr3)->tier);
					//current_rank = client->GetPlayer()->GetSpellTier((*itr3)->spellID);
					if (index == 0)
						class_node_id = (*itr3)->spellID;
					//if (spell) {
					
				//	packet->setDataByName(("parent_id" + array_str).c_str(), (*itr3)->rankPrereqID);
					packet->setSubArrayDataByName("parent_id", (*itr3)->rankPrereqID, i, index);
					packet->setSubArrayDataByName("parent_req_tier", (*itr3)->rankPrereq,i, index);
					packet->setSubArrayDataByName("spell_id", (*itr3)->spellID,i, index);
					packet->setSubArrayDataByName("active", 3,i, index); // ?? 3 greyed out  0 shows up
					packet->setSubArrayDataByName("spell_name", (*itr3)->name.c_str(), i, index);
					packet->setSubArrayDataByName( "spell_description", (*itr3)->description.c_str(), i, index);
					packet->setSubArrayDataByName("icon", (*itr3)->icon, i, index);
					packet->setSubArrayDataByName( "icon2", (*itr3)->icon2, i, index);
					packet->setSubArrayDataByName("current_rank", current_rank, i, index); // TODO: need to get this value from the DB
					packet->setSubArrayDataByName( "max_rank", (*itr3)->maxRank, i, index);
					packet->setSubArrayDataByName( "rank_cost", (*itr3)->rankCost, i, index);
					packet->setSubArrayDataByName( "min_level", (*itr3)->minLevel, i, index);
					packet->setSubArrayLengthByName("unknown5_num_items", 5, i,index);  //what is this need to know
						packet->setSubArrayDataByName("class_unknown5", 308397057, 0, 0);
						packet->setSubArrayDataByName("class_unknown5", 3215564363, 0, 1);
						packet->setSubArrayDataByName("class_unknown5", 445192837, 0, 2);
						packet->setSubArrayDataByName("class_unknown5", 3345493294, 0, 3);
						packet->setSubArrayDataByName("class_unknown5", 696953971, 0, 4);
					packet->setSubArrayDataByName("unknown6", 4294967295, i, index);// all FF FF FF FF for now with no AA assigned
					packet->setSubArrayDataByName("unknown7", 0,i, index);// all 0 for now with no AA assigned
					packet->setSubArrayDataByName("classification1", (*itr3)->requiredclassification.c_str(), i, index);
					packet->setSubArrayDataByName("points_req", (*itr3)->req_points,i, index);
					packet->setSubArrayDataByName("unknown8", 0,i, index);// all 0 for now with no AA assigned
					packet->setSubArrayDataByName("classification2", (*itr3)->displayedclassification.c_str(), i, index);
					packet->setSubArrayDataByName("col", (*itr3)->col, i, index);
					packet->setSubArrayDataByName("row", (*itr3)->row, i, index);
					packet->setSubArrayDataByName("line_title", (*itr3)->line_title.c_str(), i, index);
					packet->setSubArrayDataByName("unknown9", 258, i, index);// some are 0 some are 258
					packet->setSubArrayDataByName("points_to_unlock", (*itr3)->req_tree_points, i, index);
					packet->setSubArrayDataByName("unknown9b", 0, i, index);// all 0 for now with no AA assigned
					//}
					//else
					//LogWrite(SPELL__ERROR, 0, "AltAdvancement","Could not find Spell ID %u and Tier %i in Master Spell List", (*itr3)->spellID, (*itr3)->tier);
				}
			}
			packet->setArrayDataByName("unknown10", unknown10[i],i);
			packet->setArrayDataByName("points_spent", 0,i);
			packet->setArrayDataByName("unknown11a", 46443, i);
			
			//	packet->setDataByName("unknown63", ":493debb3e678b977_208:Prestige");
			//	packet->setDataByName("unknown64", 1);
			//	packet->setDataByName("unknown65", ":493debb3e6a8bb79_46:Prestige Expertise");
			//	packet->setDataByName("unknown66", 2, 0);
		
	}

		if ((version >= 63119)||(version==61331)) {
			packet->setDataByName("unknown48", 1, 6);
			packet->setDataByName("unknown48", 255, 8);
			packet->setDataByName("unknown48", 255, 9);
			packet->setDataByName("unknown48", 255, 10);
			packet->setDataByName("unknown48", 255, 11);
			packet->setDataByName("unknown48", 20, 12);
			//packet->setDataByName("unknown48", 255, 40);
			//packet->setDataByName("unknown48", 255, 41);
			//packet->setDataByName("unknown48", 255, 42);
			//packet->setDataByName("unknown48", 20, 43);
		

		packet->setArrayLengthByName("num_templates", 7);
		packet->setArrayDataByName("template_unknown1", 0, 0);
		packet->setArrayDataByName("template_name", "Unused Slot 1", 0);
		packet->setArrayDataByName("template_active", 0, 0);
		packet->setSubstructArrayDataByName("info_template", "num_tabs", 0, 0);

		packet->setArrayDataByName("template_unknown1", 1, 1);
		packet->setArrayDataByName("template_name", "Unused Slot 2", 1);
		packet->setArrayDataByName("template_active", 0, 1);
		packet->setSubstructArrayDataByName("info_template", "num_tabs", 0, 1);
		packet->setArrayDataByName("template_unknown1", 2, 2);
		packet->setArrayDataByName("template_name", "Unused Slot 3", 2);
		packet->setArrayDataByName("template_active", 0, 2);
		packet->setSubstructArrayDataByName("info_template", "num_tabs", 0, 2);
		packet->setArrayDataByName("template_unknown1", 20, 3);
		packet->setArrayDataByName("template_name", "Basic Leveling Profile - Solo", 3);
		packet->setArrayDataByName("template_active", 1, 3);
		packet->setSubstructArrayDataByName("info_template", "num_tabs", 0, 3);
		packet->setArrayDataByName("template_unknown1", 21, 4);
		packet->setArrayDataByName("template_name", "Basic Leveling Profile - Group", 4);
		packet->setArrayDataByName("template_active", 1, 4);
		packet->setSubstructArrayDataByName("info_template", "num_tabs", 0, 4);
		packet->setArrayDataByName("template_unknown1", 22, 5);
		packet->setArrayDataByName("template_name", "Basic Leveling Profile - PVP", 5);
		packet->setArrayDataByName("template_active", 1, 5);
		packet->setSubstructArrayDataByName("info_template", "num_tabs", 0, 5);
		packet->setArrayDataByName("template_unknown1", 100, 6);
		packet->setArrayDataByName("template_name", "New", 6);
		packet->setArrayDataByName("template_active", 0, 6);
		packet->setSubstructArrayDataByName("info_template", "num_tabs", 0, 6);
	}
		

		EQ2Packet* data = packet->serialize();
		EQ2Packet* app = new EQ2Packet(OP_AdventureList, data->pBuffer, data->size);

		//DumpPacket(data);
		//DumpPacket(app);
		client->QueuePacket(app);
		safe_delete(packet);
		safe_delete(data);
	
}
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

#ifdef WIN32
	#include <winsock.h>
	#include <windows.h>
#endif
#include <mysql.h>
#include <assert.h>
#include "../../common/Log.h"
#include "../../common/DatabaseNew.h"
#include "../WorldDatabase.h"
#include "AltAdvancement.h"

extern MasterAAList master_aa_list;
extern MasterAANodeList master_tree_nodes;

void WorldDatabase::LoadAltAdvancements() 
{
	Query query;
	MYSQL_ROW row;
	AltAdvanceData* data;

	//MYSQL_RES* result = query.RunQuery2(Q_SELECT, "SELECT `spell_id`, `group`, `icon`, `icon2`, `col`, `row`, `rank_cost`, `max_cost`, `rank_prereq_id`, `rank_prereq`, `class_req`, `tier`, `class_name`, `subclass_name`, `line_title` FROM spell_aa");
	//-------------------------------------------------------0------------1----------2---------3---------------4--------------5---------------6--------------7--------8-------------9-------------10---------11----------12--------------------13----------------------14-------------------------15------------------------------16----------------------------17----------------------18------------------------19
	MYSQL_RES* result = query.RunQuery2(Q_SELECT, "SELECT `nodeid`, snl.spellcrc, `name`, `description`, snl.aa_list_fk, snl.icon_id, snl.icon_backdrop, `xcoord`, `ycoord`, `pointspertier`, `maxtier`,`minlevel`, `firstparentid`, `firstparentrequiredtier`, `displayedclassification`, `requiredclassification`, `classificationpointsrequired`, `pointsspentgloballytounlock`,`pointsspentintreetounlock`, `title` FROM spell_aa_nodelist snl");
	while (result && (row = mysql_fetch_row(result))) {
		data = new AltAdvanceData;
		int8 i = 0;
		data->spellID = strtoul(row[0], NULL, 0);//0-nodeid
		data->spell_crc = strtoul(row[++i], NULL, 0);//1-snl.spellcrc
		data->name = string(row[++i]);//2-snl.spellcrc
		data->description = string(row[++i]);//3-description
		data->group = atoi(row[++i]);//4-snl.aa_list_fk
		data->icon = atoi(row[++i]);//5-snl.icon_id
		data->icon2 = atoi(row[++i]);//6-snl.icon_backdrop
		data->col = atoi(row[++i]);//7-xcoord
		data->row = atoi(row[++i]);//8-ycoord
		data->rankCost = atoi(row[++i]);//9-pointspertier
		data->maxRank = atoi(row[++i]);//10-maxtier
		data->minLevel = atoi(row[++i]);//11-minlevel
		data->rankPrereqID = strtoul(row[++i], NULL, 0);//12-firstparentid
		data->rankPrereq = atoi(row[++i]);//13-firstparentrequiredtier
		data->tier = 1;
		data->displayedclassification = string(row[++i]);//14-displayedclassification
		data->requiredclassification = string(row[++i]);//15-requiredclassification
		data->req_points = atoi(row[++i]);//16-classificationpointsrequired
		data->req_global_points = atoi(row[++i]);//17-pointsspentgloballytounlock
		data->req_tree_points = atoi(row[++i]);//18-pointsspentintreetounlock
		data->line_title = string(row[++i]);

		master_aa_list.AddAltAdvancement(data);
	}

	LogWrite(SPELL__INFO, 0, "AA", "Loaded %u Alternate Advancement(s)", master_aa_list.Size());

}

void WorldDatabase::LoadTreeNodes()
{
	Query query;
	MYSQL_ROW row;
	TreeNodeData* data;

	MYSQL_RES* result = query.RunQuery2(Q_SELECT, "SELECT class_id, tree_node, aa_tree_id FROM spell_aa_class_list");
	while (result && (row = mysql_fetch_row(result))) {
		data = new TreeNodeData;
		data->classID = strtoul(row[0], NULL, 0);
		data->treeID = strtoul(row[1], NULL, 0);
		data->AAtreeID = strtoul(row[1], NULL, 0);
		master_tree_nodes.AddTreeNode(data);
	}
	LogWrite(SPELL__INFO, 0, "AA", "Loaded %u AA Tree Nodes", master_tree_nodes.Size());
}
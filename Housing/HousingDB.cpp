#include "../WorldDatabase.h"
#include "../World.h"

extern World world;

void WorldDatabase::LoadHouseZones() {
	Query query;
	MYSQL_ROW row;
	MYSQL_RES* result = query.RunQuery2(Q_SELECT, "SELECT * FROM `houses`");

	if (result && mysql_num_rows(result) > 0) {
		while ((row = mysql_fetch_row(result))) {
			world.AddHouseZone(atoul(row[0]), row[1], atoi64(row[2]), atoul(row[3]), atoi64(row[4]), atoul(row[5]), atoi(row[6]), atoi(row[7]), atoi(row[8]), atoul(row[9]), atoul(row[10]), atof(row[11]), atof(row[12]), atof(row[13]), atof(row[14]));
		}
	}
}

int64 WorldDatabase::AddPlayerHouse(int32 char_id, int32 house_id, int32 instance_id, int32 upkeep_due) {
	Query query;
	string insert = string("INSERT INTO character_houses (char_id, house_id, instance_id, upkeep_due, public_access_level) VALUES (%u, %u, %u, %u,1) ");
	query.RunQuery2(Q_INSERT, insert.c_str(), char_id, house_id, instance_id, upkeep_due);
	
	int64 unique_id = query.GetLastInsertedID();
	return unique_id;
}
void WorldDatabase::SetHouseDefaultAccess(int64 house_id, int8 access_level) {
	Query query;
	string update = string("UPDATE character_houses SET public_access_level = %i WHERE id = %i");
	query.RunQuery2(Q_INSERT, update.c_str(), access_level, house_id);
}




void WorldDatabase::RemovePlayerHouse(int32 char_id, int32 house_id) {
}

void WorldDatabase::LoadPlayerHouses() {
	Query query;
	MYSQL_ROW row;
	MYSQL_RES* result = query.RunQuery2(Q_SELECT, "SELECT h.id, h.char_id, h.house_id, h.instance_id, h.upkeep_due, h.escrow_coins, h.escrow_status, h.public_access_level, c.name FROM character_houses h, characters c WHERE h.char_id = c.id");

	if (result && mysql_num_rows(result) > 0) {
		while ((row = mysql_fetch_row(result))) {
			world.AddPlayerHouse(atoul(row[1]), atoul(row[2]), atoi64(row[0]), atoul(row[3]), atoul(row[4]), atoi64(row[5]), atoul(row[6]), row[8], atoi(row[7]));
		}
	}
}
void WorldDatabase::LoadHouseItems(ZoneServer* zone) {


	Object* object = 0;
	int32 id = 0;
	int32 total = 0;
	int32 house_id = zone->GetInstanceID();
	Query query;
	MYSQL_ROW row;
	MYSQL_RES* result = query.RunQuery2(Q_SELECT, "SELECT h.id,h.house_id, h.item_id, h.x, h.y, h.z, h.rotation, h.pitch, h.roll, h.scale, h.in_crate,i.model_id,i.primary_command,i.secondary_command FROM house_item_list h,item_details_house i WHERE h.house_id = %i and h.item_id = i.item_id ", house_id );

if (result && mysql_num_rows(result) > 0) {
		while ((row = mysql_fetch_row(result))) {



			//AddHouseItem(         int32 id, int32 house_id, int32 item_id, float x,       float z,       float y,      float rotation,   float pitch, float roll,    float scale,  boolean in_crate)
			world.AddHouseItem(atoul(row[0]), atoul(row[1]),   atol(row[2]), atoul(row[3]), atoul(row[4]), atol(row[5]), atoul(row[6]),    atol(row[7]), atol(row[8]), atoul(row[9]), atoi(row[10]));
	
			id = atoul(row[0]);
			if (zone->GetObject(id, true))
				continue;
			zone->GetInstanceType();
			
			object = new Object();
			object->SetDatabaseID(id);
			strcpy(object->appearance.name, "");
			vector<EntityCommand*>* primary_command_list = 0;// zone->GetEntityCommandList(atoul(row[4]));
			vector<EntityCommand*>* secondary_command_list = 0;// zone->GetEntityCommandList(atoul(row[5]));
			if (primary_command_list){
				object->SetPrimaryCommands(primary_command_list);
				object->primary_command_list_id = 0;// atoul(row[4]);
			}
			if (secondary_command_list){
				object->SetSecondaryCommands(secondary_command_list);
				object->secondary_command_list_id = 0;// atoul(row[5]);
			}
			object->appearance.race = 0;// atoi(row[2]);
			object->appearance.model_type = atoi(row[11]);
			object->appearance.targetable = 0;// atoi(row[6]);
			object->size = atoi(row[9]);
			object->appearance.display_name = 0;// atoi(row[8]);
			object->appearance.visual_state = 0;// atoi(row[9]);
			object->appearance.attackable = 0;// atoi(row[10]);
			object->appearance.show_level = 0;// atoi(row[11]);
			object->appearance.show_command_icon = 1;// atoi(row[12]);
			object->appearance.display_hand_icon = 1;// atoi(row[13]);
			object->faction_id = 0;// atoul(row[14]);
			object->appearance.pos.collision_radius = 32;// atoi(row[15]);
			//object->SetTransporterID(atoul(row[16]));
			//object->SetSizeOffset(atoi(row[17]));
			//object->SetDeviceID(atoi(row[18]));
			zone->AddObject(id, object);
			total++;

			//LogWrite(OBJECT__DEBUG, 5, "Object", "---Loading Object: '%s' (%u)", object->appearance.name, id);
		
		
		
		}
	}

	
}
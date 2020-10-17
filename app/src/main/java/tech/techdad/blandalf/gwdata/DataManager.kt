package tech.techdad.blandalf.gwdata


import android.content.Context
import android.database.sqlite.SQLiteDatabase

class DataManager(context: Context) {

    private val gwdb : SQLiteDatabase = context.openOrCreateDatabase("GamesWorkshopDatabase", Context.MODE_PRIVATE, null)



    init {

        val createOptionTypesQuery = "CREATE TABLE IF NOT EXISTS \"option_types\" (\n" +
                "\t\"option_type_id\"\tINTEGER NOT NULL,\n" +
                "\t\"option_type_name\"\tTEXT NOT NULL,\n" +
                "\tPRIMARY KEY(\"option_type_id\")\n" +
                ");"

        val createOptionsQuery = "CREATE TABLE IF NOT EXISTS \"hero_options\" (\n" +
                "\t\"option_id\"\tINTEGER NOT NULL,\n" +
                "\t\"option_name\"\tTEXT NOT NULL,\n" +
                "\t\"option_points\"\tINTEGER NOT NULL,\n" +
                "\t\"option_type\"\tINTEGER,\n" +
                "\tFOREIGN KEY(\"option_type\") REFERENCES \"option_types\"(\"option_type_id\"),\n" +
                "\tPRIMARY KEY(\"option_id\")\n" +
                ");"

        val createTypesQuery = "CREATE TABLE IF NOT EXISTS \"hero_types\" (\n" +
                "\t\"type_id\"\tINTEGER NOT NULL,\n" +
                "\t\"type_name\"\tREAL NOT NULL,\n" +
                "\tPRIMARY KEY(\"type_id\")\n" +
                ");"

        val createKeyWordsQuery = "CREATE TABLE IF NOT EXISTS \"hero_keywords\" (\n" +
                "\t\"keyword_id\"\tINTEGER NOT NULL,\n" +
                "\t\"keyword_name\"\tTEXT NOT NULL,\n" +
                "\tPRIMARY KEY(\"keyword_id\")\n" +
                ");"

        val createHeroesQuery = "CREATE TABLE IF NOT EXISTS \"heroes\" (\n" +
                "\t\"hero_id\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_name\"\tTEXT NOT NULL UNIQUE,\n" +
                "\t\"hero_move\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_fight_combat\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_fight_range\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_strength\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_defence\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_attacks\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_wounds\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_courage\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_might\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_will\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_fate\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_points\"\tINTEGER NOT NULL,\n" +
                "\t\"hero_keyword_1\"\tINTEGER,\n" +
                "\t\"hero_keyword_2\"\tINTEGER,\n" +
                "\t\"hero_keyword_3\"\tINTEGER,\n" +
                "\t\"hero_keyword_4\"\tINTEGER,\n" +
                "\t\"hero_keyword_5\"\tINTEGER,\n" +
                "\t\"hero_type\"\tINTEGER,\n" +
                "\t\"hero_wargear\"\tTEXT,\n" +
                "\t\"hero_option_1\"\tINTEGER,\n" +
                "\t\"hero_option_2\"\tINTEGER,\n" +
                "\t\"hero_option_3\"\tINTEGER,\n" +
                "\t\"hero_option_4\"\tINTEGER,\n" +
                "\t\"hero_option_5\"\tINTEGER,\n" +
                "\tFOREIGN KEY(\"hero_option_4\") REFERENCES \"hero_options\"(\"option_id\"),\n" +
                "\tFOREIGN KEY(\"hero_keyword_2\") REFERENCES \"hero_keywords\"(\"keyword_id\"),\n" +
                "\tFOREIGN KEY(\"hero_keyword_4\") REFERENCES \"hero_keywords\"(\"keyword_id\"),\n" +
                "\tFOREIGN KEY(\"hero_keyword_5\") REFERENCES \"hero_keywords\"(\"keyword_id\"),\n" +
                "\tFOREIGN KEY(\"hero_option_1\") REFERENCES \"hero_options\"(\"option_id\"),\n" +
                "\tFOREIGN KEY(\"hero_type\") REFERENCES \"hero_types\"(\"type_id\"),\n" +
                "\tFOREIGN KEY(\"hero_option_5\") REFERENCES \"hero_options\"(\"option_id\"),\n" +
                "\tFOREIGN KEY(\"hero_keyword_1\") REFERENCES \"hero_keywords\"(\"keyword_id\"),\n" +
                "\tFOREIGN KEY(\"hero_keyword_3\") REFERENCES \"hero_keywords\"(\"keyword_id\"),\n" +
                "\tFOREIGN KEY(\"hero_option_3\") REFERENCES \"hero_options\"(\"option_id\"),\n" +
                "\tFOREIGN KEY(\"hero_option_2\") REFERENCES \"hero_options\"(\"option_id\"),\n" +
                "\tPRIMARY KEY(\"hero_id\")\n" +
                ");"

        gwdb.execSQL(createOptionTypesQuery)
        gwdb.execSQL(createOptionsQuery)
        gwdb.execSQL(createTypesQuery)
        gwdb.execSQL(createKeyWordsQuery)
        gwdb.execSQL(createHeroesQuery)

    }
}
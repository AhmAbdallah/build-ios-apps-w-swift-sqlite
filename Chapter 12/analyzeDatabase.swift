func analyzeDatabase(_ name:String){                let sql:String = "ANALYZE Chinook_Sqlite.sqlite"        if(sqlite3_open(dbPath.path!, &db)==SQLITE_OK){            if(sqlite3_prepare_v2(db, sql.cString(using: String.Encoding.utf8)!, -1, &sqlStatement, nil)==SQLITE_OK){while(sqlite3_step(sqlStatement)==SQLITE_ROW){                    let output = String(cString: UnsafePointer<Int8>(sqlite3_column_text(sqlStatement, 0)))                   	print(output)                   }            }        }        sqlite3_close(db)}
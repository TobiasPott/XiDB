TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER session_delete\n    BEFORE DELETE ON accounts_sessions\n    FOR EACH ROW\nBEGIN\n    UPDATE `char_stats` SET zoning = 0 WHERE `charid` = OLD.charid;\nEND'
sql_modes=1411383296
definers='root@localhost'
client_cs_names='utf8mb3'
connection_cl_names='utf8mb3_uca1400_ai_ci'
db_cl_names='utf8mb4_general_ci'
created=1758366235934013

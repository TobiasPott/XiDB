TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER account_delete\n    BEFORE DELETE ON accounts\n    FOR EACH ROW\nBEGIN\n    DELETE FROM `accounts_banned` WHERE `accid` = OLD.id;\n    DELETE FROM `chars` WHERE `accid` = OLD.id;\nEND'
sql_modes=1411383296
definers='root@localhost'
client_cs_names='utf8mb3'
connection_cl_names='utf8mb3_uca1400_ai_ci'
db_cl_names='utf8mb4_general_ci'
created=1758367839306652

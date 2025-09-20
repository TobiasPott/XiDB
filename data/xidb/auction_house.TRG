TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER auction_house_list\n    BEFORE INSERT ON auction_house\n    FOR EACH ROW\nBEGIN\n    INSERT IGNORE INTO `auction_house_items` SET `itemid` = NEW.itemid;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER auction_house_buy\n    BEFORE UPDATE ON auction_house\n    FOR EACH ROW\nBEGIN\n    IF OLD.seller != 0 AND NEW.sale != 0 THEN INSERT INTO delivery_box VALUES (NEW.seller, NEW.seller_name, 1, 0, 0xFFFF, NEW.itemid, NEW.sale, NULL, 0, \'AH-Jeuno\', 0, 0); END IF;\nEND'
sql_modes=1411383296 1411383296
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb3' 'utf8mb3'
connection_cl_names='utf8mb3_uca1400_ai_ci' 'utf8mb3_uca1400_ai_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1758367839289194 1758367839283066

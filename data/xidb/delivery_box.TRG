TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER delivery_box_insert\n    BEFORE INSERT ON delivery_box\n    FOR EACH ROW\nBEGIN\n    SET @slot := 0;\n    SELECT MAX(slot) INTO @slot FROM delivery_box WHERE box = NEW.box AND charid = NEW.charid;\n    IF NEW.box = 1 THEN\n    IF @slot IS NULL OR @slot < 8 THEN SET NEW.slot := 8; ELSE SET NEW.slot := @slot + 1; END IF;\n    END IF;\nEND'
sql_modes=1411383296
definers='root@localhost'
client_cs_names='utf8mb3'
connection_cl_names='utf8mb3_uca1400_ai_ci'
db_cl_names='utf8mb4_general_ci'
created=1758367839300854

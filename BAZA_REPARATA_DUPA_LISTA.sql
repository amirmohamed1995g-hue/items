-- ======================================================
-- BAZA DE DATE REPARATA DUPA LISTA TA
-- ======================================================

-- 1. REPARARE ARME (CAPITALIZATE)
-- Stergem versiunile mici ca sa nu se bata cap in cap
DELETE FROM `items` WHERE `item` IN ('weapon_melee_knife_trader', 'weapon_melee_knife', 'weapon_melee_knife_jawbone', 'weapon_melee_cleaver', 'weapon_melee_hatchet_hunter', 'weapon_melee_machete', 'weapon_melee_machete_collector', 'weapon_bow', 'weapon_rifle_elephant', 'weapon_rifle_varmint', 'weapon_sniperrifle_rollingblock', 'weapon_sniperrifle_carcano', 'weapon_rifle_springfield', 'weapon_rifle_boltaction', 'weapon_repeater_winchester', 'weapon_repeater_henry', 'weapon_repeater_evans', 'weapon_repeater_carbine', 'weapon_pistol_volcanic', 'weapon_pistol_m1899', 'weapon_revolver_schofield', 'weapon_revolver_lemat', 'weapon_revolver_doubleaction', 'weapon_revolver_cattleman', 'weapon_revolver_navy', 'weapon_thrown_tomahawk', 'weapon_thrown_throwing_knives', 'weapon_thrown_poisonbottle', 'weapon_thrown_bolas', 'weapon_shotgun_sawedoff', 'weapon_shotgun_repeating', 'weapon_shotgun_pump', 'weapon_shotgun_doublebarrel', 'weapon_lasso', 'weapon_lasso_reinforced', 'weapon_kit_binoculars_improved', 'weapon_kit_binoculars', 'weapon_fishingrod', 'weapon_kit_camera', 'weapon_kit_camera_advanced', 'weapon_melee_lantern', 'weapon_melee_davy_lantern');

INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `groupId`, `metadata`, `weight`, `desc`, `degradation`) VALUES
('WEAPON_MELEE_KNIFE_TRADER', 'Tradders Knife', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_MELEE_KNIFE', 'Knife', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_MELEE_KNIFE_JAWBONE', 'JawBone Knife', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_MELEE_CLEAVER', 'Cleaver', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_MELEE_HATCHET_HUNTER', 'Hunter Hatchet', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_MELEE_MACHETE', 'Machete', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_MELEE_MACHETE_COLLECTOR', 'Collector Machete', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_BOW', 'Bow', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_RIFLE_ELEPHANT', 'Elephant Rifle', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_RIFLE_VARMINT', 'Varmint Rifle', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_SNIPERRIFLE_ROLLINGBLOCK', 'Rollingblock Rifle', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_SNIPERRIFLE_CARCANO', 'Carcano Rifle', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_RIFLE_SPRINGFIELD', 'Springfield Rifle', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_RIFLE_BOLTACTION', 'Boltaction Rifle', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_REPEATER_WINCHESTER', 'Winchester Repeater', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_REPEATER_HENRY', 'Henry Repeater', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_REPEATER_EVANS', 'Evans Repeater', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_REPEATER_CARBINE', 'Carbine Repeater', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_PISTOL_VOLCANIC', 'Volcanic Pistol', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_PISTOL_M1899', 'M1899 Pistol', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_REVOLVER_SCHOFIELD', 'Schofield Revolver', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_REVOLVER_LEMAT', 'Lemat Revolver', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_REVOLVER_DOUBLEACTION', 'Double Action Revolver', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_REVOLVER_CATTLEMAN', 'Cattleman Revolver', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_REVOLVER_NAVY', 'Navy Revolver', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_THROWN_TOMAHAWK', 'Tomahawk', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_THROWN_THROWING_KNIVES', 'Knives', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_THROWN_POISONBOTTLE', 'Poison Bottle', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_THROWN_BOLAS', 'Bolas', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_SHOTGUN_SAWEDOFF', 'Sawedoff Shotgun', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_SHOTGUN_REPEATING', 'Repeating Shotgun', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_SHOTGUN_PUMP', 'Pump Shotgun', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_SHOTGUN_DOUBLEBARREL', 'Doublebarrel Shotgun', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_LASSO', 'Lasso', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_LASSO_REINFORCED', 'Reinforced Lasso', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_KIT_BINOCULARS_IMPROVED', 'Improved Binoculars', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_KIT_BINOCULARS', 'Binoculars', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_FISHINGROD', 'Fishing Rod', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_KIT_CAMERA', 'Camera', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_KIT_CAMERA_ADVANCED', 'Advanced Camera', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_MELEE_LANTERN', 'Lantern', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0),
('WEAPON_MELEE_DAVY_LANTERN', 'Davy Lantern', 1, 1, 'item_standard', 1, 1, '{}', 1.0, 'Arma', 0);

-- 2. REPARARE MUNITIE (Litere mici)
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `groupId`, `metadata`, `weight`, `desc`, `degradation`) VALUES
('ammorepeaternormal', 'Repeater Ammo Normal', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammorepeaterexpress', 'Repeater Ammo Express', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammorepeatervelocity', 'Repeater Ammo Velocity', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammorepeatersplitpoint', 'Repeater Ammo Splitpoint', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammorevolvernormal', 'Revolver Ammo Normal', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammorevolverexpress', 'Revolver Ammo Express', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammorevolvervelocity', 'Revolver Ammo Velocity', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammorevolversplitpoint', 'Revolver Ammo Splitpoint', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammoriflenormal', 'Rifle Ammo Normal', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammoelephant', 'Elephant Rifle Ammo', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammorifleexpress', 'Rifle Ammo Express', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammoriflevelocity', 'Rifle Ammo Velocity', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammoriflesplitpoint', 'Rifle Ammo Splitpoint', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammoshotgunnormal', 'Shotgun Ammo Normal', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammoshotgunslug', 'Shotgun Ammo Slug', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammopistolnormal', 'Pistol Ammo Normal', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammopistolexpress', 'Pistol Ammo Express', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammopistolvelocity', 'Pistol Ammo Velocity', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammopistolsplitpoint', 'Pistol Ammo Splitpoint', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammoarrownormal', 'Arrow Normal', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammoarrowsmallgame', 'Arrow Small Game', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammovarmint', 'Varmint ammo', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammoknives', 'Knives ammo', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammotomahawk', 'Tomahawk Ammo', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0),
('ammobolla', 'Bolla Ammo', 100, 1, 'item_standard', 1, 1, '{}', 0.1, 'Munitie', 0);

-- 3. REPARARE CONSOLA (Seminte si restul)
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `groupId`, `metadata`, `weight`, `desc`, `degradation`) VALUES
('Wild_Carrot', 'Wild Carrot', 20, 1, 'item_standard', 1, 1, '{}', 0.2, 'Mancare animal', 0),
('Crows_Garlic_Seed', 'Garlic Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Creeking_Thyme_Seed', 'Thyme Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Creekplum_Seed', 'Creekplum Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('tropicalPunchMoonshine', 'Tropical Moonshine', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Bautura', 0),
('wildCiderMoonshine', 'Wild Cider', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Bautura', 0),
('Grape', 'Grape', 50, 1, 'item_standard', 1, 1, '{}', 0.1, 'Fruct', 0);

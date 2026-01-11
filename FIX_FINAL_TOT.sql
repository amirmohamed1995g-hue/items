-- SCRIPT REPARARE FINALA (CONSOLA + ICOANE + ECHIPARE ARME)
-- RUULEAZA ACEST FISIER DIRECT IN HEIDISQL (F9)

-- 1. REPARARE ARME (ECHIPARE)
-- Seteaza tipul standard si usable=1 pentru a le putea folosi
UPDATE `items` SET `type` = 'item_standard', `usable` = 1 WHERE `item` LIKE 'weapon_%';
UPDATE `items` SET `type` = 'item_standard', `usable` = 1 WHERE `item` LIKE 'WEAPON_%';

-- 2. DUPLICARE ARME LITERE MARI (Fix iconite vechi si compatibilitate)
-- Unele baze de date vechi au 'WEAPON_REVOLVER', altele 'weapon_revolver'
-- Acest cod asigura ca ambele exista in tabelul items
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `groupId`, `metadata`, `weight`, `desc`, `degradation`)
SELECT UPPER(`item`), `label`, `limit`, `can_remove`, `type`, `usable`, `groupId`, `metadata`, `weight`, `desc`, `degradation`
FROM `items`
WHERE `item` LIKE 'weapon_%';

-- 3. REPARARE ITEME SEMNALATE IN CONSOLA (CASE SENSITIVE)
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `groupId`, `metadata`, `weight`, `desc`, `degradation`) VALUES
('Wild_Carrot', 'Wild Carrot', 20, 1, 'item_standard', 1, 1, '{}', 0.2, 'Mancare animal', 0),
('Crows_Garlic_Seed', 'Garlic Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Creeking_Thyme_Seed', 'Thyme Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Creekplum_Seed', 'Creekplum Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Yarrow_Seed', 'Yarrow Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Black_Currant_Seed', 'Black Currant Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Parasol_Mushroom_Seed', 'Parasol Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('American_Ginseng_Seed', 'Ginseng Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Wild_Mint_Seed', 'Wild Mint Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Alaskan_Ginseng_Seed', 'Alaskan Ginseng Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Apple_Seed', 'Apple Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Milk_Weed_Seed', 'Milk Weed Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Choc_Daisy_Seed', 'Choc Daisy Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Indian_Tobbaco_Seed', 'Tobacco Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Wintergreen_Berry_Seed', 'Wintergreen Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Wild_Carrot_Seed', 'Wild Carrot Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Oleander_Sage_Seed', 'Oleander Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('English_Mace_Seed', 'English Mace Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Red_Raspberry_Seed', 'Raspberry Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Red_Sage_Seed', 'Red Sage Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Prairie_Poppy_Seed', 'Poppy Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Blood_Flower_Seed', 'Blood Flower Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Oregano_Seed', 'Oregano Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Black_Berry_Seed', 'Black Berry Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('p_baitBread01x', 'Bread Bait', 100, 1, 'item_standard', 1, 1, '{}', 0.05, 'Momeala', 0),
('p_baitCorn01x', 'Corn Bait', 100, 1, 'item_standard', 1, 1, '{}', 0.05, 'Momeala', 0),
('p_baitCheese01x', 'Cheese Bait', 100, 1, 'item_standard', 1, 1, '{}', 0.05, 'Momeala', 0),
('p_baitWorm01x', 'Worm Bait', 100, 1, 'item_standard', 1, 1, '{}', 0.05, 'Momeala', 0),
('p_baitCricket01x', 'Cricket Bait', 100, 1, 'item_standard', 1, 1, '{}', 0.05, 'Momeala', 0),
('p_FinisdFishlure01x', 'Fishing Lure', 10, 1, 'item_standard', 1, 1, '{}', 0.1, 'Momeala', 0),
('tropicalPunchMoonshine', 'Tropical Moonshine', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Drink', 0),
('wildCiderMoonshine', 'Wild Cider', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Drink', 0),
('Grape', 'Grape', 50, 1, 'item_standard', 1, 1, '{}', 0.1, 'Fruct', 0);

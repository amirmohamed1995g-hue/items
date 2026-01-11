-- FIX SPECIFIC ITEMS FORCING CASING
-- Acest script sterge mai intai variantele vechi pentru a evita conflictele si insereaza numele exact cerut.

DELETE FROM `items` WHERE `item` IN (
    'Oleander_Sage_Seed', 'Choc_Daisy_Seed', 'Milk_Weed_Seed', 'Prairie_Poppy_Seed', 
    'Parasol_Mushroom_Seed', 'Blood_Flower_Seed', 'English_Mace_Seed', 'Oregano_Seed', 
    'Alaskan_Ginseng_Seed', 'Apple_Seed', 'Indian_Tobbaco_Seed', 'Creeking_Thyme_Seed', 
    'Black_Berry_Seed', 'Creekplum_Seed', 'Crows_Garlic_Seed', 'Black_Currant_Seed', 
    'American_Ginseng_Seed', 'p_baitBread01x', 'p_baitCorn01x', 'p_baitCheese01x', 
    'p_baitWorm01x', 'p_baitCricket01x', 'p_FinisdFishlure01x'
);

INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `groupId`, `metadata`, `weight`, `desc`, `degradation`) VALUES
('Oleander_Sage_Seed', 'Oleander Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Choc_Daisy_Seed', 'Choc Daisy Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Milk_Weed_Seed', 'Milk Weed Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Prairie_Poppy_Seed', 'Poppy Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Parasol_Mushroom_Seed', 'Parasol Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Blood_Flower_Seed', 'Blood Flower Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('English_Mace_Seed', 'English Mace Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Oregano_Seed', 'Oregano Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Alaskan_Ginseng_Seed', 'Alaskan Ginseng Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Apple_Seed', 'Apple Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Indian_Tobbaco_Seed', 'Tobacco Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Creeking_Thyme_Seed', 'Thyme Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Black_Berry_Seed', 'Black Berry Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Creekplum_Seed', 'Creekplum Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Crows_Garlic_Seed', 'Garlic Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('Black_Currant_Seed', 'Currant Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('American_Ginseng_Seed', 'Ginseng Seed', 100, 1, 'item_standard', 1, 1, '{}', 0.01, 'Seminte', 0),
('p_baitBread01x', 'Bread Bait', 50, 1, 'item_standard', 1, 1, '{}', 0.05, 'Momeala', 0),
('p_baitCorn01x', 'Corn Bait', 50, 1, 'item_standard', 1, 1, '{}', 0.05, 'Momeala', 0),
('p_baitCheese01x', 'Cheese Bait', 50, 1, 'item_standard', 1, 1, '{}', 0.05, 'Momeala', 0),
('p_baitWorm01x', 'Worm Bait', 50, 1, 'item_standard', 1, 1, '{}', 0.05, 'Momeala', 0),
('p_baitCricket01x', 'Cricket Bait', 50, 1, 'item_standard', 1, 1, '{}', 0.05, 'Momeala', 0),
('p_FinisdFishlure01x', 'Fishing Lure', 10, 1, 'item_standard', 1, 1, '{}', 0.1, 'Momeala', 0);

-- FIX FINAL VORP ITEMS USABLE & MISSING
UPDATE `items` SET `usable` = 1 WHERE `item` IN (
    'horsemeal', 'stim', 'unique_brad_horsesugar', 'unique_horse_feed', 
    'portable_canoe', 'idcard', 'broom', 'p_crawdad01x', 
    'p_finishedragonfly01x', 'p_finishdcrawd01x', 'p_finishedragonflylegendary01x', 
    'p_finisdfishlurelegendary01x', 'p_finishdcrawdlegendary01x', 
    'p_lgoc_spinner_v4', 'p_lgoc_spinner_v6', 'goldpan', 
    'mp001_p_mp_still02x', 'handcuffs', 'antipoison', 
    'unique_ayahuasca_diablo', 'vodka', 'beer', 'tequila', 'hemp', 'heroin', 
    'cookedbluegil', 'cheesecake', 'chococake', 'syringe'
);

INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `groupId`, `metadata`, `weight`, `desc`, `degradation`) VALUES
('sugarcube', 'Sugar Cube', 50, 1, 'item_standard', 1, 1, '{}', 0.1, 'Zahar ptr cai', 0),
('Wild_Carrot', 'Wild Carrot', 20, 1, 'item_standard', 1, 1, '{}', 0.2, 'Morcov salbatic', 0),
('provision_jail_keys', 'Jail Keys', 1, 1, 'item_standard', 1, 1, '{}', 0.1, 'Chei inchisoare', 0),
('doctor_keys', 'Doctor Keys', 1, 1, 'item_standard', 1, 1, '{}', 0.1, 'Chei doctor', 0),
('water', 'Water', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Apa plata', 0),
('whisky', 'Whisky', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Whisky vechi', 0),
('beer', 'Beer', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Bere rece', 0),
('wine', 'Wine', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Vin rosu', 0),
('moonshineapple', 'Apple Moonshine', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Alcohol', 0),
('moonshinepeach', 'Peach Moonshine', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Alcohol', 0),
('moonshinepear', 'Pear Moonshine', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Alcohol', 0),
('moonshineplum', 'Plum Moonshine', 10, 1, 'item_standard', 1, 1, '{}', 0.5, 'Alcohol', 0),
('antibiotics', 'Antibiotics', 10, 1, 'item_standard', 1, 1, '{}', 0.1, 'Antibiotice', 0),
('herbalremedy', 'Herbal Remedy', 20, 1, 'item_standard', 1, 1, '{}', 0.2, 'Remediu natural', 0),
('peacepipe', 'Peace Pipe', 1, 1, 'item_standard', 1, 1, '{}', 0.3, 'Pipa pacii', 0),
('cigaret', 'Cigarette', 20, 1, 'item_standard', 1, 1, '{}', 0.1, 'Tigara', 0);

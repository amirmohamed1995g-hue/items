#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import re

# Configurare
FOLDER_IMAGINI = r"c:\Users\Administrator\Desktop\desperados_newyear\items\items"
FISIER_IESIRE = r"c:\Users\Administrator\Desktop\desperados_newyear\items\items\BAZA_DE_DATE_ITEME.sql"

def curata_nume(filename):
    nume = filename.replace('.png', '')
    nume = re.sub(r'[^a-zA-Z0-9_]', '_', nume)
    return nume.lower()

def creeaza_label(nume):
    label = nume.replace('_', ' ')
    return ' '.join(word.capitalize() for word in label.split())

def determina_proprietati(nume):
    nume_mic = nume.lower()
    # Iteme consumabile
    consumabile = ['food', 'meat', 'drink', 'alcohol', 'water', 'bandage', 'medicine', 'apple', 'bread', 'stew', 'coffee', 'seed', 'bait', 'ammo', 'canteen', 'campfire', 'brush', 'carrot', 'consumable']
    
    usable = 1 if any(x in nume_mic for x in consumabile) else 0
    
    # Valori default
    limit = 20
    weight = 0.5
    
    if 'ammo' in nume_mic:
        limit = 100
        weight = 0.1
    elif 'seed' in nume_mic:
        limit = 50
        weight = 0.05
    elif 'furniture' in nume_mic:
        limit = 1
        weight = 5.0
        
    return {'usable': usable, 'limit': limit, 'weight': weight}

def genereaza_sql():
    print(">>> Scanare imagini...")
    fisiere = [f for f in os.listdir(FOLDER_IMAGINI) if f.lower().endswith('.png')]
    fisiere.sort()
    
    total = len(fisiere)
    print(f">>> Am gasit {total} iteme. Generez SQL...")
    
    with open(FISIER_IESIRE, 'w', encoding='utf-8') as f:
        # Header
        f.write("-- ============================================================\n")
        f.write("-- BAZA DE DATE COMPLETA ITEME REDM\n")
        f.write(f"-- Total iteme: {total}\n")
        f.write("-- ============================================================\n\n")
        
        # Creare Tabel (Optional, dar sigur)
        f.write("CREATE TABLE IF NOT EXISTS `items` (\n")
        f.write("  `item` varchar(50) NOT NULL,\n")
        f.write("  `label` varchar(50) NOT NULL,\n")
        f.write("  `limit` int(11) NOT NULL DEFAULT 20,\n")
        f.write("  `can_remove` tinyint(4) NOT NULL DEFAULT 1,\n")
        f.write("  `type` varchar(50) NOT NULL DEFAULT 'item_standard',\n")
        f.write("  `usable` tinyint(4) NOT NULL DEFAULT 0,\n")
        f.write("  `id` int(11) NOT NULL AUTO_INCREMENT,\n")
        f.write("  `groupId` int(11) DEFAULT 1,\n")
        f.write("  `metadata` varchar(255) DEFAULT '{}',\n")
        f.write("  `weight` float DEFAULT 0.5,\n")
        f.write("  `desc` varchar(255) DEFAULT 'Item importat',\n")
        f.write("  `degradation` int(11) DEFAULT 0,\n")
        f.write("  PRIMARY KEY (`id`),\n")
        f.write("  UNIQUE KEY `item` (`item`)\n")
        f.write(") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n")
        
        f.write("TRUNCATE TABLE `items`;\n\n")

        vazute = set()
        item_id = 1
        batch_size = 50
        
        for i in range(0, total, batch_size):
            batch = fisiere[i:i+batch_size]
            date_batch = []
            
            for file in batch:
                nume_clean = curata_nume(file)
                if nume_clean in vazute: continue
                vazute.add(nume_clean)
                
                label = creeaza_label(nume_clean)
                p = determina_proprietati(nume_clean)
                
                valori = (
                    f"('{nume_clean}', '{label}', {p['limit']}, 1, 'item_standard', "
                    f"{p['usable']}, {item_id}, 1, '{{}}', {p['weight']}, 'Obiect de colectie', 0)"
                )
                date_batch.append(valori)
                item_id += 1
            
            if date_batch:
                f.write(f"-- Batch {i//batch_size + 1}\n")
                f.write("INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `groupId`, `metadata`, `weight`, `desc`, `degradation`) VALUES\n")
                f.write(",\n".join(date_batch) + ";\n\n")

    print(f">>> GATA! Fisier creat: {FISIER_IESIRE}")

if __name__ == "__main__":
    genereaza_sql()

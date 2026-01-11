#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
import re

# ===========================================
# CONFIGURARE MASTER
# ===========================================
IMAGES_FOLDER = r"c:\Users\Administrator\Desktop\desperados_newyear\items\items"
OUTPUT_FILE = r"c:\Users\Administrator\Desktop\desperados_newyear\items\items\MASTER_IMPORT.sql"

# Default values pentru versiunea ta de VORP
DEFAULT_GROUP_ID = 1
DEFAULT_METADATA = '{}'
DEFAULT_DEGRADATION = 0
DEFAULT_CAN_REMOVE = 1
DEFAULT_TYPE = "item_standard"

def clean_item_name(filename):
    name = filename.replace('.png', '')
    # Păstrăm literele mici pentru compatibilitate maximă SQL/RedM
    name = name.lower()
    name = re.sub(r'[^a-zA-Z0-9_]', '_', name)
    return name

def create_label(item_name):
    label = item_name.replace('_', ' ')
    return ' '.join(word.capitalize() for word in label.split())

def determine_props(item_name):
    name_lower = item_name.lower()
    # Iteme care TREBUIE să fie usable (usable = 1)
    usable_keywords = ['food', 'meat', 'drink', 'alcohol', 'water', 'bandage', 'medicine', 'apple', 'bread', 'stew', 'coffee', 'seed', 'bait', 'ammo', 'watch', 'keys', 'license', 'book', 'canteen', 'campfire', 'brush', 'carrot', 'consumable']
    
    is_usable = 1 if any(x in name_lower for x in usable_keywords) else 0
    
    # Greutate și Limită
    limit = 10
    weight = 0.3
    
    if 'ammo' in name_lower:
        limit = 100
        weight = 0.1
    if 'seed' in name_lower:
        limit = 50
        weight = 0.05
    if any(x in name_lower for x in ['coat', 'pant', 'hat', 'boot']):
        limit = 1
        weight = 1.0
    
    return {'usable': is_usable, 'limit': limit, 'weight': weight}

def generate_sql():
    print(">>> Scanez folderul pentru imagini PNG...")
    if not os.path.exists(IMAGES_FOLDER):
        print(f"EROARE: Folderul {IMAGES_FOLDER} nu exista!")
        return

    png_files = [f for f in os.listdir(IMAGES_FOLDER) if f.lower().endswith('.png')]
    png_files.sort()
    
    print(f">>> Am gasit {len(png_files)} imagini. Generez MASTER_IMPORT.sql...")
    
    with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
        # Header script
        f.write("-- MASTER IMPORT RedM Items\n")
        f.write("TRUNCATE TABLE `items`;\n\n")
        
        seen_items = set()
        item_id = 1
        batch_size = 50
        
        for i in range(0, len(png_files), batch_size):
            batch = png_files[i:i+batch_size]
            valid_batch_items = []
            
            for filename in batch:
                item_name = clean_item_name(filename)
                if item_name in seen_items: continue
                seen_items.add(item_name)
                
                label = create_label(item_name)
                p = determine_props(item_name)
                
                item_data = (
                    f"('{item_name}', '{label}', {p['limit']}, {DEFAULT_CAN_REMOVE}, "
                    f"'{DEFAULT_TYPE}', {p['usable']}, {item_id}, {DEFAULT_GROUP_ID}, "
                    f"'{DEFAULT_METADATA}', {p['weight']}, 'Obiect importat', {DEFAULT_DEGRADATION})"
                )
                valid_batch_items.append(item_data)
                item_id += 1
            
            if valid_batch_items:
                f.write(f"-- Batch {i//batch_size + 1}\n")
                f.write("INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `groupId`, `metadata`, `weight`, `desc`, `degradation`) VALUES\n")
                f.write(",\n".join(valid_batch_items) + ";\n\n")

    print(f">>> GATA! Fisier creat: {OUTPUT_FILE}")

if __name__ == "__main__":
    generate_sql()

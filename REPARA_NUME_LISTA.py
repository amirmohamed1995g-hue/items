import os

def fix_by_list():
    folder = r"c:\Users\Administrator\Desktop\desperados_newyear\items\items"
    
    # Lista de arme din mesajul tau (trebuie sa fie CAPS)
    weapons = [
        "WEAPON_MELEE_KNIFE_TRADER", "WEAPON_MELEE_KNIFE", "WEAPON_MELEE_KNIFE_JAWBONE",
        "WEAPON_MELEE_CLEAVER", "WEAPON_MELEE_HATCHET_HUNTER", "WEAPON_MELEE_MACHETE",
        "WEAPON_MELEE_MACHETE_COLLECTOR", "WEAPON_BOW", "WEAPON_RIFLE_ELEPHANT",
        "WEAPON_RIFLE_VARMINT", "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", "WEAPON_SNIPERRIFLE_CARCANO",
        "WEAPON_RIFLE_SPRINGFIELD", "WEAPON_RIFLE_BOLTACTION", "WEAPON_REPEATER_WINCHESTER",
        "WEAPON_REPEATER_HENRY", "WEAPON_REPEATER_EVANS", "WEAPON_REPEATER_CARBINE",
        "WEAPON_PISTOL_VOLCANIC", "WEAPON_PISTOL_M1899", "WEAPON_REVOLVER_SCHOFIELD",
        "WEAPON_REVOLVER_LEMAT", "WEAPON_REVOLVER_DOUBLEACTION", "WEAPON_REVOLVER_CATTLEMAN",
        "WEAPON_REVOLVER_NAVY", "WEAPON_THROWN_TOMAHAWK", "WEAPON_THROWN_THROWING_KNIVES",
        "WEAPON_THROWN_POISONBOTTLE", "WEAPON_THROWN_BOLAS", "WEAPON_SHOTGUN_SAWEDOFF",
        "WEAPON_SHOTGUN_REPEATING", "WEAPON_SHOTGUN_PUMP", "WEAPON_SHOTGUN_DOUBLEBARREL",
        "WEAPON_LASSO", "WEAPON_LASSO_REINFORCED", "WEAPON_KIT_BINOCULARS_IMPROVED",
        "WEAPON_KIT_BINOCULARS", "WEAPON_FISHINGROD", "WEAPON_KIT_CAMERA",
        "WEAPON_KIT_CAMERA_ADVANCED", "WEAPON_MELEE_LANTERN", "WEAPON_MELEE_DAVY_LANTERN"
    ]
    
    # Incepem redenumirea
    files = os.listdir(folder)
    count_w = 0
    count_a = 0
    
    for f in files:
        f_lower = f.lower()
        # Daca e arma, o punem CAPS
        found_w = False
        for w in weapons:
            if f_lower == (w.lower() + ".png"):
                old = os.path.join(folder, f)
                new = os.path.join(folder, w + ".png")
                if f != (w + ".png"):
                    os.rename(old, new)
                    count_w += 1
                found_w = True
                break
        
        # Daca e munitie (incepe cu ammo), o punem lowercase
        if not found_w and f_lower.startswith("ammo") and f_lower.endswith(".png"):
            old = os.path.join(folder, f)
            new = os.path.join(folder, f_lower)
            if f != f_lower:
                os.rename(old, new)
                count_a += 1

    print(f"Am reparat {count_w} arme (CAPS) si {count_a} munitii (mici).")

if __name__ == "__main__":
    fix_by_list()

import os

def fix_weapon_casing():
    folder = r"c:\Users\Administrator\Desktop\desperados_newyear\items\items"
    print(f">>> Incep redenumirea armelor in {folder}...")
    
    if not os.path.exists(folder):
        print("EROARE: Folderul nu exista!")
        return

    count = 0
    files = os.listdir(folder)
    
    for filename in files:
        # Daca fisierul incepe cu "weapon_" (indiferent de litere mari/mici)
        if filename.lower().startswith("weapon_"):
            old_path = os.path.join(folder, filename)
            # Transformam in litere MARI (exemplu: WEAPON_REVOLVER.PNG)
            new_filename = filename.upper()
            new_path = os.path.join(folder, new_filename)
            
            # Evitam eroarea daca fisierul e deja numit corect
            if filename != new_filename:
                try:
                    os.rename(old_path, new_path)
                    count += 1
                except Exception as e:
                    print(f"Eroare la {filename}: {e}")

    print(f">>> GATA! Am redenumit {count} poze de arme in LITERE MARI.")

if __name__ == "__main__":
    fix_weapon_casing()

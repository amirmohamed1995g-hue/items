import os

IMAGES_FOLDER = r"c:\Users\Administrator\Desktop\desperados_newyear\items\items"

def rename_to_lowercase():
    print(">>> Redenumesc fisierele PNG in litere mici pentru compatibilitate web/GitHub...")
    if not os.path.exists(IMAGES_FOLDER):
        print(f"EROARE: Folderul {IMAGES_FOLDER} nu exista!")
        return

    png_files = [f for f in os.listdir(IMAGES_FOLDER) if f.lower().endswith('.png')]
    count = 0
    
    for filename in png_files:
        if any(c.isupper() for c in filename):
            old_path = os.path.join(IMAGES_FOLDER, filename)
            new_filename = filename.lower()
            new_path = os.path.join(IMAGES_FOLDER, new_filename)
            
            # Daca exista deja un fisier cu numele mic (pe Windows e posibil case-insensitive)
            # trebuie sa fim atenti. rename pe un nume identic dar case diferit merge de obicei.
            try:
                os.rename(old_path, new_path)
                count += 1
            except Exception as e:
                print(f"Eroare la redenumire {filename}: {e}")

    print(f">>> GATA! Am redenumit {count} fisiere.")

if __name__ == "__main__":
    rename_to_lowercase()

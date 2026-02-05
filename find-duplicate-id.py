# kadang di references.bib ada duplicate IDs, dan ini jadi masalah pada sitasi
# kode ini digunakan utuk menemukan duplicate IDs

def find_duplicate_bib_ids(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    ids = []
    for line in lines:
        line = line.strip()
        if line.startswith('@'):
            # Ambil ID setelah @type{ID,
            try:
                entry_type_and_rest = line.split('{', 1)
                if len(entry_type_and_rest) == 2:
                    id_and_rest = entry_type_and_rest[1]
                    bib_id = id_and_rest.split(',', 1)[0].strip()
                    ids.append(bib_id)
            except Exception as e:
                print(f"Error parsing line: {line}")
                continue

    # Deteksi duplikat
    from collections import Counter
    id_counts = Counter(ids)
    duplicates = {k: v for k, v in id_counts.items() if v > 1}

    if duplicates:
        print("Duplikat ditemukan:")
        for bib_id, count in duplicates.items():
            print(f"- {bib_id}: {count} kali")
    else:
        print("Tidak ada duplikasi ID ditemukan.")

# Contoh pemakaian
find_duplicate_bib_ids('references.bib')

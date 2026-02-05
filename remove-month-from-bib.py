# in case pada bibliografi / daftar pustaka / sitasi muncul keterangan bulan (month), 
# sedangkan yang diinginkan hanya keterangan tahun (year)
# skrip Python ini digunakan untuk menghilangkan keterangan month dari references.bib
# alih-alih memodifikasi file .bst

def remove_month_from_bib(input_path, output_path):
    with open(input_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    new_lines = []
    for line in lines:
        # Check if line contains the "month" key (case-insensitive), allowing whitespace before/after `=`
        if line.strip().lower().startswith("month"):
            continue  # skip this line
        new_lines.append(line)

    with open(output_path, 'w', encoding='utf-8') as f:
        f.writelines(new_lines)

# Example usage
remove_month_from_bib('references.bib', 'references-new.bib')

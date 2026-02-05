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

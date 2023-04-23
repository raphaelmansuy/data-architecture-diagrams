import sys
import os
import re

def extract_mermaid(file_path, target_dir):
    # Extract mermaid schemas from markdown files
    # file_path: path to markdown file
    # target_dir: directory to save mmd files
    # returns: None
    with open(file_path, 'r') as f:
        content = f.read()

    pattern = r'```mermaid([\s\S]*?)```'
    mermaid_blocks = re.findall(pattern, content)

    if not mermaid_blocks:
        print(f"No mermaid schemas found in {file_path}")
        return

    print(f"Found {len(mermaid_blocks)} mermaid schemas in files {file_path}")

    for i, block in enumerate(mermaid_blocks):
        # replace space with underscore in file name
        # get file name from file path
        file_name = os.path.basename(file_path)
        # replace space with underscore
        file_name = file_name.replace(' ', '_')
        file_name = file_name.replace(':', '_')
        # create output file path
        output_file = os.path.join(target_dir, f'{file_name}_{i}.mmd')
        try:
            with open(output_file, 'w') as f:
                print(f"writing schema {i} to", output_file)
                f.write(block.strip())
        except Exception as e:
            print("Failed to write schema to", output_file)
            print(e)



def main(input_dir, output_dir):
    """Extract Mermaid code blocks from Markdown files in input_dir and write
    them to files in output_dir."""
    for root, dirs, files in os.walk(input_dir):
        for file in files:
            if file.endswith('.md'):
                file_path = os.path.join(root, file)
                try:
                    print(f"Processing {file}")
                    extract_mermaid(file_path, output_dir)
                except Exception as err:
                    print(f"Failed to process {file}: {err}")



if __name__ == '__main__':
    if len(sys.argv) < 3:
        print("Usage: python extract.py <dir_path> <target_dir>")
        sys.exit(1)

    dir_path = sys.argv[1]
    target_dir = sys.argv[2]
    
    if not os.path.exists(dir_path):
        print("Directory {} does not exist".format(dir_path))
        sys.exit(1)

    if not os.path.exists(target_dir):
        os.makedirs(target_dir)

    main(dir_path, target_dir)

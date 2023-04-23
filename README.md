# Data integration books diagrams

## Tools to generate the diagrams

### Step1 install mmdc

```bash
npm install -g @mermaid-js/mermaid-cli
```

### Step2 extract the diagrams from the markdown files

```bash
extract_all.sh chapter3 mermaid/chapter3
```

This extracts the mermaid diagrams from the markdown files contained in the `chapter3` director and saves them in the `mermaid/chapter3` folder.

### Step3 generate the diagrams

```bash
./generate_mermaid.sh -d mermaid/chapter3 -o  diagrams/chapter3
```


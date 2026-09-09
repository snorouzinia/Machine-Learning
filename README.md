# Resume


## Run the project

This repository is a resume source folder. The main workflow is to edit the Word document and generate the PDF with LibreOffice.

### Prerequisites

Install LibreOffice on macOS:

```bash
brew install --cask libreoffice
```

### Generate the PDF

Run the build script from the repository root:

```bash
bash scripts/build_pdf.sh
```

If the script is not executable, you can make it executable first and then run it:

```bash
chmod +x scripts/build_pdf.sh
./scripts/build_pdf.sh
```

### Expected output

The script looks for `Resume.docx` or `Resume-PM.docx` in the repository root and writes `Resume-PM.pdf`.
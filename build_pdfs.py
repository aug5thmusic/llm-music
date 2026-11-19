"""Build publication PDFs with LilyPond, or audit existing PDFs with Poppler."""

import argparse
import re
import subprocess
import sys
from pathlib import Path
from tempfile import TemporaryDirectory


ROOT = Path(__file__).resolve().parent


def check_pdf(pdf):
    urls = subprocess.check_output(["pdfinfo", "-url", str(pdf)])
    count = len(re.findall(rb"^\s*\d+\s+\S+\s+textedit:", urls, re.I | re.M))
    if count:
        raise ValueError(f"{pdf}: {count} LilyPond source links")


def build_score(source):
    # A score can produce several books and MIDI files. Publish only its PDFs.
    with TemporaryDirectory(dir=source.parent) as output_dir:
        subprocess.run(
            ["lilypond", "-dno-point-and-click", "-o", output_dir, source.name],
            cwd=source.parent,
            check=True,
        )
        pdfs = sorted(Path(output_dir).glob("*.pdf"))
        if not pdfs:
            raise ValueError(f"{source}: LilyPond produced no PDFs")
        for pdf in pdfs:
            check_pdf(pdf)
        for pdf in pdfs:
            pdf.replace(source.parent / pdf.name)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true", help="scan PDFs without rebuilding")
    parser.add_argument("paths", nargs="*", type=Path, help="specific scores (PDFs with --check)")
    args = parser.parse_args()
    if args.paths:
        paths = [path.resolve() for path in args.paths]
    elif args.check:
        paths = sorted(ROOT.rglob("*.[pP][dD][fF]"))
    else:
        # Laudate Dominum's choir parts are includes in its three master scores.
        parts = ROOT / "laudate-dominum" / "working-files"
        paths = sorted(path for path in ROOT.rglob("*.ly") if parts not in path.parents)

    failed = False
    for path in paths:
        try:
            if args.check:
                check_pdf(path)
            else:
                build_score(path)
        except (OSError, ValueError, subprocess.CalledProcessError) as error:
            print(error, file=sys.stderr)
            failed = True
    if not failed:
        print(f"{'Checked PDFs' if args.check else 'Built scores'}: {len(paths)}")
    return int(failed)


if __name__ == "__main__":
    sys.exit(main())

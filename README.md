<p align="center">
  <img src="resources/img/logo.png" alt="bash-lba" width="200">
</p>

<h1 align="center">LBA — Logical Bash Aliases</h1>

<p align="center">A curated set of short, memorable bash aliases organized by category.</p>

Two-letter **prefix** picks the command. One-letter **suffix** is the first letter of the flag or variant.

```
..    → cd ..              ll    → ls -la
...   → cd ../..           la    → ls -A
....  → cd ../../..        lt    → ls -lAt   (sort by time)
bk    → cd -               lz    → ls -lAS   (sort by size)

gr    → grep               fd    → find . -name
gri   → grep -i            fdi   → find . -iname
grr   → grep -r

ct    → cat                df    → df -h
hd    → head               du    → du -h
tl    → tail               dul   → du -sh *
tlf   → tail -f
```

Run `lba` to see every alias right in your terminal:

```
╔═════════════════════════════════════════════════╗
║               Bash Aliases                      ║
╠═════════════════════════════════════════════════╣
║ ── Navigation ──                                ║
║ ..     │ cd ..                                  ║
║ ...    │ cd ../..                               ║
║ ....   │ cd ../../..                            ║
║ bk     │ cd -                                   ║
║ ── Listing ──                                   ║
║ ll     │ ls -la                                 ║
║ la     │ ls -A                                  ║
║ lt     │ ls -lAt                                ║
║ lz     │ ls -lAS                                ║
║         ...                                     ║
╚═════════════════════════════════════════════════╝
  37 aliases across 11 groups
```

## Install

```bash
curl -sL https://raw.githubusercontent.com/rockberpro/bash-lba/main/setup.sh | bash
```

Then reload your shell:

```bash
source ~/.bashrc
```

The setup script adds a single `source` line to `~/.bashrc` and copies two files to `~/`. You can read the full source ([setup.sh](setup.sh)) before running it, or use the manual install below.

**Manual install:**

```bash
curl -sL https://raw.githubusercontent.com/rockberpro/bash-lba/main/bash-lba.sh \
  -o ~/.bash-lba.sh

curl -sL https://raw.githubusercontent.com/rockberpro/bash-lba/main/bash-lba-help.sh \
  -o ~/.bash-lba-help.sh && chmod +x ~/.bash-lba-help.sh

echo 'source ~/.bash-lba.sh' >> ~/.bashrc
source ~/.bashrc
```

## Alias Reference

| Alias  | Command              | Group          |
| ------ | -------------------- | -------------- |
| `..`   | `cd ..`              | Navigation     |
| `...`  | `cd ../..`           | Navigation     |
| `....` | `cd ../../..`        | Navigation     |
| `bk`   | `cd -`               | Navigation     |
| `ll`   | `ls -la`             | Listing        |
| `la`   | `ls -A`              | Listing        |
| `lt`   | `ls -lAt`            | Listing        |
| `lz`   | `ls -lAS`            | Listing        |
| `mk`   | `mkdir`              | File Ops       |
| `mkp`  | `mkdir -p`           | File Ops       |
| `rm`   | `rm -i`              | File Ops       |
| `cpr`  | `cp -r`              | File Ops       |
| `cl`   | `clear`              | System         |
| `hi`   | `history`            | System         |
| `psa`  | `ps aux`             | System         |
| `psg`  | `ps aux \| grep`     | System         |
| `pi`   | `ping`               | Network        |
| `gr`   | `grep`               | Grep           |
| `gri`  | `grep -i`            | Grep           |
| `grr`  | `grep -r`            | Grep           |
| `fd`   | `find . -name`       | File Search    |
| `fdi`  | `find . -iname`      | File Search    |
| `df`   | `df -h`              | Disk           |
| `du`   | `du -h`              | Disk           |
| `dul`  | `du -sh *`           | Disk           |
| `kl`   | `kill`               | Process        |
| `kl9`  | `kill -9`            | Process        |
| `ct`   | `cat`                | Text           |
| `hd`   | `head`               | Text           |
| `tl`   | `tail`               | Text           |
| `tlf`  | `tail -f`            | Text           |
| `ev`   | `env`                | Environment    |
| `evg`  | `env \| grep`        | Environment    |
| `lba`  | show alias table     | Help           |

## Uninstall

```bash
# Remove the source line from .bashrc
sed -i '/source ~\/.bash-lba.sh/d' ~/.bashrc

# Remove the files
rm ~/.bash-lba.sh ~/.bash-lba-help.sh
```

---

[setup.sh](setup.sh) · [bash-lba.sh](bash-lba.sh) · [bash-lba-help.sh](bash-lba-help.sh)

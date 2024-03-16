Container image for ddrescue - a data recovery tool. It copies data from one file or block device (hard disc, cdrom, etc) to another, trying to rescue the good parts first in case of read errors.

## Usage

### Start rescue

```shell
docker run --rm -it --device=/dev/sdb:/dev/rescue --volume=$(pwd):/workspace ghcr.io/r-xs-fi/ddrescue --verbose /dev/rescue rescued.img rescued.log
```

Outputs:
```console
GNU ddrescue 1.26
About to copy 320072 MBytes from '/dev/rescue' to 'rescued.img'
    Starting positions: infile = 0 B,  outfile = 0 B
    Copy block size: 128 sectors       Initial skip size: 6272 sectors
Sector size: 512 Bytes

Press Ctrl-C to interrupt
     ipos:   60402 MB, non-trimmed:    1986 kB,  current rate:  22282 kB/s
     opos:   60402 MB, non-scraped:        0 B,  average rate:  19627 kB/s
non-tried:  259853 MB,  bad-sector:        0 B,    error rate:       0 B/s
  rescued:   60217 MB,   bad areas:        0,        run time:     51m  8s
pct rescued:   18.81%, read errors:       57,  remaining time:      3h 14m
                              time since last successful read:          0s
Copying non-tried blocks... Pass 1 (forwards)
```

## Supported platforms


| OS    | Architecture  | Supported | Example hardware |
|-------|---------------|-----------|-------------|
| Linux | amd64 | ✅       | Regular PCs (also known as x64-64) |
| Linux | arm64 | ✅       | Raspberry Pi with 64-bit OS, other single-board computers, Apple M1 etc. |
| Linux | arm/v7 | ✅       | Raspberry Pi with 32-bit OS, older phones |
| Linux | riscv64 | ✅       | More exotic hardware |
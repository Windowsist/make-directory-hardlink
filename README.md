# make directory hardlink

this tool can quickly create a directory that contains same content as souurces directory using [hardlink](https://learn.microsoft.com/en-us/windows/win32/fileio/hard-links-and-junctions)

after creating, if contents changed in one directory, another directory will probably not change, because this tools makes every file's hardlink, for details see [hardlink](https://learn.microsoft.com/en-us/windows/win32/fileio/hard-links-and-junctions)

## usage

mkhdlnk.cmd source destination

         source: an existing directory to make hardlink
    destination: new directory contains same content as souurces directory

mkhdlnka.cmd is administrator version, this version can preserve NTFS/ReFS file audit settings. usage is same as mkhdlnk.cmd

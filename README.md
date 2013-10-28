
BARCENAS FILE WIPER
===================


 This tool is similar to the unix coreutils shreed command, but uses openssl to generate goo cryptographic random data 
to overwrite the file.

 After three passes with random data, it fills the file with zeros. so, nobody knows if there were data before. After the
file gets zeroed, it is removed from the filesystem.

USAGE
=====

 ./barcenas.sh filename


BACKGROUND
==========

 In The past, there were files using the Guttman Method. The Gutmann method is an algorithm for securely erasing 
the contents of computer hard drives, such as files. Devised by Peter Gutmann and Colin Plumb, it does so by writing 
a series of 35 patterns over the region to be erased.

 The selection of patterns assumed that the user does not know the encoding mechanism used by the drive, so it includes 
patterns designed specifically for three types of drives. A user who knows which type of encoding the drive uses can choose 
only those patterns intended for their drive. A drive with a different encoding mechanism would need different patterns.

 Most of the patterns in the Gutmann method were designed for older MFM/RLL encoded disks. 
Relatively modern drives no longer use these older encoding techniques, making many of the patterns specified by Gutmann 
irrelevent.[1] Moreover, since about 2001, ATA IDE and SATA hard drive manufacturer designs include support for the “Secure Erase” 
standard, obviating the need to apply the Gutmann method when erasing an entire drive.


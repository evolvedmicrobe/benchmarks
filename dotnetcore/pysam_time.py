import pysam
bamname = "/Users/nigel/Kids/Y_Sequencing/MMCB-0000-318J.bam"
samfile = pysam.AlignmentFile(bamname, "rb")
count = 0
for read in samfile:
    count += 1
print count
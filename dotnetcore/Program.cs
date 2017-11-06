using System;
using Bio.IO.BAM;

namespace bamtest
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            var fname = "/Users/nigel/Kids/Y_Sequencing/MMCB-0000-318J.bam";
            //var fname = "tmp.bam";
            var p = new BAMParser();
            int count = 0;
            foreach (var read in p.Parse(fname))
            {
                count += 1;
            }
            Console.WriteLine(count);
        }
    }
}

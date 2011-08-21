# Script to run Ray on Amazon EC2.

- Illumina HiSeq v2.0 chemistry data: http://csativa.elasticbeanstalk.com/

- Ray software: http://github.com/sebhtml/ray

- Cloud resources: http://aws.amazon.com/hpc-applications/


# Amazon hardware

According to , the hardware is http://aws.amazon.com/hpc-applications/

23 GB of memory
33.5 EC2 Compute Units (2 x Intel Xeon X5570, quad-core “Nehalem” architecture)
1690 GB of instance storage
64-bit platform
I/O Performance: Very High (10 Gigabit Ethernet)
API name: cc1.4xlarge


One Nehalem chip has 4 cores.
Intel® Hyper-Threading Technology gives 2 threads per core.
Each Amazon cc1.4xlarge node has 16 logical cores.
Each Amazon cc1.4xlarge node has 23 GB of memory.


# Steps

- Download and compile Ray.

- Do a test run with Ray on Illumina MiSeq data just to check that
everything is working (hardware, latency, software)

	Data: http://www.illumina.com/systems/miseq/ecoli.ilmn

- Acquire the data from http://csativa.elasticbeanstalk.com/

- Start Ray with the Sun Grid Engine script.


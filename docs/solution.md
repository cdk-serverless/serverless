## The Solution

What if there were a way to compile LESS on demand without all the hassle of provisioning and managing some number of under utilized servers?

Enter AWS Lambda.  Lambda is a "pay as you go" compute service for executing stateless micro service code.  Lambda scales instantly to meet demand, running parallel instances per request.  Once the monthly free tier resources have been consumed, additional requests are billed according to the amount of memory used, the number of requests and the execution duration (rounded up to the nearest 100ms interval).

Code running on lambda must conform to a number of resource constraints.  For example, the memory allocation range is 128-3008MB with 64MB increments in between, disk capacity is 512MB and maximum execution duration per request is 300 seconds.  Based on these constraints, our LESS compilation code appeared to be a good fit for the serverless platform.

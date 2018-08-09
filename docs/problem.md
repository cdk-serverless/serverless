# Serverless in Seattle: Reducing Server Costs with AWS Lambda

## Initial Observations

Our NextGen web servers (or Hydra-Graph servers) run in a Node.js environment. Node.js is an excellent platform for delivering our customers' websites in terms of I/O (Input/Output), flexibility, and resiliency.

In our experience, one of the most computationally complex activities required of our Hydra servers is that of LESS compilation. LESS is a backwards-compatible language extension for CSS, the language we use to style our web pages. LESS offers a variety of benefits to designers, developers, and engineers and is an important component of our websites. Historically, LESS compilation was handled on Hydra servers. One of the drawbacks to performing this compilation on those servers is that a heavy compilation cycle (for example, during twice-weekly deployments of new software) can significantly reduce our I/O performance.

In an effort to increase the performance of our Hydra servers, we've been working to move compilation off of the Hydra servers and into dedicated servers used exclusively for LESS compilation.

## The Problem

Currently, we have provisioned servers to perform LESS compilation in our Las Vegas data center. These servers run 24/7 and are quite costly, especially considering that they are used for specific requests at irregular intervals. Our team decided that this was an excellent opportunity to provide some cost savings.

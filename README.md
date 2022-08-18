# BLAB

This repository provides an overview of BLAB (BLue Amazon Brain) and its components.
BLAB has not been deployed to production, but its source is
available and you can install it on your PC or server.

BLAB Portal is a website that provides access to chatbots and other services. Its repository
is [BLAB Front-end](../../../blab-frontend), and it was developed with React Framework.
See [README.md](../../../blab-frontend/blob/main/README.md) in that repository
for installation instructions. 

### BLAB-Chat

BLAB is managed by a central controller, [BLAB Controller](../../../blab-controller), developed in Python. See the
file [INSTALL.md](../../../blab-controller/blob/main/INSTALL.md)
for installation instructions.

The controller contains two basic bots (ECHO and Calculator) for demonstration purposes. In order to integrate other
bots, see
[these instructions](../../../blab-controller/blob/main/ADDING_BOTS.md).

So far, we have written the intermediate layers to integrate BLAB Controller with:

1. [Watson Assistant](https://cloud.ibm.com/catalog/services/watson-assistant):
   see the repository [Watson Assistant bot for BLAB](../../../blab-chatbot-watson). You will need the credentials to
   access the Watson assistants (see [documentation from IBM](https://cloud.ibm.com/apidocs/assistant-v2)).
2. [DEEPAGÉ](../../../deepage):
   See the repository [DEEPAGÉ bot for BLAB](../../../blab-chatbot-deepage). You will need the trained model and the
   data for the retriever.<br/>You can read the DEEPAGÉ articles: [arXiv](https://doi.org/10.48550/arXiv.2110.10015),
   [BRACIS 2021](https://doi.org/10.1007/978-3-030-91699-2_29).

If you want to integrate other bots with BLAB, see [this generic example](../../../blab-chatbot-example).


### BLAB-Reporter

BLAB Reporter is a bot that automatically generates news articles using multiple sources.
See the repository [BLAB Reporter](https://github.com/C4AI/blab-reporter) and
the [Twitter profile](https://twitter.com/BLAB_Reporter) in which the generated texts 
are published.

### BLAB-Wiki

TO DO



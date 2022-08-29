# BLAB

This repository provides an overview of BLAB (BLue Amazon Brain) and its components. BLAB has not been deployed to
production at the time of writing, but its source is available and you can install some or all of its components on your
PC or server.

BLAB Portal is a website that provides access to chatbots and other services. Its repository
is [BLAB Front-end](../../../blab-frontend), and it was developed with React Framework.
See [README.md](../../../blab-frontend/blob/main/README.md) in that repository for installation instructions.

## 1. Services:

Currently, BLAB consists of three services:

- BLAB-Chat
- BLAB-Reporter
- BLAB-Wiki

### 1.1 BLAB-Chat

BLAB is managed by a central controller, [BLAB Controller](../../../blab-controller), developed in Python. The
controller is a web server that receives user requests, executes the appropriate actions using several BLAB components
and returns the results. See the file [INSTALL.md](../../../blab-controller/blob/main/INSTALL.md)
for installation instructions.

The controller contains two basic bots (ECHO and Calculator) for demonstration purposes:

- ECHO, which echoes every message in upper case;
- Calculator, which evaluates the result of simple arithmetic expressions.

In order to integrate other bots, see
[these instructions](../../../blab-controller/blob/main/ADDING_BOTS.md).

So far, we have written the intermediate layers to integrate BLAB Controller with:

1. [Watson Assistant](https://cloud.ibm.com/catalog/services/watson-assistant):
   see the repository [Watson Assistant bot for BLAB](../../../blab-chatbot-watson). You will need the credentials to
   access the Watson assistants (see [documentation from IBM](https://cloud.ibm.com/apidocs/assistant-v2)).


2. [DEEPAGÉ](../../../deepage): A question answering system focused on the Portuguese language, combining in novel ways
   the BM25 algorithm, a sparse retrieval technique, with PTT5, a pre-trained state-of-the-art language model. See the
   repository [DEEPAGÉ bot for BLAB](../../../blab-chatbot-deepage). You will need the trained model and the data for
   the retriever.

If you want to integrate other bots with BLAB, see [this generic example](../../../blab-chatbot-example).

### 1.2 BLAB-Reporter

[BLAB Reporter](https://github.com/C4AI/blab-reporter) is an application that collects data related to the Blue Amazon
from multiple sources
and publishes it on Twitter ([@BLAB_Reporter](https://twitter.com/BLAB_Reporter))
in natural language (Portuguese).

### 1.3 BLAB-Wiki

BLAB-Wiki is a set of curated texts in Portuguese about the Blue Amazon that can be used as a resource to build
conversational agents. They have been written by undergraduate Oceanography students and revised by experts. Some of the
texts are available at [a temporary server](https://c2dt02.duckdns.org/w/index.php) (only preliminary versions).


## 2. Published papers

1. [_The BLue Amazon Brain (BLAB): A Modular Architecture of Services about the Brazilian Maritime
   Territory_](https://oceania.inria.cl/assets/pdfs/aimocc22/paper-05.pdf), published in [AIMOCC 2022 \(_AI: Modeling
   Oceans and Climate Change_\)](https://oceania.inria.cl/#aimocc-2022), which was one of
   the [IJCAI 2022](https://ijcai-22.org/) workshops.

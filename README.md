# Getting started with Bolt

This repo houses a Bolt project that you can use to set up Apache on a pair of
container targets. The project goes together with the Bolt Getting started guide and is
intended to guide you through setting up a Bolt project with a simple YAML plan.

**Note**: If you don't want to use Docker containers, you can edit the inventory.yaml file
in `my_project` to use any targets you like. For information, see the Bolt
documentation for [inventory files](https://puppet.com/docs/bolt/latest/inventory_file_v2.html). 

For detailed instructions on using this repo, see [Getting started with
Bolt](https://puppet.com/docs/bolt/latest/getting_started_with_bolt.html).

## Prerequisites

- [Bolt](https://puppet.com/docs/bolt/latest/bolt_installing.html)
- [Docker](https://docs.docker.com/get-docker/) (or alternatively, use your own existing targets)

## Quickstart

1. Clone or download this repo.
2. CD into the `my_project` directory.
3. Spin up your Docker targets using `docker-compose up -d --build`.
4. Run the Bolt plan:
   ```console
   bolt plan run apache::install -t containers src=apache/index.html
   ```
5. Go to [127.0.0.1:3000](http://127.0.0.1:3000/) to see your Apache index page.

## About Bolt

Bolt is an open source orchestration tool that automates the manual work it takes to maintain your infrastructure. Use Bolt to automate tasks that you perform on an as-needed basis or as part of a greater orchestration workflow. For example, you can use Bolt to patch and update systems, troubleshoot servers, deploy applications, or stop and restart services. Bolt can be installed on your local workstation and connects directly to remote targets with SSH or WinRM, so you are not required to install any agent software.

For more information, see the [Bolt repo](https://github.com/puppetlabs/bolt).
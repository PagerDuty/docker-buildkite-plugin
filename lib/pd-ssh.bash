#!/bin/bash

# Run an ssh agent for the buildkite-agent user
eval "$(ssh-agent)"

# Add the default ssh key, dropped by Chef
ssh-add

#!/bin/bash
source ./lib.bash

# Test recovery from missing pacman sync databases

TestIntegrationOnly

TestPhase_Setup ###############################################################
TestDeleteFile /var/lib/core.db

TestPhase_Run #################################################################
AconfApply

TestPhase_Check ###############################################################
TestExpectPacManLog <<EOF
--sync test-package
EOF
TestDone ######################################################################

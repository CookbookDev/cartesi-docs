#!/bin/bash
cartesi-machine \
    --max-mcycle=0 \
    --initial-hash \
    --append-rom-bootargs="single=yes" \
    --store=stored_machine \
    --flash-drive="label:output,length:1<<12" \
    -- $'echo Hello World! | dd status=none of=$(flashdrive output)' \
    2>&1

rm -r stored_machine

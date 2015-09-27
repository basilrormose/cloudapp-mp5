#!/usr/bin/env bash
hadoop fs -rm -r -f /mp5/output/*
hadoop fs -put -f internal_use/dataset/*.data /mp5/data
spark-submit --class RandomForestMP target/mp5-1.0-SNAPSHOT-jar-with-dependencies.jar  /mp5/data/training.data /mp5/data/test.data /mp5/output/part-d/
hadoop fs -cat /mp5/output/part-d/*

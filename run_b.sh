#!/usr/bin/env bash
hadoop fs -rm -r -f /mp5/output/*
hadoop fs -put -f internal_use/dataset/cars.data /mp5/data
spark-submit --class KMeansMP target/mp5-1.0-SNAPSHOT-jar-with-dependencies.jar /mp5/data/cars.data /mp5/output/part-b/
hadoop fs -cat /mp5/output/part-b/*

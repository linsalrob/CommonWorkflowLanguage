# minimap2

This workflow runs [minimap2](https://github.com/lh3/minimap2) and you will need that installed in your path.

For this test example, we have two SRA reads,  `SRR2297848_pass_1.fastq.gz` and `SRR2297848_pass_2.fastq.gz`. The workflow maps those to the mapped crAssphage genome in `JQ995537.mmi`.

You can run this workflow with:

```bash
cwl-runner minimap2.cwl minimap.json
```

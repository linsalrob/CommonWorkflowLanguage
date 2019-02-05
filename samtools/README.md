# samtools examples

Here are some simple samtools CWL implementations that we use to sort and index files.

There are more *robust* and complex implementations on the [CWL Git Repo](https://github.com/common-workflow-language/workflows/tree/master/tools), but these are our own and we're using them to explore!

The sam file `test.sam` is a small sam file (of some [crAssphage](https://github.com/linsalrob/crAssphage/) alignments that you can use to test things.

`samtools_convert_to_bam.cwl` takes a sam file and converts it to a binary file.

`sam2bam_test.json` describes the inputs and outputs for that conversion.

With `cwl-runner` installed, you can run this with the command:

```bash
cwl-runner samtools_convert_to_bam.cwl sam2bam_test.json
```



# samtools examples

Here are some simple samtools CWL implementations that we use to sort and index files.

There are more *robust* and complex implementations on the [CWL Git Repo](https://github.com/common-workflow-language/workflows/tree/master/tools), but these are our own and we're using them to explore!

The sam file `test.sam` is a small sam file (of some [crAssphage](https://github.com/linsalrob/crAssphage/) alignments that you can use to test things.

## Convert a SAM file to a BAM file

`samtools_convert_to_bam.cwl` takes a sam file and converts it to a binary file.

`sam2bam_test.json` describes the inputs and outputs for that conversion.

```json
{
    "sorted_sam" : {
        "class" : "File",
        "format" : "http://edamontology.org/format_2573",
        "path"  : "test.sam"
    },
    "bamfile" : "test.bam",
    "threads" : 16,
    "convert_to_binary" : true
}
```

With `cwl-runner` installed, you can run this with the command:

```bash
cwl-runner samtools_convert_to_bam.cwl sam2bam_test.json
```

This combination with take the file `test.sam` and convert it to the file `test.bam`.

## Sort a SAM file

`samtools_sort.cwl` takes a sam file and just sorts it
`sam_sort_test.json` describes the inputs and outputs for that conversion:

```json
{
    "samfile" : {
        "class" : "File",
        "format" : "http://edamontology.org/format_2573",
        "path"  : "test.sam"
    },
    "threads" : 16,
}
```

You can run this using `cwl-runner`


```bash
cwl-runner samtools_sort.cwl sam_sort_test.json
```

# Run a samtools workflow

The [sam_workflow](sam_workflow.cwl) demonstrates how to tie these two together into a single workflow. This takes a samfile and runs sort and convert to bam and creates a bam file.

You can run this with:

```bash
cwl-runner sam_workflow.cwl sam_test_workflow.json
```



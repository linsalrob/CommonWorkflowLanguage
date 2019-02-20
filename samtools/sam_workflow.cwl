{
    "cwlVersion" : "v1.0",
    "class" : "Workflow",
    "inputs" : {
        "samfile" : {
            "type": "File",
            "streamable": true,
            "inputBinding" : {"position" : 3},
            "doc" : "An unsorted sam file"
        },
        "threads" : {
            "type" : "int",
            "inputBinding" : {
                "position" : 1,
                "prefix"   : "-@"
            },
            "doc" : "The number of threads to use for processing"
        },
        "convert_to_binary" : {
            "type"  : "boolean",
            "inputBinding" : {
                "position" : 2,
                "prefix" : "-b"
            }
        },
        "bamfile" : {
            "type" : "string",
            "inputBinding" : {
                "position" : 2,
                "prefix"   : "-o"
            }
        }
    },
    "outputs" : {
        "binaryfile" : {
            "outputSource" : "sam_to_bam/binaryfile",
            "type" : "File",
            "outputBinding" : {
                "glob" : "$(inputs.bamfile)"
            },
        }
    },
    "steps" : {
        "sort" : {
            "run" : "samtools_sort.cwl",
            "in"  : {
                "samfile" : {
                    "source" : "samfile"
                },
                "threads" : "threads"
            },
            "out" : ["sorted_sam"]
        },
        "sam_to_bam" : {
            "run" : "samtools_convert_to_bam.cwl",
            "in"  : {
                "sorted_sam" : {
                    "source" : "sort/sorted_sam"
                },
                "threads" : "threads",
                "convert_to_binary" : "convert_to_binary",
                "bamfile" : "bamfile"
            },
            "out" : ["binaryfile"]
        }
    }
}

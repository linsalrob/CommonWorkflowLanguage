{
    "cwlVersion" : "v1.0",
    "class" : "CommandLineTool",
    "baseCommand" : ["samtools", "sort"],
    "inputs" : {
        "samfile" : {
            "type": "File",
            "streamable": true,
            "inputBinding" : {"position" : 3}
        },
        "threads" : {
            "type" : "int",
            "inputBinding" : {
                "position" : 1,
                "prefix"   : "-@"
            }
        }
    },
    "outputs" : {
        "sorted_sam" : "stdout"
    }
}

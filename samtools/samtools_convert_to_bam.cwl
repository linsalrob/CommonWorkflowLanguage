{
    "cwlVersion" : "v1.0",
    "class" : "CommandLineTool",
    "baseCommand" : ["samtools", "view"],
    "inputs" : {
        "sorted_sam" : {
            "type": "File",
            "streamable": true,
            "inputBinding" : {"position" : 3}
        },
        "convert_to_binary" : {
            "type" : "boolean",
            "inputBinding" : {
                "position" : 2,
                "prefix"   : "-b"
            }

        },
        "threads" : {
            "type" : "int",
            "inputBinding" : {
                "position" : 1,
                "prefix"   : "-@"
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
            "type" : "File",
            "outputBinding" : {
                "glob" : "$(inputs.bamfile)"
            },
            "streamable" : true
        }
    }
}

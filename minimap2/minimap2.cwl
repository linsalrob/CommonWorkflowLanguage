{
    "cwlVersion" : "v1.0",
    "doc" : "This CWL file defines running minimap2 to align some sequences to a database. We assume the database has been indexed. This is not necessary but we will do it in our use case",
    "class" : "CommandLineTool",
    "baseCommand" : ["minimap2"],
    "inputs" : {
        "threads" : {
            "type" : "int",
            "inputBinding" : {
                "position" : 1,
                "prefix"   : "-t"
            }
        },
        "preset" : {
            "type" : "string",
            "default" : "sr",
            "inputBinding" : {
                "position" : 2,
                "prefix"  : "-x"
            }
        },
        "samOutput" : {
            "type" : "boolean",
            "default" : true,
            "inputBinding" : {
                "position" : 3,
                "prefix" : "-a"
            }
        },
        "indexFile" : {
            "type" : "File",
            "inputBinding" : {
                "position" : 5
            }
        },
        "fastqFiles" : {
            "type" : {
                "type" : "array",
                "items" : "File"
            },
            "inputBinding" : {
                "position" : 6
            }
        },
        "samfile" : {
            "type" : "string",
            "inputBinding" : {
                "position" : 4,
                "prefix"   : "-o"
            }
        }
    },
    "outputs" : {
        "samfile" : {
            "type" : "File",
            "outputBinding" : {
                "glob" : "$(inputs.samfile)"
            },
            "streamable" : true
        }
    }
}

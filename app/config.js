// Sets the MongoDB Database options

module.exports = {

    mongolab:
    {
        name: "scotch-user-map-ec2",
        url: "mongodb://mongodb007:BwBsg9wzk5wEzmNgJFvE7DUMb3q0xfPiPrguEEl0x4GSoIG0wMkF5MgaBoTdnUwLeDIMdDNpkEfqOjF4mn2Jmw==@mongodb007.documents.azure.com:10250/?ssl=true",
        port: 27017
    },

    local:
    {
        name: "scotch-user-map-local",
        url: "mongodb://localhost/MeanMapApp",
        port: 27017
    }

};

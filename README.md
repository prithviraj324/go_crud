#Golang, GraphQl, MongoDB CRUD Project

Postman Api QUERIES
#### Get All Jobs

`
{
    "query":"query{jobs{_id,title,description,company,url}}"
}
`

=======================

#### Create Job

`	
{
	"query":"mutation($input: CreateJobListingInput!){createJobListing(input:$input){_id,title,description,company,url}}",
	"variables": { "input" : { "title": "MTS - 2", "description": "Placeholder description", "company": "Clumio", "url": "www.clumio.com/" } }
}
`


=========================

#### Get Job By Id

`
{
    "query" : "query($id: ID!){job(id:$id){_id,title,description,url,company}}",
    "variables" : { "id" : "639cd9052e5fa9c1cf0ec9bf" }
}
`



=========================


#### Update Job By Id

`
{
    "query" : "mutation($id: ID!,$input: UpdateJobListingInput!){updateJobListing(id:$id,input:$input){title,description,_id,company,url}}",
    "variables" : { "id" : "639cd9052e5fa9c1cf0ec9bf", "input": {
            "title": "Software Development Engineer - III"
        }
    }
}
`

=================================


#### Delete Job By Id

`
{
    "query" : "mutation($id: ID!){deleteJobListing(id:$id){deleteJobId}}",
    "variables" : { "id" : "1" }
}
`
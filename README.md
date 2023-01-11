# Golang, GraphQl, MongoDB CRUD Project

#### Get All Jobs

`query GetAllJobs{
  jobs{
    _id
    title
    description
    company
    url
  }
}`

=======================

#### Create Job

`mutation CreateJobListing($input: CreateJobListingInput!){
  createJobListing(input:$input){
    _id
    title
    description
    company
    url
  }
}`

`{
  "input": {
    "title": "MTS - 2",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
    "company": "Clumio",
    "url": "www.clumio.com/"
  }
}`


=========================

#### Get Job By Id

`query GetJob($id: ID!){
    job(id:$id){
    _id
    title
    description
    url
    company
    }
}`


`{
  "id": "insertIDHere"
}`



=========================


#### Update Job By Id

`mutation UpdateJob($id: ID!,$input: UpdateJobListingInput!) {
  updateJobListing(id:$id,input:$input){
    title
    description
    _id
    company
    url
  }
}`


`{
  "id": "insertIDHere",
  "input": {
    "title": "Software Development Engineer - III"
  }
}`

=================================


#### Delete Job By Id

`mutation DeleteQuery($id: ID!) {
  deleteJobListing(id:$id){
    deletedJobId
  }
}`

`{
  "id": "insertIDHere"
}`

variable "expiration" {
  description = "TTL of tables using the dataset in MS"
  default     = null
}

variable "project_id" {
  description = "Project where the dataset and table are created"
}

variable "time_partitioning" {
  description = "Configures time-based partitioning for this table"
}

variable dataset_id {}
variable description {}
variable location {}

variable "dataset_labels" {
  description = "A mapping of labels to assign to the table"
  type        = map(string)
}

variable "access_rules" {
  description = "access bindings to bigquery"
  default     = []
#  type = list(map(string))
}

variable "tables" {
  description = "A list of maps that includes both table_id and schema in each element, the table(s) will be created on the single dataset"
}

# This is how the tables variable needs to be declared if count argument is used

/*variable "tables" {
  description = "A list of maps that includes both table_id and schema in each element, the table(s) will be created on the single dataset"
  default     = []
  type = list(object({
    table_id = string,
  #  schema   = string,
    labels   = map(string),
  }))
}*/

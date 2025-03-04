schema "public" {
  
}
table "gigantic_user_table" {
  schema = schema.public
  column "id" {
    null = false
    type = int
    identity {
        generated = ALWAYS
        start = 1
        increment = 1
    }
  }
  column "name" {
    null = false
    type = text
  }
  column "email" {
    null = false
    type = text
  }
  column "created_at" {
    null = false
    type = timestamp
  }
  column "updated_at" {
    null = true
    type = timestamp
  }
  column "is_active" {
    null = false
    type = boolean
    default = true
  }
  primary_key  {
    columns = [column.id]
  }
  # unique "email" {
  #   columns = [column.email]
  # }
}

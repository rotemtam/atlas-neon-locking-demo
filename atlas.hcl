env "neon" {
  url = getenv("NEON_URL")
  src = "file://schema.pg.hcl"
  dev = "docker://postgres/17/dev?search_path=public"
  migration {
    repo {
      name = "neon-locks"
    }
  }
}

hook "sql" "timeout" {
  transaction {
    after_begin = [
      "SET statement_timeout TO '10s'",
    ]
  }
}

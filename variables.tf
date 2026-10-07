variable "servers" {
  type = map(object({
    ip   = string
    role = string
  }))
  default = {
    "web" = { ip = "192.168.1.10", role = "Frontend Nginx" }
    "db"  = { ip = "192.168.1.20", role = "Database PostgreSQL" }
    "app" = { ip = "192.168.1.30", role = "Backend Node.js" }
  }
}

terraform {
  required_providers {
    godaddy = {
      source = "n3integration/godaddy"
      version = "1.9.1"
    }
  }
}

provider "godaddy" {
  # Configuration options
        key = "2wZ1bzxMcE_DKPh43Sodwdy1sCYWnq7wB"
        secret = "PUumqxJXsy7u1F5UfjCGL2"
}


resource "godaddy_domain_record" "gd-fancy-domain" {
  domain   = "penic.net"

  // required if provider key does not belong to customer
  // customer = "1234"

  // specify zero or more record blocks
  // a record block allows you to configure A, or NS records with a custom time-to-live value
  // a record block also allow you to configure AAAA, CNAME, TXT, or MX records

// main records
// Subnet 10.10.10.0/24
  record {
    name = "plex"
    type = "A"
    data = "10.10.10.4"
    ttl = 600
  }

  record {
    name = "casaos01"
    type = "A"
    data = "10.10.10.11"
    ttl = 600
  }

  record {
    name = "synology01"
    type = "A"
    data = "10.10.10.11"
    ttl = 600
  }

  record {
    name = "synology02"
    type = "A"
    data = "10.10.10.12"
    ttl = 600
  }

  record {
    name = "synology03"
    type = "A"
    data = "10.10.10.13"
    ttl = 600
  }

  record {
    name = "synology01"
    type = "A"
    data = "10.10.10.11"
    ttl = 600
  }

  record {
    name = "synology01"
    type = "A"
    data = "10.10.10.11"
    ttl = 600
  }

  record {
    name = "hass"
    type = "A"
    data = "10.10.10.40"
    ttl = 600
  }

// Subnet 10.10.11.0/24

  record {
    name = "docker01"
    type = "A"
    data = "10.10.11.11"
    ttl = 600
  }

    record {
    name = "docker02"
    type = "A"
    data = "10.10.11.12"
    ttl = 600
  }

  // Subnet 10.10.11.0/24 
  //CNAME
    record {
    name = "portainer"
    type = "CNAME"
    data = "docker01.penic.net"
    ttl = 600
  }

    record {
    name = "komga"
    type = "CNAME"
    data = "docker01.penic.net"
    ttl = 600
  }

    record {
    name = "mylar"
    type = "CNAME"
    data = "docker01.penic.net"
    ttl = 600
  }

    record {
    name = "ombi"
    type = "CNAME"
    data = "docker01.penic.net"
    ttl = 600
  }

    record {
    name = "prowlarr"
    type = "CNAME"
    data = "docker01.penic.net"
    ttl = 600
  }

    record {
    name = "torrent"
    type = "CNAME"
    data = "docker01.penic.net"
    ttl = 600
  }

    record {
    name = "radarr"
    type = "CNAME"
    data = "docker01.penic.net"
    ttl = 600
  }

    record {
    name = "sabnzbd"
    type = "CNAME"
    data = "docker01.penic.net"
    ttl = 600
  }

    record {
    name = "sonarr"
    type = "CNAME"
    data = "docker01.penic.net"
    ttl = 600
  }

    record {
    name = "traefik"
    type = "CNAME"
    data = "docker01.penic.net"
    ttl = 600
  }


// CNAME casaos01.penic.net

  record {
    name = "gitlab"
    type = "CNAME"
    data = "synology01.penic.net"
    ttl = 600
  }

  record {
    name = "gaia"
    type = "CNAME"
    data = "synology01.penic.net"
    ttl = 600
  }

// CNAME 

//  record {
//   name = "@"
//    type = "MX"
//    data = "aspmx.l.google.com."
//    ttl = 600
//    priority = 1
//  }

//  record {
//    name      = "@"
//    type      = "SRV"
//    data      = "host.example.com"
//    ttl       = 3600
//    service   = "_ldap"
//    protocol  = "_tcp"
//    port      = 389
//  }

  // specify any A records associated with the domain
//  addresses   = ["192.168.1.2", "192.168.1.3"]

  // specify any custom nameservers for your domain
  // note: godaddy now requires that the 'custom' nameservers are first supplied through the ui
//  nameservers = ["ns7.domains.com", "ns6.domains.com"]
}

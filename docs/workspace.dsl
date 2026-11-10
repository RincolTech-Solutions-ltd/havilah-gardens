workspace "Havilah Gardens" "Website that markets and sells Havilah Gardens planters, pots and flowers." {

    !docs sdd

    model {
        visitor = person "Visitor" "Someone looking for planters, pots or flowers, for a home, a gift or a business."
        esther = person "Esther" "Leads the products: designs, photos, names and prices."
        builder = person "Builder" "Hillary or an agent who changes the site through pull requests."

        whatsapp = softwareSystem "WhatsApp" "Where orders and questions arrive and are answered by hand (phase 1)." "External"
        github = softwareSystem "GitHub" "Source, issues for ideas, pull requests and CI." "External"

        havilah = softwareSystem "Havilah Gardens website" "Shows the products and starts an order." {
            site = container "Static site" "Home, catalogue, product and about pages, built from one content file per product." "Astro, HTML and CSS"
            content = container "Product content" "One file per product: name, size, price, photos, story." "Markdown files in the repository"
            hosting = container "Hosting" "Serves the built site and a preview link for each pull request." "Cloudflare Pages"
        }

        visitor -> hosting "Browses the site" "HTTPS"
        hosting -> site "Serves the built pages of"
        site -> content "Is built from"
        visitor -> whatsapp "Taps Order, sends a message that names the product"
        esther -> whatsapp "Answers orders and posts ideas in the Havilah Group chat"
        esther -> hosting "Checks preview links before changes go live"
        builder -> github "Turns ideas into issues and pull requests"
        github -> hosting "Builds and deploys on merge"
    }

    views {
        systemContext havilah "Context" {
            include *
            autoLayout lr
        }

        container havilah "Containers" {
            include *
            autoLayout lr
        }

        styles {
            element "Person" {
                shape Person
            }
            element "External" {
                background #999999
                color #ffffff
            }
        }
    }
}

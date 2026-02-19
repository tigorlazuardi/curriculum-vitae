// CV - Tigor Hutasuhut
// Clean & Minimal Design

#set document(
  title: "CV - Tigor Hutasuhut",
  author: "Tigor Hutasuhut",
)

#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.5cm),
)

#set text(
  font: "Libertinus Serif",
  size: 10pt,
)

#set par(justify: true)

// Colors
#let primary = rgb("#2d3748")
#let secondary = rgb("#718096")

// Header
#align(center)[
  #text(size: 24pt, weight: "bold", fill: primary)[Tigor Hutasuhut]

  #v(4pt)

  #text(size: 12pt, fill: secondary)[Software Engineer]

  #v(8pt)

  #text(size: 9pt, fill: secondary)[
    #link("mailto:tigor.hutasuhut@gmail.com")[tigor.hutasuhut\@gmail.com] #h(8pt) | #h(8pt)
    +628119997331 #h(8pt) | #h(8pt)
    #link("https://linkedin.com/in/tigor-hutasuhut")[LinkedIn] #h(8pt) | #h(8pt)
    #link("https://github.com/tigorlazuardi")[GitHub] #h(8pt) | #h(8pt)
    #link("https://tigor.dev")[tigor.dev]
  ]
]

#v(16pt)

// Section heading helper
#let section(title) = {
  v(8pt)
  text(size: 12pt, weight: "bold", fill: primary)[#upper(title)]
  v(-4pt)
  line(length: 100%, stroke: 0.5pt + secondary)
  v(4pt)
}

// Experience entry helper
#let experience(company, role, period, location: none, description) = {
  v(4pt)
  grid(
    columns: (1fr, auto),
    text(weight: "bold")[#company],
    text(fill: secondary, size: 9pt)[#period],
  )
  text(style: "italic", fill: secondary)[#role]
  if location != none {
    text(fill: secondary, size: 9pt)[ · #location]
  }
  v(4pt)
  description
  v(4pt)
}

// Professional Summary
#section("Professional Summary")

Seasoned Software Engineer with over 6 years of experience building scalable fintech platforms and distributed systems. Proven expertise in real-time trading systems, cloud infrastructure, and DevOps practices. Currently serving in multiple leadership and technical roles across fintech and AI industries.

// Skills
#section("Technical Skills")

#grid(
  columns: (auto, 1fr),
  gutter: 8pt,
  text(weight: "bold")[Languages:], [Go, Python, JavaScript, TypeScript, Nix],
  text(weight: "bold")[Databases:], [PostgreSQL, MongoDB, Redis],
  text(weight: "bold")[Infrastructure:], [Docker, Kubernetes, Kafka, Google Cloud, AWS, Cloudflare Workers],
  text(weight: "bold")[Frontend:], [Next.js, SvelteKit, Astro],
  text(weight: "bold")[Optimization:], [SEO (Search Engine), AIO (AI Search/LLM)],
)

// Work Experience
#section("Professional Experience")

#experience(
  link("https://grandboard.id")[Grandboard Strategi Multi Cipta],
  "Chief Technology Officer",
  "2025 – Present",
)[
  - Leading technology strategy and product development for the company
  - Architected and developed #link("https://fartix.id")[Fartix], an integrated ticketing platform enabling users to create and manage events seamlessly
  - Built monitoring and metrics systems including user behavior tracking and sales history analytics for business insights
]

#experience(
  "Strategix AI Solution",
  "Senior DevOps Engineer",
  "2025 – Present",
)[
  - Established comprehensive monitoring and metrics infrastructure for AI platform operations
  - Designed and implemented CI/CD deployment pipelines using Kubernetes and Docker
]

#experience(
  link("https://bareksa.com")[PT Bareksa Portal Investasi (Bareksa)],
  "Senior Software Engineer",
  "2018 – Present",
)[
  #text(size: 9pt, fill: secondary)[_Bareksa is Indonesia's leading fintech platform for mutual funds, gold, stocks, and government bonds (SBN), partnered with OVO._]
  #v(2pt)
  - Built a real-time stock trading platform from the ground up, designed for high scalability and performance
  - Served as core developer for the SBN (Government Bonds) project, enabling retail investors to purchase bonds digitally
  - Developed monitoring and metrics systems along with core internal tools and libraries used across the organization
]

// Education
#section("Education")

#grid(
  columns: (1fr, auto),
  text(weight: "bold")[Universitas Indonesia],
  text(fill: secondary, size: 9pt)[2018],
)
Bachelor's Degree in Economics

// Projects
#section("Personal Projects")

#text(weight: "bold")[Homeserver] #h(4pt) #text(fill: secondary, size: 9pt)[Nix, Lua]

A NixOS-based home server infrastructure that hosts personal tools and entertainment services, accessible remotely from anywhere. Demonstrates expertise in declarative system configuration and self-hosted infrastructure management.

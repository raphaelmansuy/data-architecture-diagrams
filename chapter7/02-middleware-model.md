```mermaid
graph TB
  subgraph M["Middleware"]
  end
  A["Application A"] -- "Connects to" --> M
  B["Application B"] -- "Connects to" --> M
  C["Application C"] -- "Connects to" --> M
  D["Application D"] -- "Connects to" --> M
  style A fill:#f9d79b,stroke:#f39c12,stroke-width:2px
  style B fill:#f9d79b,stroke:#f39c12,stroke-width:2px
  style C fill:#f9d79b,stroke:#f39c12,stroke-width:2px
  style D fill:#f9d79b,stroke:#f39c12,stroke-width:2px
  style M fill:#aed6f1,stroke:#3498db,stroke-width:2px
  linkStyle 0 stroke:#2ecd71,stroke-width:2px;
  linkStyle 1 stroke:#2ecd71,stroke-width:2px;
  linkStyle 2 stroke:#2ecd71,stroke-width:2px;
  linkStyle 3 stroke:#2ecd71,stroke-width:2px;

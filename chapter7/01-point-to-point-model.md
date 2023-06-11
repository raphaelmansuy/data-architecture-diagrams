```mermaid
graph TB
  A["Application A"] -- "Direct Connection" --> B["Application B"]
  A -- "Direct Connection" --> C["Application C"]
  B -- "Direct Connection" --> C
  A -- "Direct Connection" --> D["Application D"]
  B -- "Direct Connection" --> D
  C -- "Direct Connection" --> D
  style A fill:#f9d79b,stroke:#f39c12,stroke-width:2px
  style B fill:#f9d79b,stroke:#f39c12,stroke-width:2px
  style C fill:#f9d79b,stroke:#f39c12,stroke-width:2px
  style D fill:#f9d79b,stroke:#f39c12,stroke-width:2px
  linkStyle 0 stroke:#2ecd71,stroke-width:2px;
  linkStyle 1 stroke:#2ecd71,stroke-width:2px;
  linkStyle 2 stroke:#2ecd71,stroke-width:2px;
  linkStyle 3 stroke:#2ecd71,stroke-width:2px;
  linkStyle 4 stroke:#2ecd71,stroke-width:2px;
  linkStyle 5 stroke:#2ecd71,stroke-width:2px;

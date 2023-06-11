```mermaid
graph TB
  A["Application A"] -- "Direct Connection" --> B["Application B"]
  A -- "Direct Connection" --> C["Application C"]
  B -- "Direct Connection" --> C
  A -- "Direct Connection" --> D["Application D"]
  B -- "Direct Connection" --> D
  C -- "Direct Connection" --> D

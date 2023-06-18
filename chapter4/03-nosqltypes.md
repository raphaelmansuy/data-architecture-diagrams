```mermaid
graph TD
  A[NoSQL Databases]
  B[Document-Based]
  C[Column-Based]
  D[Key-Value]
  E[Graph]
  F[Hybrid SQL/NoSQL]

  A-->B
  A-->C
  A-->D
  A-->E
  A-->F

  B---|Examples| G[MongoDB]
  B---|Examples| H[CouchDB]

  C---|Examples| I[Cassandra]
  C---|Examples| J[HBase]

  D---|Examples| K[Redis]
  D---|Examples| L[Riak]
  D---|Examples| Q[DynamoDB]

  E---|Examples| M[Neo4j]
  E---|Examples| N[OrientDB]
  E---|Examples| R[Amazon Neptune]

  F---|Examples| O[CockroachDB]
  F---|Examples| P[ArangoDB]
```
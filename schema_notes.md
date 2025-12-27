## Chinook Database – Core Tables

- **Customer**: Stores customer details and geographic information
- **Invoice**: Represents sales transactions at the invoice level
- **InvoiceLine**: Contains line-level purchase details
- **Track**: Individual products sold
- **Album & Artist**: Product hierarchy
- **Genre**: Music category classification

## Key Relationships

Customer → Invoice → InvoiceLine → Track → Album → Artist  
Track → Genre

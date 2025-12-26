## Chinook Database – Core Tables

- Customer: stores customer information and location
- Invoice: represents sales transactions at the invoice level
- InvoiceLine: contains line-level purchase details
- Track: individual products sold
- Album & Artist: product hierarchy
- Genre: category classification

## Key Relationships
Customer → Invoice → InvoiceLine → Track → Album → Artist
Track → Genre

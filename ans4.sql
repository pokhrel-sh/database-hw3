SELECT DISTINCT 
    customers.CustomerId,
    customers.FirstName,
    customers.LastName
FROM customers
    JOIN invoices ON customers.CustomerId = invoices.CustomerId
    JOIN invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
    JOIN tracks ON invoice_items.TrackId = tracks.TrackId
    WHERE tracks.Milliseconds > (
        SELECT AVG(Milliseconds)
        FROM tracks
        WHERE Milliseconds > 900000
    )
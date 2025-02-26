namespace GuATraining.Books.Book;

using Microsoft.Sales.Customer;

tableextension 50200 "BSBC Book" extends "BSB Book"
{
    fields
    {
        field(50200; "BSBC No. of Customer Likes"; Integer)
        {
            Caption = 'No. of Customer Likes';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Customer where("BSB Favorite Book No." = field("No.")));
            ToolTip = 'Number of Customers who have assigned this Book as their Favorite Book.',
                Comment = 'de-DE=Anzahl der Debitoren, die dieses Buch als Lieblingsbuch zugeordnet haben.';
        }
    }
}
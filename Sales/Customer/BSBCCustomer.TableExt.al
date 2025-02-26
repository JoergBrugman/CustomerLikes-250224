namespace GuATraining.Sales.Customer;

using Microsoft.Sales.Customer;
using GuATraining.Books.Book;

tableextension 50201 "BSBC Customer" extends Customer
{
    fields
    {
        modify("BSB Favorite Book No.")
        {
            trigger OnAfterValidate()
            begin
                if "BSB Favorite Book No." <> xRec."BSB Favorite Book No." then
                    Modify();
            end;
        }
    }
    procedure ShowFavoriteBook()
    var
        BSBBook: Record "BSB Book";
    begin
        BSBBook.ShowCard("BSB Favorite Book No.");
    end;
}
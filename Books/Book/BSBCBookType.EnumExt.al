namespace GuATraining.Books.Book;
using GuATraining.Books.Interfaces;

enumextension 50200 "BSBC Book Type" extends "BSB Book Type"
{
    value(50200; eBook)
    {
        Caption = 'E-Book', Comment = 'de-DE=E-Book';
        Implementation = "BSB Book Type Process" = "BSBC Book Type EBook Impl.";
    }
}
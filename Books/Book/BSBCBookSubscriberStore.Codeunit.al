namespace GuATraining.Books.Book;

using Microsoft.Sales.Customer;

codeunit 50200 "BSBC Book Subscriber Store"
{
    var
        Customer: Record Customer;
        BSBBookOnBeforeOnDeleteErr: Label 'You may not delete %1 %2 because it is assigned to one or more Customers',
            Comment = 'de-DE=Sie dürfen %1 %2 nicht löschen, weil es einem oder mehreren Debitore zugeornet ist';

    [EventSubscriber(ObjectType::Table, Database::"BSB Book", OnBeforeOnDelete, '', false, false)]
    local procedure "BSB Book_OnBeforeOnDelete"(var Rec: Record "BSB Book"; var xRec: Record "BSB Book"; var IsHandled: Boolean)
    begin
        if IsHandled then
            exit;

        Customer.Reset();
        Customer.SetCurrentKey("BSB Favorite Book No.");
        Customer.SetRange("BSB Favorite Book No.", Rec."No.");
        if not Customer.IsEmpty() then
            error(BSBBookOnBeforeOnDeleteErr, Rec.TableCaption, Rec."No.");
        IsHandled := true;
    end;
}
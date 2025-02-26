namespace GuATraining.Books.Interfaces;

codeunit 50210 "BSBC Book Type EBook Impl." implements "BSB Book Type Process"
{
    procedure DeployBook()
    begin
        Message('Upload to Portal');
    end;

    procedure DeliverBook()
    begin
        Message('Send Customer E-Mail');
    end;
}
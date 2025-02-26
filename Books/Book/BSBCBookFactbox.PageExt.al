pageextension 50200 "BSBC Book Factbox" extends "BSB Book Factbox"
{
    layout
    {
        addlast(Content)
        {
            field("BSBC No. of Customer Likes"; Rec."BSBC No. of Customer Likes")
            {
                ApplicationArea = All;
            }
            //TODO Feld wird in der Factbox nicht richtig erneuert!
        }
    }
}
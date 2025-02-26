pageextension 50201 "BSBC Customer Card" extends "Customer Card"
{
    actions
    {
        addlast(navigation)
        {
            action("BSBC FavoriteBookCard")
            {
                Caption = 'Book Card', Comment = 'de-DE=Buchkarte';
                ApplicationArea = All;
                Image = Card;
                ToolTip = 'Shows the Book Card for Favorite Book', Comment = 'de-DE=Zeigt die Buchkarte für das Lieblingsbuch';
                Enabled = Rec."BSB Favorite Book No." <> '';

                trigger OnAction()
                begin
                    Rec.ShowFavoriteBook();
                end;
            }
        }
    }
}
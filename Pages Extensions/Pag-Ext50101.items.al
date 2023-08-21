/// <summary>
/// PageExtension items (ID 50101) extends Record Item Card.
/// </summary>
pageextension 50101 items extends "Item Card"
{
    layout
    {
        addafter(Blocked)
        {
            field("brand"; rec.brand)
            {
                Caption = 'brand name';
                ApplicationArea = All;


                trigger OnValidate();
                begin

                end;
            }
        }
    }


}

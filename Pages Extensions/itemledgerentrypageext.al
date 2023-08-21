/// <summary>
/// PageExtension item ledger entry pageext (ID 50129) extends Record Item Ledger Entries.
/// </summary>
pageextension 50129 "item ledger entry pageext" extends "Item Ledger Entries"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Adds the action called "My Actions" to the Action menu 
        addfirst(Processing)
        {
            action("My Actions")
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                trigger OnAction()
                begin

                end;
            }
        }
        addfirst(Creation)
        {
            // Adds the action "My New document" to the New Document group in the Actions menu. 
            action("My New document")
            // {
            //     ApplicationArea = All;
            //     RunObject = page "Item Ledger Entries";
            //     Image = "1099Form";
            // }
            {
                ApplicationArea = All;
                RunObject = report "Item ledger entry report";
            }
        }
        addfirst(Navigation)
        {
            // Adds the action called "My Navigate" to the Navigate menu. 
            action("My Navigate")
            // {
            //     ApplicationArea = All;
            //     RunObject = page "Item Ledger Entries";
            // }
            {
                ApplicationArea = All;
                RunObject = report "Item ledger entry report";
            }
        }
        addfirst(Reporting)
        {

            action("My Report")
            {
                ApplicationArea = All;
                RunObject = report "Item ledger entry report";

            }

        }

    }

    var
        myInt: Integer;

}
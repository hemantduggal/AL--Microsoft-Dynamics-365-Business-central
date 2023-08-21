/// <summary>
/// PageExtension ItemExt (ID 50149) extends Record Sales Order List.
/// </summary>
pageextension 50148 salesExt extends "Sales Order List"
{
    actions
    {
        addafter("Request Approval")
        {

            action(ImportItems)
            {
                Caption = 'import sales list';
                Promoted = true;
                PromotedCategory = Process;
                Image = Import;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Xmlport.Run(50101, false, true);
                end;
            }
            action(exportItems)
            {
                Caption = 'export sales list';
                Promoted = true;
                PromotedCategory = Process;
                Image = Export;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Xmlport.Run(50132, true, false);
                end;
            }

        }
    }
}
/// <summary>
/// Page Student List Page (ID 50114).
/// </summary>
page 50114 "Student List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Student Header Table";
    CardPageId = "Student card Page";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }


            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(Save)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('Data Saved');
                end;
            }
        }
    }


}
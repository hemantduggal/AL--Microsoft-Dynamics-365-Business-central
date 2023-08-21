/// <summary>
/// Page RFQ list Page (ID 50144).
/// </summary>
page 50146 "Posted RFQ list Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = " Posted RFQ Header";
    CardPageId = "Posted RFQ Card page";




    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'general';

                field(RFQ_Document_no; Rec.P_RFQ_Document_no)
                {
                    ApplicationArea = All;

                }
                field(Customer_No; Rec.P_Customer_No)
                {
                    ApplicationArea = All;

                }



            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Test)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('Data Inserted ');
                end;
            }
        }
    }


}
/// <summary>
/// Page RFQ subform page (ID 50148).
/// </summary>
page 50148 "Posted RFQ subform page"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = " Posted RFQ Line";
    Caption = 'Posted RFQsubform page';
    Description = 'This is a Posted subfrom page ';
    AboutText = 'Posted RFQSubform PAge ';
    AboutTitle = 'This Is a Posted RFQSubform Page ';


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'general';
                field(RFQ_Document_no; Rec.L_RFQ_Document_no)
                {
                    ApplicationArea = All;

                }
                field(RFQ_Type; Rec.L_RFQ_Type)
                {
                    ApplicationArea = All;

                }
                field(item_no; Rec.L_item_no)
                {
                    ApplicationArea = All;

                }

                field(Decription; Rec.L_Decription)
                {
                    ApplicationArea = All;

                }
                field(Quantity; Rec.L_Quantity)
                {
                    ApplicationArea = All;

                }
                field(UOM; Rec.L_UOM)
                {
                    ApplicationArea = All;

                }
                field(Unit_price; Rec.L_Unit_price)
                {
                    ApplicationArea = All;

                }
                field(Customer_No; Rec.L_Customer_No)
                {
                    ApplicationArea = All;

                }
                field(Location_Code; Rec.L_Location_Code)
                {
                    ApplicationArea = All;

                }
                field(Posting_date; Rec.L_Posting_date)
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
            action(Post)
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
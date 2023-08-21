/// <summary>
/// Page Posted RFQ card page (ID 50145).
/// </summary>
page 50147 "Posted RFQ card page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = " Posted RFQ Header";
    Caption = 'Posted RFQ header card page ';
    AboutText = 'Posted Card PAge ';
    AboutTitle = 'This Is a Posted card Page ';


    layout
    {
        area(Content)
        {
            group(GeneralDetail)
            {
                field(RFQ_Document_no; Rec.P_RFQ_Document_no)
                {
                    ApplicationArea = All;

                }
                field(Document_Date; Rec.P_Document_Date)
                {
                    ApplicationArea = All;

                }
                field(Posting_date; Rec.P_Posting_date)
                {
                    ApplicationArea = All;

                }
                field(Customer_No; Rec.P_Customer_No)
                {
                    ApplicationArea = All;

                }
                field(Customer_name; Rec.P_Customer_name)
                {
                    ApplicationArea = All;

                }
                field(Location_Code; Rec.P_Location_Code)
                {
                    ApplicationArea = All;

                }

            }
            group(otherdetails)
            {
                part(general; "Posted RFQ subform page")
                {
                    SubPageLink = L_RFQ_Document_no = field(p_Customer_No);
                    ApplicationArea = All;


                }

            }

        }
    }





    actions
    {

        area(Processing)
        {
            action(POST)
            {
                ApplicationArea = All;
                RunObject = page 50146;

                RunPageLink = P_RFQ_Document_no = field(p_Customer_No);
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    Message('Data Inserted ');
                end;
            }
            action("Posting Report")
            {
                ApplicationArea = All;
                //RunObject = report "RFQ REPORTS";
                trigger OnAction()
                var
                    Rec: Record " Posted RFQ header";



                begin
                    // Rec.FindLast;
                    Rec.FindSet();

                    Rec.setrange(P_RFQ_Document_no, Rec.P_RFQ_Document_no);
                    Rec.setrecfilter;
                    report.run(50146, true, false, Rec)

                end;







            }

        }

    }




    var
        myInt: Integer;


}
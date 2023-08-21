/// <summary>
/// Page Student card Page (ID 50115).
/// </summary>
page 50115 "Student card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Student Header Table";
    AboutText = 'Card PAge ';
    AboutTitle = 'This Is a card Page ';


    layout
    {
        area(Content)
        {
            group(General)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }

                field(PhoneNo; Rec.PhoneNo)
                {
                    ApplicationArea = All;

                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;

                }

                field(Pincode; Rec.Pincode)
                {
                    ApplicationArea = All;

                }

                field(State; Rec.State)
                {
                    ApplicationArea = All;

                }

                field(City; Rec.City)
                {
                    ApplicationArea = All;

                }
            }
            group(otherdetails)
            {
                part("Other details"; "Student Subform Page")
                {
                    SubPageLink = No = field(No);
                    ApplicationArea = All;

                }




            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                RunObject = page 50115;
                RunPageLink = "Name" = field(Name);
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;


                trigger OnAction()
                begin
                    Message('Data inserted');
                end;
            }
        }
    }

    var
        myInt: Integer;
}
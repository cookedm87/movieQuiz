using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : Page
{
    public static int score = 0;
    public static int questionsAnswered = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        brave.Visible = false;
        braveA.Text = "QUOTE:<br/>'You tell your king, William Wallace will not be ruled, and nor will any Scot while I live.'";
        anchor.Visible = false;
        anchorA.Text = "QUOTE:<br/>'You pooped in the refridgerator and you ate the whole wheel of cheese? How'd you do that? I'm not even mad, that's amazing.'";
        monster.Visible = false;
        monsterA.Text = "QUOTE: <br/>'You know only somebody with perfect comedic timing could produce this much energy in one shot.'";
        basterd.Visible = false;
        basterdA.Text = "QUOTE: <br/>'You probably heard we ain't in the prisoner taking business, we in the killing nazi business and cousin business is a-booming'";
        sin.Visible = false;
        sinA.Text = "QUOTE: <br/>'It's nothing, barely a flesh wound. On your feet old man.'";
        lord.Visible = false;
        lordA.Text = "QUOTE: <br/>'You shall not pass!'";
        Indie.Visible = false;
        IndieA.Text = "QUOTE: <br/>'Snakes. Why'd it have to be snakes.'";
        star.Visible = false;
        starA.Text = "QUOTE: <br/>'And I thought they smelt bad on the outside.";
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex < 0)
        {
            errorDiv1.InnerText = "Please select an answer";
        }
        else if (RadioButtonList1.SelectedIndex == 1)
        {
            score++;
            questionsAnswered++;
            Button1.Enabled = false;
            RadioButtonList1.Items.FindByValue("correct").Attributes.Add("class", "right");
            brave.Visible = true;
            braveA.Text = "That's right! Who could forget Mel Gibson's performance as William Wallace in this classic from 1995.";
            UpdatePanel2.Update();
            UpdatePanel3.Update();
            UpdatePanel7.Update();
            
        }
        else
        {
            questionsAnswered++;
            Button1.Enabled = false;
            RadioButtonList1.SelectedItem.Attributes.Add("class", "wrong");
            RadioButtonList1.Items.FindByValue("correct").Attributes.Add("class", "right");
            brave.Visible = true;
            braveA.Text = "Oh No. It was Mel Gibson in Braveheart of course. I suppose it was made in 1995, perhaps it is before your time?";
            UpdatePanel2.Update();
            UpdatePanel3.Update();
            UpdatePanel7.Update();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (RadioButtonList2.SelectedIndex < 0)
        {
            errorDiv2.InnerText = "Please select an answer";
        }
        else if (RadioButtonList2.SelectedIndex == 3)
        {
            score++;
            questionsAnswered++;
            Button3.Enabled = false;
            RadioButtonList2.Items.FindByValue("correct").Attributes.Add("class", "right");
            anchor.Visible = true;
            anchorA.Text = "Well done! Another easy one. We've all seen Anchorman, it's just full of memorable quotes";
            UpdatePanel5.Update();
            UpdatePanel6.Update();
            UpdatePanel12.Update();
        }
        else
        {
            questionsAnswered++;
            Button3.Enabled = false;
            RadioButtonList2.SelectedItem.Attributes.Add("class", "wrong");
            RadioButtonList2.Items.FindByValue("correct").Attributes.Add("class", "right");
            anchor.Visible = true;
            anchorA.Text = "Wow.. I thought everyone would get this one, It's Will Ferral as Ron Burgundy in this comedy gem";
            UpdatePanel5.Update();
            UpdatePanel6.Update();
            UpdatePanel12.Update();
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (RadioButtonList3.SelectedIndex < 0)
        {
            errorDiv3.InnerText = "Please select an answer";
        }
        else if (RadioButtonList3.SelectedIndex == 0)
        {
            score++;
            questionsAnswered++;
            Button4.Enabled = false;
            RadioButtonList3.Items.FindByValue("correct").Attributes.Add("class", "right");
            monster.Visible = true;
            monsterA.Visible = true;
            monsterA.Text = "Correct! Who doesn't love a good Pixar film. This is, of course, BIlly Crystal as Mike Wazowski.";
            UpdatePanel9.Update();
            UpdatePanel10.Update();
            UpdatePanel11.Update();
        }
        else
        {
            questionsAnswered++;
            Button4.Enabled = false;
            RadioButtonList3.SelectedItem.Attributes.Add("class", "wrong");
            RadioButtonList3.Items.FindByValue("correct").Attributes.Add("class", "right");
            monster.Visible = true;
            monsterA.Visible = true;
            monsterA.Text = "I know it's a kids film, but it's a great one. This is, of course, Billy Crystal as Mike Wazowski in Monsters, inc.";
            UpdatePanel9.Update();
            UpdatePanel10.Update();
            UpdatePanel11.Update();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButtonList4.SelectedIndex < 0)
        {
            errorDiv4.InnerText = "Please select an answer";
        }
        else if (RadioButtonList4.SelectedIndex == 2)
        {
            score++;
            questionsAnswered++;
            Button2.Enabled = false;
            RadioButtonList4.Items.FindByValue("correct").Attributes.Add("class", "right");
            basterd.Visible = true;
            basterdA.Text = "That's right! The one and only Brad Pitt as First Lieutenant Aldo Raine.";
            basterdA.Visible = true;
            UpdatePanel13.Update();
            UpdatePanel15.Update();
            UpdatePanel14.Update();
        }
        else
        {
            questionsAnswered++;
            Button2.Enabled = false;
            RadioButtonList4.SelectedItem.Attributes.Add("class", "wrong");
            RadioButtonList4.Items.FindByValue("correct").Attributes.Add("class", "right");
            basterd.Visible = true;
            basterdA.Text = "I understand.. It's getting a bit tougher.. It was Brad Pitt as First Lieutenant Aldo Raine in Inglourious Basterds";
            basterdA.Visible = true;
            UpdatePanel13.Update();
            UpdatePanel14.Update();
            UpdatePanel15.Update();
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (RadioButtonList5.SelectedIndex < 0)
        {
            errorDiv5.InnerText = "Please select an answer";
        }
        else if (RadioButtonList5.SelectedIndex == 2)
        {
            score++;
            questionsAnswered++;
            Button5.Enabled = false;
            RadioButtonList5.Items.FindByValue("correct").Attributes.Add("class", "right");
            sin.Visible = true;
            sinA.Text = "Well done. That one was hard. It was Bruce Willis as Detective John Hartigan.";
            sinA.Visible = true;
            UpdatePanel18.Update();
            UpdatePanel19.Update();
            UpdatePanel20.Update();
        }
        else
        {
            questionsAnswered++;
            Button5.Enabled = false;
            RadioButtonList5.SelectedItem.Attributes.Add("class", "wrong");
            RadioButtonList5.Items.FindByValue("correct").Attributes.Add("class", "right");
            sin.Visible = true;
            sinA.Text = "Unlucky, that one was tough. It was Bruce Willis as Detective John Hartigan in Sin City.";
            sinA.Visible = true;
            UpdatePanel18.Update();
            UpdatePanel19.Update();
            UpdatePanel20.Update();
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        if (RadioButtonList6.SelectedIndex < 0)
        {
            errorDiv6.InnerText = "Please select an answer";
        }
        else if (RadioButtonList6.SelectedIndex == 2)
        {
            score++;
            questionsAnswered++;
            Button6.Enabled = false;
            RadioButtonList6.Items.FindByValue("correct").Attributes.Add("class", "right");
            lord.Visible = true;
            lordA.Text = "Easy Peasy. The classic fight scene with the Balrog from 'The Fellowship of the Rings'";
            lordA.Visible = true;
            UpdatePanel23.Update();
            UpdatePanel29.Update();
            UpdatePanel30.Update();
        }
        else
        {
            questionsAnswered++;
            Button6.Enabled = false;
            RadioButtonList6.SelectedItem.Attributes.Add("class", "wrong");
            RadioButtonList6.Items.FindByValue("correct").Attributes.Add("class", "right");
            lord.Visible = true;
            lordA.Text = "Tough luck. It was Ian McKellen as Gandalf in The Lord of the Rings";
            lordA.Visible = true;
            UpdatePanel23.Update();
            UpdatePanel29.Update();
            UpdatePanel30.Update();
        }
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        if (RadioButtonList7.SelectedIndex < 0)
        {
            errorDiv7.InnerText = "Please select an answer";
        }
        else if (RadioButtonList7.SelectedIndex == 0)
        {
            score++;
            questionsAnswered++;
            Button7.Enabled = false;
            RadioButtonList7.Items.FindByValue("correct").Attributes.Add("class", "right");
            Indie.Visible = true;
            IndieA.Text = "That's right, Harrison Ford as Indiana Jones. Well done.";
            IndieA.Visible = true;
            UpdatePanel32.Update();
            UpdatePanel34.Update();
            UpdatePanel35.Update();
        }
        else
        {
            questionsAnswered++;
            Button7.Enabled = false;
            RadioButtonList7.SelectedItem.Attributes.Add("class", "wrong");
            RadioButtonList7.Items.FindByValue("correct").Attributes.Add("class", "right");
            Indie.Visible = true;
            IndieA.Text = "Too bad. It was Harrison Ford as Indiana Jones.";
            IndieA.Visible = true;
            UpdatePanel32.Update();
            UpdatePanel34.Update();
            UpdatePanel35.Update();
        }
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        if (RadioButtonList8.SelectedIndex < 0)
        {
            errorDiv8.InnerText = "Please select an answer";
        }
        else if (RadioButtonList8.SelectedIndex == 3)
        {
            score++;
            questionsAnswered++;
            Button8.Enabled = false;
            RadioButtonList8.Items.FindByValue("correct").Attributes.Add("class", "right");
            star.Visible = true;
            starA.Text = "Harrison Ford again as Han Solo of course. Well remembered on which film though.";
            starA.Visible = true;
            UpdatePanel37.Update();
            UpdatePanel39.Update();
            UpdatePanel40.Update();
        }
        else
        {
            questionsAnswered++;
            Button8.Enabled = false;
            RadioButtonList8.SelectedItem.Attributes.Add("class", "wrong");
            RadioButtonList8.Items.FindByValue("correct").Attributes.Add("class", "right");
            star.Visible = true;
            starA.Text = "Oh dear. It was Harrison Ford again as Han Solo in The Empire Strikes Back.";
            starA.Visible = true;
            UpdatePanel37.Update();
            UpdatePanel39.Update();
            UpdatePanel40.Update();
        }
    }

    protected void FinalButton_Click(object sender, EventArgs e)
    {
        if(questionsAnswered < 8)
        {
            Label6.Text = "Please answer all the questions.";
        }
        if(questionsAnswered == 8)
        {
            if (score <= 3)
            {
                Label6.Text = "You scored " + score + " out of 8. Someone needs to go to the cinema more... But good try.";
                UpdatePanel21.Update();
            }
            else if (score <= 5)
            {
                Label6.Text = "You scored " + score + " out of 8. Not too bad.. You missed some easy ones though.";
                UpdatePanel21.Update();
            }
            else if (score <= 7)
            {
                Label6.Text = "You scored " + score + " out of 8. Nice work. You know your stuff";
                UpdatePanel21.Update();
            }
            else
            {
                Label6.Text = "You scored " + score + " out of 8. Wow.. You really know your stuff. Congratualte yourself with a pat on the back";
                UpdatePanel21.Update();
            }
        }
    }
}
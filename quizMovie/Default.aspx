<%@ Page Title="Movie Quote Quiz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="start" runat="server">
        <h1 class="title" id="title">What's the Movie</h1>
        <h2>Play the clip and guess the movie its from!</h2>
        <br />
    </div>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Question 1" ></asp:Label>
    <br />
    <div id="q1" runat="server" class="row">
        <div class="question">
            <audio controls class="audio mejs__player">
                <source src="audioClips/braveheartb.mp3" type="audio/mp3">
                Your browser does not support the audio tag.
            </audio>
            <asp:UpdatePanel ID="UpdatePanel7" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="list">
                        <asp:ListItem>A Fish Called Wanda</asp:ListItem>
                        <asp:ListItem Value="correct">Braveheart</asp:ListItem>
                        <asp:ListItem>Cool Runnings</asp:ListItem>
                        <asp:ListItem>Mrs Doubtfire</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator runat="server" ID="q1Required" Display="Dynamic"
        ControlToValidate="RadioButtonList1" ErrorMessage="Please select an answer" ValidationGroup="VG">*</asp:RequiredFieldValidator>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>     
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline">
            <ContentTemplate>
                <asp:Button ID="Button1" runat="server" Text="CHECK ANSWER" CssClass="button" OnClick="Button1_Click1"/>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="answerCont">
                    <asp:Label ID="braveA" CssClass="answer" runat="server" Text=""></asp:Label>
                </div>
            </ContentTemplate>         
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="imgCont">
                    <asp:Image ID="brave" runat="server" ImageUrl="http://t0.gstatic.com/images?q=tbn:ANd9GcSnnenelmzF4MKdtHBnaQYbDstLRExO1brKmrTBe_Ve40Vwq_lO" CssClass="picture"/>
                </div>
            </ContentTemplate>   
        </asp:UpdatePanel>
    </div>
    <asp:UpdatePanel ID="UpdatePanel22" runat="server">
        <ContentTemplate>
            <div id="errorDiv1" class="error" runat="server"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />

    <asp:Label ID="Label2" runat="server" Text="Question 2"></asp:Label>
    <br />
    <div id="q2" runat="server" class="row">
        <div class="question">
            <audio controls class="audio">
                <source src="audioClips/cheese.mp3" type="audio/mp3">
                Your browser does not support the audio tag.
            </audio>
            <asp:UpdatePanel ID="UpdatePanel12" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="list">
                        <asp:ListItem>Mean Girls</asp:ListItem>
                        <asp:ListItem>Hitch</asp:ListItem>
                        <asp:ListItem>Zoolander</asp:ListItem>
                        <asp:ListItem Value="correct">Anchorman</asp:ListItem>
                    </asp:RadioButtonList>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Button ID="Button3" runat="server" Text="CHECK ANSWER" CssClass="button" OnClick="Button3_Click"/>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="answerCont">
                    <asp:Label ID="anchorA" CssClass="answer" runat="server" Text="That's right it's Will Ferral in Anchorman"></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="imgCont">
                    <asp:Image ID="anchor" runat="server" CssClass="picture" ImageUrl="http://t0.gstatic.com/images?q=tbn:ANd9GcTS6dOWCYa3R7GD0C2o7FqX1TZi-rHheH2Ty5DRgS38EnHnaVla"/>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:UpdatePanel ID="UpdatePanel24" runat="server">
        <ContentTemplate>
            <div id="errorDiv2" class="error" runat="server"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />

    <asp:Label ID="Label3" runat="server" Text="Question 3"></asp:Label>
    <br />
    <div id="q3" runat="server" class="row">
        <div class="question">
            <audio controls class="audio">
                <source src="audioClips/perfect.mp3" type="audio/mp3">
                Your browser does not support the audio tag.
            </audio>
            <asp:UpdatePanel ID="UpdatePanel11" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" CssClass="list">
                        <asp:ListItem Value="correct">Monsters, Inc</asp:ListItem>
                        <asp:ListItem>Finding Nemo</asp:ListItem>
                        <asp:ListItem>Toy Story</asp:ListItem>
                        <asp:ListItem>Shrek</asp:ListItem>
                    </asp:RadioButtonList>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Button ID="Button4" runat="server" Text="Check Answer" CssClass="button" OnClick="Button4_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel9" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="answerCont">
                    <asp:Label ID="monsterA" CssClass="answer" runat="server" Text="That's right, who could forget this one..."></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel10" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class ="imgCont">
                    <asp:Image ID="monster" CssClass="picture" runat="server" ImageUrl="http://t2.gstatic.com/images?q=tbn:ANd9GcTaeFK9RkQM00A7cbfc2iI3C573rSkbsubdyrY-ZZnT4jk0O_cB"/>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:UpdatePanel ID="UpdatePanel25" runat="server">
        <ContentTemplate>
            <div id="errorDiv3" class="error" runat="server"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />

    <asp:Label ID="Label4" runat="server" Text="Question 4"></asp:Label>
        <br />
    <div id="q4" runat="server" class="row">
        <div class="question">
            <div class="audio-player">
            <audio controls class="audio">
                <source src="audioClips/business.mp3" type="audio/mp3">
                Your browser does not support the audio tag.
            </audio>
            </div>
            <asp:UpdatePanel ID="UpdatePanel13" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" CssClass="list">
                        <asp:ListItem>The Great Escape</asp:ListItem>
                        <asp:ListItem>The Pianist</asp:ListItem>
                        <asp:ListItem Value="correct">Inglourious Basterds</asp:ListItem>
                        <asp:ListItem>Saving Private Ryan</asp:ListItem>
                    </asp:RadioButtonList>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:UpdatePanel ID="UpdatePanel16" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Button ID="Button2" runat="server" Text="Check Answer" CssClass="button" OnClick="Button2_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel15" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="answerCont">
                    <asp:Label ID="basterdA" CssClass="answer" runat="server" Text="That's right, who could forget this one..."></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel14" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="imgCont">
                    <asp:Image runat="server" CssClass="picture" ID="basterd" ImageUrl="http://t2.gstatic.com/images?q=tbn:ANd9GcQvl1IAwSys6SpV0QzocNFln0PQSwod5gBsdJRX5Tj98vwyFxal" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:UpdatePanel ID="UpdatePanel26" runat="server">
        <ContentTemplate>
            <div id="errorDiv4" class="error" runat="server"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />

    <asp:Label ID="Label5" runat="server" Text="Question 5"></asp:Label>
        <br />
    <div id="q5" runat="server" class="row"> 
        <div class="question">
            <audio controls class="audio">
                <source src="audioClips/fleshwound.mp3" type="audio/mp3">
                Your browser does not support the audio tag.
            </audio>
            <asp:UpdatePanel ID="UpdatePanel20" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:RadioButtonList ID="RadioButtonList5" runat="server" CssClass="list">
                        <asp:ListItem>Die Hard</asp:ListItem>
                        <asp:ListItem>Unbreakable</asp:ListItem>
                        <asp:ListItem Value="correct">Sin City</asp:ListItem>
                        <asp:ListItem>Pulp Fiction</asp:ListItem>
                    </asp:RadioButtonList>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:UpdatePanel ID="UpdatePanel17" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Button ID="Button5" runat="server" Text="Check Answer" CssClass="button" OnClick="Button5_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel18" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="answerCont">
                    <asp:Label ID="sinA" CssClass="answer" runat="server" Text="That's right, who could forget this one..."></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel19" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="imgCont">
                    <asp:Image runat="server" CssClass="picture" ID="sin" ImageUrl="http://t3.gstatic.com/images?q=tbn:ANd9GcRi8pi34f1YXQl-NQiduRKfUPPi-GDhUpeWByNIqC-P3jb31t31" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:UpdatePanel ID="UpdatePanel27" runat="server">
        <ContentTemplate>
            <div id="errorDiv5" class="error" runat="server"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />

    <asp:Label ID="Label7" runat="server" Text="Question 6" CssClass="questionNum"></asp:Label>
    <br />
    <div id="q6" runat="server" class="row">
        <div class="question">
            <audio controls class="audio">
                <source src="audioClips/shallnotpass.mp3" type="audio/mp3"/>
                Your browser does not support the audio tag.
            </audio>
            <asp:UpdatePanel ID="UpdatePanel23" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:RadioButtonList ID="RadioButtonList6" runat="server" CssClass="list">
                        <asp:ListItem>The Hobbit</asp:ListItem>
                        <asp:ListItem>Harry Potter</asp:ListItem>
                        <asp:ListItem Value="correct">Lord of the Rings</asp:ListItem>
                        <asp:ListItem>The Chronicles of Narnia</asp:ListItem>
                    </asp:RadioButtonList>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:UpdatePanel ID="UpdatePanel28" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Button ID="Button6" runat="server" Text="Check Answer" CssClass="button" OnClick="Button6_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel29" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="answerCont">
                    <asp:Label ID="lordA" CssClass="answer" runat="server" Text="That's right, who could forget this one..."></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel30" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="imgCont">
                    <asp:Image runat="server" CssClass="picture" ID="lord" ImageUrl="https://ia.media-imdb.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UX182_CR0,0,182,268_AL_.jpg" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
        <asp:UpdatePanel ID="UpdatePanel31" runat="server">
        <ContentTemplate>
            <div id="errorDiv6" class="error" runat="server"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />


    <%-- START HERE --%>
    <asp:Label ID="Label9" runat="server" Text="Question 7" CssClass="questionNum"></asp:Label>
    <br />
    <div id="q7" runat="server" class="row">
        <div class="question">
            <audio controls class="audio">
                <source src="audioClips/snakes.mp3" type="audio/mp3"/>
                Your browser does not support the audio tag.
            </audio>
            <asp:UpdatePanel ID="UpdatePanel32" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:RadioButtonList ID="RadioButtonList7" runat="server" CssClass="list">
                        <asp:ListItem Value="correct">Indiana Jones and the Raiders of the Lost Ark</asp:ListItem>
                        <asp:ListItem>Lethal Weapon</asp:ListItem>
                        <asp:ListItem>Rambo: First Blood</asp:ListItem>
                        <asp:ListItem>Deadpool</asp:ListItem>
                    </asp:RadioButtonList>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:UpdatePanel ID="UpdatePanel33" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Button ID="Button7" runat="server" Text="Check Answer" CssClass="button" OnClick="Button7_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel34" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="answerCont">
                    <asp:Label ID="IndieA" CssClass="answer" runat="server" Text="That's right, who could forget this one..."></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel35" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="imgCont">
                    <asp:Image runat="server" CssClass="picture" ID="Indie" ImageUrl="https://images-na.ssl-images-amazon.com/images/I/61H2YD-bubL._SY445_.jpg" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
        <asp:UpdatePanel ID="UpdatePanel36" runat="server">
        <ContentTemplate>
            <div id="errorDiv7" class="error" runat="server"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />

    <asp:Label ID="Label11" runat="server" Text="Question 8" CssClass="questionNum"></asp:Label>
    <br />
    <div id="q8" runat="server" class="row">
        <div class="question">
            <audio controls class="audio">
                <source src="audioClips/starwars.mp3" type="audio/mp3"/>
                Your browser does not support the audio tag.
            </audio>
            <asp:UpdatePanel ID="UpdatePanel37" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:RadioButtonList ID="RadioButtonList8" runat="server" CssClass="list">
                        <asp:ListItem>Star Wars: The Return of the Jedi</asp:ListItem>
                        <asp:ListItem>Star Wars: The Last Jedi</asp:ListItem>
                        <asp:ListItem>Blade Runner</asp:ListItem>
                        <asp:ListItem Value="correct">Star Wars: The Empire Strikes Back</asp:ListItem>
                    </asp:RadioButtonList>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:UpdatePanel ID="UpdatePanel38" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Button ID="Button8" runat="server" Text="Check Answer" CssClass="button" OnClick="Button8_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel39" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="answerCont">
                    <asp:Label ID="starA" CssClass="answer" runat="server" Text="That's right, who could forget this one..."></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel40" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="imgCont">
                    <asp:Image runat="server" CssClass="picture" ID="star" ImageUrl="https://upload.wikimedia.org/wikipedia/en/3/3c/SW_-_Empire_Strikes_Back.jpg" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
        <asp:UpdatePanel ID="UpdatePanel41" runat="server">
        <ContentTemplate>
            <div id="errorDiv8" class="error" runat="server"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />


    <asp:UpdatePanel ID="UpdatePanel21" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Button ID="FinalButton" runat="server" Text="Final Score" OnClick="FinalButton_Click" CssClass="finalButton"/>
            <br />
            <br />
            <div class="scoreCont">
                <asp:Label ID="Label6" CssClass="finalLabel" runat="server" Text=""></asp:Label>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
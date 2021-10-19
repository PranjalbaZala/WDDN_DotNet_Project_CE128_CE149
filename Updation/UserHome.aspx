<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="OnlineBookStoreProject.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UserHome Page</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link href="css/Custom.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container ">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx">
                            <span>
                                <img src="Icon/Logo.png" alt="OnlineStore" height="40" />
                            </span>OnlineBookStore
                        </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="#">Cart</a></li>
                            <li><a href="#">Orders</a></li>
                            <li><a href="Default.aspx">Logout</a></li>
                            <li><a href="#">About</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <!--Image Slider-->
            <div class="container">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <center>
                                <img src="ImgSlider/img3.jpg" alt="Sherlock Holmes" style="width: 60%; height: 50%;" /></center>
                            <div class="carousel-caption">
                                <h3>Sherlock Holmes</h3>
                                <p style="font-size: 18px;">“You see, but you do not observe.”</p>
                                <p><a class="btn btn-lg btn-primary" href="Action_Adventure.aspx" role="button">Buy Now</a></p>
                            </div>
                        </div>

                        <div class="item">
                            <center>
                                <img src="ImgSlider/img2.jpg" alt="Harry Potter" style="width: 60%; height: 50%;" /></center>
                        </div>


                        <div class="item">
                            <center>
                                <img src="ImgSlider/img5.jpg" alt="Sudha Murty" style="height: 515px;" /></center>
                        </div>


                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <!--Image Slider End-->
        </div>

        <!-- Middle Content Start-->
        <hr />
        <div class="container center">
            <div class="row ">
                <!--Categories of books starts here-->
                <!--Action and Adventure -->
                <div class="col-lg-4">
                    <img class="img-circle" src="Categories/Action_Adventure.jpg" alt="thumb" width="140" height="140" />
                    <h2>Action And Adventure</h2>
                    <p>
                        Action and Adventure is a genre of fiction that usually involves an adventure, risk taking and often action and physical danger.
                        Here The Odyssey by Homer,Gulliver's Travels by Jonathan Swift,Treasure Island by Robert Louis Stevenson,The Adventures of Huckleberry Finn
                        by Mark Twain and many more are some of the best sellers in action and adventure category.....
                    </p>
                    <p>
                        <a class="btn btn-default " href="Action_Adventure.aspx" role="button">View More &raquo;</a>
                        <!-- Here &raquo provides >> arrow-->
                    </p>
                </div>


                <!--Classics Books-->
                <div class="col-lg-4">
                    <img class="img-circle" src="Categories/classics.jpg" alt="thumb" width="140" height="140" />
                    <h2>Classics</h2>
                    <p>
                        The classics have been around for decades, and were often groundbreaking stories at their publish time, 
                        but have continued to be impactful for generations, serving as the foundation for many popular works we read today
                        Books like  Pride and Prejudice by Jane Austen (1813),The Great Gatsby by F. Scott Fitzgerald (1925) are some popular classics......
                    </p>
                    <p>
                        <a class="btn btn-default " href="Action_Adventure.aspx" role="button">View More &raquo;</a>
                    </p>
                </div>

                <!-- Comics Books-->
                <div class="col-lg-4">
                    <img class="img-circle" src="Categories/comics.jpg" alt="thumb" width="140" height="140" />
                    <h2>Comic Books</h2>
                    <p>
                        The stories in comic books and graphic novels are presented to the reader through engaging, sequential narrative 
                        art (illustrations and typography) that's either presented in a specific design or the traditional panel layout you find in 
                        comics. Spiderman , Marvel Studios characters comics are some of the good novels books.......
                    </p>
                    <p>
                        <a class="btn btn-default " href="Action_Adventure.aspx" role="button">View More &raquo;</a>
                    </p>
                </div>

                <!-- Fantasy Books-->
                <div class="col-lg-4" style="margin-top: 20px">
                    <img class="img-circle" src="Categories/Fantasy.jpg" alt="thumb" width="140" height="140" />
                    <h2>Fantasy</h2>
                    <p>
                        While usually set in a fictional imagined world—in opposition, Ta-Nehisi's Coates's The Water Dancer takes place in the 
                        very real world of American slavery—fantasy books include prominent elements of magic, mythology, or the supernatural
                        Books like the Arabian Nights, Alice Adventures in the Wonderland, Marry Poppins are some best sellers.......
                    </p>
                    <p>
                        <a class="btn btn-default " href="Action_Adventure.aspx" role="button">View More &raquo;</a>
                    </p>
                </div>

                <!-- Horror Books-->

                <div class="col-lg-4" style="margin-top: 20px">
                    <img class="img-circle" src="Categories/Horror.jpg" alt="thumb" width="140" height="140" />
                    <h2>Horror</h2>
                    <p>
                        Meant to cause discomfort and fear for both the character and readers, horror writers often make use of supernatural and 
                        paranormal elements in morbid stories that are sometimes a little too realistic. The master of horror fiction? None other 
                        than Stephen KingSome, Bird box , a silent place are some of the movie made from books........
                    </p>
                    <p>
                        <a class="btn btn-default " href="Action_Adventure.aspx" role="button">View More &raquo;</a>
                    </p>
                </div>

                <!-- Historical Books-->

                <div class="col-lg-4" style="margin-top: 20px">
                    <img class="img-circle" src="Categories/Historical.jpg" alt="thumb" width="140" height="140" />
                    <h2>Historical</h2>
                    <p>
                        Historical fiction is a literary genre where the story takes place in the past. Historical novels capture the details of the 
                        time period as accurately as possible for authenticity, including social norms, manners, customs, and traditions. Some the Best
                        Sellers Historical books are The Help,One Hundred Years of Solitude,Memoirs of a Geisha.......
                    </p>
                    <p>
                        <a class="btn btn-default " href="Action_Adventure.aspx" role="button">View More &raquo;</a>
                    </p>
                </div>
                <!--End of book category-->
            </div>
        </div>
        <!-- Middle Content End-->


        <!--Footer Content Starts Here-->
        <hr />
        <footer>
            <div class="container ">

                <p class="pull-right "><a href="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                
                <p>
                    &copy;&nbsp; &nbsp;2021 OnlineBookStore.co.in  <a href="Default.aspx">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Home&nbsp;&nbsp; &nbsp;| </a>
                    <a href="#">&nbsp;&nbsp; &nbsp;About&nbsp;&nbsp; &nbsp; | </a><a href="#">&nbsp;&nbsp; &nbsp;Contact&nbsp;&nbsp; &nbsp; | </a><a href="#">&nbsp;&nbsp; &nbsp;Products&nbsp;&nbsp; &nbsp;</a>
                </p>
            </div>

        </footer>
        <!-- Footer Content Ends Here -->
    </form>
</body>
</html>

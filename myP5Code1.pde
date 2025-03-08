setup = function() {
    size(600, 400);
};

//Background Images
var startSceneImage = loadImage("https://www.shutterstock.com/image-vector/vector-illustration-background-forest-scenery-600nw-1807427365.jpg");

var forestImage = loadImage("https://t3.ftcdn.net/jpg/03/68/23/16/360_F_368231646_kbSRNKJN49KSB5b9DcbcfpJ3o7g4BuXm.jpg");

var caveImage = loadImage("https://i.imgur.com/1YPenG3.jpg");

var dragonImage = loadImage("https://www.shutterstock.com/image-illustration/fearless-brave-knight-holding-flame-600nw-2212130671.jpg");

var ruinsImage = loadImage("https://media.fab.com/image_previews/gallery_images/14daccb1-7f59-443d-aa91-756eb4d4750d/4a04d0e0-e67f-4360-87ec-7909adeb4f2b.jpg");

var treasureImage = loadImage("https://www.shutterstock.com/image-illustration/treasury-hall-treasure-trove-gold-260nw-2473122171.jpg");

var bigfootImage = loadImage("https://www.courant.com/wp-content/uploads/2023/12/thinkstockphotos-152533219.jpg?w=1800&resize=1800,1800");

var foodpoisoningImage = loadImage("https://media.springernature.com/w300/springer-static/image/art%3A10.1038%2Fnature.2017.21377/MediaObjects/41586_2017_Article_BFnature201721377_Figa_HTML.jpg");

var bigfootattackingImage = loadImage("https://files.oaiusercontent.com/file-1cpnQwpTpMeq5tn9ENnvKP?se=2025-03-08T21%3A12%3A22Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3Da867b893-94b6-4a91-ad2a-5c7f86777e6a.webp&sig=Q2sujshFk5FQrqnT46vWoljDeI2QedG9zQexagLDq68%3D");

var riverImage = loadImage("https://files.oaiusercontent.com/file-DGURJsRWYAohZzo9cP5jEE?se=2025-03-08T21%3A33%3A05Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3Dcbf8c4a3-dcda-49c6-b6b2-1d96244795f4.webp&sig=BYAqNQ8pbLdOMxoHBB2yh%2Bx/5wjHuli8tPqFSgQASJA%3D");

var valleyImage = loadImage("https://saholaflowers.com/wp-content/uploads/2016/08/india.jpg");

//Variable Declarations
var sceneImage = startSceneImage;
var sceneText = "Where do you want to go?  [Press f for forest and c for cave]";

draw = function(){
  
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "Two paths... Which way? [Press 3 for left, 4 for right]";
     } 
     if(key == 'c'){
     sceneImage = caveImage
     sceneText = "Two paths... Which way? [Press 1 for left, 2 for right]"
     }
     if(key == '3'){
     sceneImage = bigfootImage
     sceneText = "You have encountered the legendary Big Foot! But he offers you\n something... Mushrooms? [Press y to accept, n to decline]";
     drawMushroom2();
     }
     if(key == 'y'){
     sceneImage = foodpoisoningImage;
     sceneText = "Woah, looks like Big Foot offered you some psychedelics. You end\n up high and overdose from mushrooms... [Press s to restart]";
     }
     if(key == 'n'){
     sceneImage = bigfootattackingImage;
     sceneText = "Oh no! Big Foot is enraged! You have died... [Press s to restart]";
     }
     if(key == '4'){
     sceneImage = riverImage;
     sceneText = "You have walked upon a river... But there are piranhas in it!\n [Press j to jump over it]";
     }
     if(key == 'j'){
     sceneImage = valleyImage;
     sceneText = "You have made it out of the forest! Hurray!";
     }
     if(key == 's'){
      sceneImage = startSceneImage;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
    } 
    if(key == '1'){
      sceneImage = ruinsImage;
      sceneText = "You have discovered the long lost city Zhiebridge.\n [Press v to continue]";
    }
    if(key == 'v'){
      sceneImage = dragonImage;
      sceneText = "GAME OVER... You have mistakenly entered the domain of Irraid\n the Magnificent. [Press s to restart]";
    }
    if(key == '2'){
      sceneImage = treasureImage;
      sceneText = "Jackpot! You have found the treasure of the lost city of Zhiebridge!\n [Press s to restart]";
    }
   }
  
};

var drawMushroom2 = function(){
  var mushroom2X = mouseX + random(-12,12);
  var mushroom2Y = mouseY + random(-12,12);
  text("🍄", mushroom2X, mushroom2Y);
}

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 375);
};




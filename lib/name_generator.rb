require 'getoptlong'

class NameGenerator
  
  def self.generate_word(word, follower_letters, min_length)
    last_pair = word[-2, 2]
    letter = follower_letters[last_pair].slice(rand(follower_letters[last_pair].length), 1)
    if word =~ /\s$/
      return word unless word.length <= min_length
      return generate_word(word[-1, 1]+letter, follower_letters, min_length)
    else
      word = word.gsub(/^\s/, '')
      return generate_word(word+letter, follower_letters, min_length)
    end
  end
  
  def self.generate num_names=1, min_length=3, max_length=9

    start_pairs = []
    follower_letters = Hash.new('')
     
    chars = NAMES.join(" ").chomp.downcase.gsub(/\s/, ' ').chars.to_a
    chars.push(chars[0], chars[1])
    (chars.length-2).times do |i|
      if chars[i] =~ /\s/
        start_pairs.push(chars[i+1, 2].join)
      end
      follower_letters[chars[i, 2].join]=follower_letters[chars[i,2].join]+chars[i+2,1].join
    end
    
    names = []
    num_names.times do
      names << generate_word(start_pairs[rand start_pairs.length], follower_letters, min_length)[0, max_length].capitalize
    end
    names
  end
  

  NAMES = %w(
    Aaron Adam Adrian Alan Alejandro Alex Allen Andrew Andy Anthony Art
    Arthur Barry Bart Ben Benjamin Bill Bobby Brad Bradley Brendan Brett
    Brian Bruce Bryan Carlos Chad Charles Chris Christopher Chuck Clay
    Corey Craig Dan Daniel Darren Dave David Dean Dennis Denny Derek Don
    Doug Duane Edward Eric Eugene Evan Frank Fred Gary Gene George Gordon
    Greg Harry Henry Hunter Ivan Jack James Jamie Jason Jay Jeff Jeffrey
    Jeremy Jim Joe Joel John Jonathan Joseph Justin Keith Ken Kevin Larry
    Logan Marc Mark Matt Matthew Michael Mike Nat Nathan Patrick Paul Perry
    Peter Philip Phillip Randy Raymond Ricardo Richard Rick Rob Robert Rod
    Roger Ross Ruben Russell Ryan Sam Scot Scott Sean Shaun Stephen Steve
    Steven Stewart Stuart Ted Thomas Tim Toby Todd Tom Troy Victor Wade
    Walter Wayne William
    Aaron
    Abdiel
    Abdullah
    Abel
    Abraham
    Abram
    Adam
    Adan
    Addison
    Aden
    Aditya
    Adolfo
    Adonis
    Adrian
    Adriel
    Adrien
    Agustin
    Ahmad
    Ahmed
    Aidan
    Aiden
    Alan
    Albert
    Alberto
    Alden
    Aldo
    Alec
    Alejandro
    Alessandro
    Alex
    Alexander
    Alexandre
    Alexandro
    Alexis
    Alexzander
    Alfonso
    Alfred
    Alfredo
    Ali
    Alijah
    Allan
    Allen
    Alonso
    Alonzo
    Alvaro
    Alvin
    Amari
    Amarion
    Amir
    Anderson
    Andre
    Andres
    Andrew
    Andy
    Angel
    Angelo
    Anthony
    Antoine
    Anton
    Antonio
    Antony
    Antwan
    Ari
    Ariel
    Arjun
    Armando
    Armani
    Arnold
    Aron
    Arthur
    Arturo
    Aryan
    Asa
    Asher
    Ashton
    Aubrey
    August
    Augustus
    Austen
    Austin
    Austyn
    Avery
    Axel
    Ayden
    Baby
    Bailey
    Barrett
    Barry
    Beau
    Ben
    Benjamin
    Bennett
    Benny
    Bernard
    Bernardo
    Bilal
    Billy
    Blaine
    Blaise
    Blake
    Blaze
    Bo
    Bobby
    Brad
    Braden
    Bradley
    Brady
    Bradyn
    Braeden
    Braedon
    Braiden
    Branden
    Brandon
    Braulio
    Braxton
    Brayan
    Brayden
    Braydon
    Brendan
    Brenden
    Brendon
    Brennan
    Brennen
    Brent
    Brenton
    Bret
    Brett
    Brian
    Brice
    Brock
    Brodie
    Brody
    Brooks
    Bruce
    Bruno
    Bryan
    Bryant
    Bryce
    Brycen
    Bryson
    Byron
    Cade
    Caden
    Cael
    Caiden
    Cale
    Caleb
    Calvin
    Camden
    Cameron
    Camren
    Camron
    Carl
    Carlo
    Carlos
    Carlton
    Carson
    Carter
    Casey
    Cason
    Cayden
    Cedric
    Cesar
    Chad
    Chaim
    Chance
    Chandler
    Charles
    Charlie
    Chase
    Chaz
    Chris
    Christian
    Christopher
    Clarence
    Clark
    Clay
    Clayton
    Clifford
    Clifton
    Clinton
    Coby
    Cody
    Colby
    Cole
    Coleman
    Colin
    Collin
    Colt
    Colten
    Colton
    Conner
    Connor
    Conor
    Conrad
    Cooper
    Corbin
    Cordell
    Corey
    Cornelius
    Cortez
    Cory
    Craig
    Cristian
    Cristobal
    Cristopher
    Cruz
    Cullen
    Curtis
    Cyrus
    Dakota
    Dale
    Dallas
    Dallin
    Dalton
    Damian
    Damien
    Damion
    Damon
    Dandre
    Dane
    Dangelo
    Daniel
    Danny
    Dante
    Daquan
    Darian
    Darien
    Darin
    Dario
    Darion
    Darius
    Darnell
    Darrell
    Darren
    Darrin
    Darrion
    Darrius
    Darryl
    Darwin
    Daryl
    Dashawn
    David
    Davin
    Davion
    Davis
    Davon
    Dawson
    Dayton
    Dean	Deandre
    Deangelo
    Declan
    Demarcus
    Demetrius
    Dennis
    Denzel
    Deon
    Deonte
    Derek
    Derick
    Derrick
    Deshaun
    Deshawn
    Desmond
    Destin
    Devan
    Devante
    Deven
    Devin
    Devon
    Devonte
    Devyn
    Dexter
    Diego
    Dillan
    Dillon
    Dimitri
    Dion
    Domenic
    Dominic
    Dominick
    Dominik
    Dominique
    Donald
    Donavan
    Donovan
    Dontae
    Donte
    Dorian
    Douglas
    Drake
    Draven
    Drew
    Duane
    Duncan
    Dustin
    Dwayne
    Dwight
    Dylan
    Dylon
    Ean
    Earl
    Easton
    Eddie
    Eddy
    Edgar
    Edgardo
    Eduardo
    Edward
    Edwin
    Efrain
    Efren
    Eli
    Elian
    Elias
    Eliezer
    Elijah
    Eliseo
    Elisha
    Elliot
    Elliott
    Ellis
    Elmer
    Elvin
    Elvis
    Emanuel
    Emerson
    Emiliano
    Emilio
    Emmanuel
    Emmett
    Enrique
    Eric
    Erick
    Erik
    Ernest
    Ernesto
    Esteban
    Estevan
    Ethan
    Ethen
    Eugene
    Evan
    Everett
    Ezekiel
    Ezequiel
    Ezra
    Fabian
    Felipe
    Felix
    Fernando
    Fidel
    Finn
    Forrest
    Francis
    Francisco
    Frank
    Frankie
    Franklin
    Fred
    Freddie
    Freddy
    Frederick
    Fredrick
    Gabriel
    Gael
    Gage
    Gaige
    Gannon
    Garett
    Garret
    Garrett
    Garrison
    Gary
    Gaven
    Gavin
    Gavyn
    Geoffrey
    George
    Gerald
    Gerard
    Gerardo
    German
    Gian
    Giancarlo
    Gianni
    Gideon
    Gilbert
    Gilberto
    Gino
    Giovanni
    Giovanny
    Glen
    Glenn
    Gonzalo
    Gordon
    Grady
    Graham
    Grant
    Grayson
    Gregory
    Greyson
    Griffin
    Guadalupe
    Guillermo
    Gunnar
    Gunner
    Gustavo
    Guy
    Haden
    Hamza
    Harley
    Harold
    Harrison
    Harry
    Hassan
    Hayden
    Heath
    Hector
    Henry
    Herbert
    Heriberto
    Holden
    Houston
    Howard
    Hudson
    Hugh
    Hugo
    Humberto
    Hunter
    Ian
    Ibrahim
    Ignacio
    Immanuel
    Irvin
    Irving
    Isaac
    Isaak
    Isai
    Isaiah
    Isaias
    Isiah
    Ismael
    Israel
    Issac
    Ivan
    Izaiah
    Jabari
    Jace
    Jack
    Jackson
    Jacob
    Jacoby
    Jaden
    Jadon
    Jadyn
    Jaeden
    Jagger
    Jaheem
    Jaheim
    Jahiem
    Jaiden
    Jaime
    Jair
    Jairo
    Jake
    Jakob
    Jakobe
    Jalen
    Jamal
    Jamar
    Jamari
    Jamel
    James
    Jameson
    Jamie
    Jamil
    Jamir
    Jamison
    Jan
    Jaquan
    Jaquez
    Jared
    Jaren
    Jarod
    Jaron
    Jarred
    Jarrett
    Jarrod
    Jarvis
    Jase
    Jason
    Jasper
    Javen
    Javier
    Javion
    Javon
    Jaxon
    Jaxson 	Jay
    Jayce
    Jayden
    Jaydon
    Jaylan
    Jaylen
    Jaylin
    Jaylon
    Jayson
    Jean
    Jeff
    Jefferson
    Jeffery
    Jeffrey
    Jeremiah
    Jeremy
    Jermaine
    Jerome
    Jerry
    Jesse
    Jessie
    Jesus
    Jett
    Jevon
    Jimmy
    Joan
    Joaquin
    Joe
    Joel
    Joey
    Johan
    John
    Johnathan
    Johnathon
    Johnny
    Jon
    Jonah
    Jonas
    Jonatan
    Jonathan
    Jonathon
    Jordan
    Jorden
    Jordon
    Jordy
    Jorge
    Jose
    Josef
    Joseph
    Josh
    Joshua
    Josiah
    Josue
    Jovan
    Jovani
    Jovany
    Juan
    Judah
    Jude
    Julian
    Julien
    Julio
    Julius
    Junior
    Justice
    Justin
    Justus
    Justyn
    Kade
    Kaden
    Kadin
    Kai
    Kaiden
    Kale
    Kaleb
    Kameron
    Kamron
    Kane
    Kareem
    Karl
    Karson
    Kasey
    Kayden
    Keagan
    Keanu
    Keaton
    Keegan
    Keenan
    Keith
    Kellen
    Kelly
    Kelton
    Kelvin
    Kendall
    Kendrick
    Kennedy
    Kenneth
    Kenny
    Kent
    Kenyon
    Keon
    Keshawn
    Keven
    Kevin
    Kevon
    Keyon
    Keyshawn
    Khalid
    Khalil
    Kian
    Kieran
    Kirk
    Kobe
    Koby
    Kody
    Kolby
    Kole
    Kolton
    Korbin
    Korey
    Kory
    Kristian
    Kristofer
    Kristopher
    Kurt
    Kurtis
    Kylan
    Kyle
    Kyler
    Kyree
    Lamar
    Lamont
    Lance
    Landen
    Landon
    Lane
    Larry
    Latrell
    Lawrence
    Lawson
    Layne
    Layton
    Lee
    Leo
    Leon
    Leonard
    Leonardo
    Leonel
    Leroy
    Levi
    Lewis
    Liam
    Lincoln
    Lisandro
    Logan
    London
    Lonnie
    Lorenzo
    Louis
    Luc
    Luca
    Lucas
    Luciano
    Luis
    Lukas
    Luke
    Malachi
    Malakai
    Malcolm
    Malik
    Manuel
    Marc
    Marcel
    Marcelo
    Marco
    Marcos
    Marcus
    Mariano
    Mario
    Mark
    Markus
    Marlon
    Marquez
    Marquis
    Marquise
    Marshall
    Martin
    Marvin
    Mason
    Mateo
    Mathew
    Matteo
    Matthew
    Maurice
    Mauricio
    Maverick
    Max
    Maxim
    Maximilian
    Maximillian
    Maximo
    Maximus
    Maxwell
    Mekhi
    Melvin
    Micah
    Michael
    Micheal
    Miguel
    Mike
    Mikel
    Miles
    Milo
    Milton
    Misael
    Mitchel
    Mitchell
    Mohamed
    Mohammad
    Mohammed
    Moises
    Morgan
    Moses
    Moshe
    Muhammad
    Mustafa
    Myles
    Nash
    Nasir
    Nathan
    Nathanael
    Nathanial
    Nathaniel
    Nathen
    Neal
    Nehemiah
    Neil
    Nelson
    Nestor
    Nicholas
    Nick
    Nickolas
    Nico
    Nicolas
    Nigel
    Nikhil
    Nikolas
    Noah
    Noe
    Noel 	Nolan
    Norman
    Octavio
    Oliver
    Omar
    Omari
    Omarion
    Orion
    Orlando
    Osbaldo
    Oscar
    Osvaldo
    Oswaldo
    Owen
    Pablo
    Parker
    Patrick
    Paul
    Paxton
    Payton
    Pedro
    Perry
    Peter
    Peyton
    Philip
    Phillip
    Phoenix
    Pierce
    Pierre
    Porter
    Pranav
    Preston
    Prince
    Quentin
    Quincy
    Quinn
    Quinten
    Quintin
    Quinton
    Rafael
    Rahul
    Ralph
    Ramiro
    Ramon
    Randall
    Randy
    Raphael
    Rashad
    Raul
    Ray
    Raymond
    Raymundo
    Reagan
    Reece
    Reed
    Reese
    Reginald
    Reid
    Reilly
    Remington
    Rene
    Reuben
    Rey
    Reynaldo
    Rhett
    Ricardo
    Richard
    Rickey
    Ricky
    Rigoberto
    Riley
    River
    Robert
    Roberto
    Rocco
    Roderick
    Rodney
    Rodolfo
    Rodrigo
    Rogelio
    Roger
    Rohan
    Roland
    Rolando
    Roman
    Romeo
    Ronald
    Ronaldo
    Ronan
    Ronnie
    Rory
    Ross
    Rowan
    Roy
    Ruben
    Rudy
    Russell
    Ryan
    Ryder
    Rylan
    Rylee
    Ryley
    Sabastian
    Sage
    Salvador
    Salvatore
    Sam
    Samir
    Sammy
    Samson
    Samuel
    Santiago
    Santino
    Santos
    Saul
    Savion
    Sawyer
    Scott
    Seamus
    Sean
    Sebastian
    Semaj
    Sergio
    Seth
    Shamar
    Shane
    Shannon
    Shaun
    Shawn
    Shayne
    Shea
    Sheldon
    Shemar
    Sidney
    Silas
    Simon
    Sincere
    Skylar
    Skyler
    Solomon
    Sonny
    Spencer
    Stanley
    Stefan
    Stephan
    Stephen
    Stephon
    Sterling
    Steve
    Steven
    Stone
    Stuart
    Sullivan
    Syed
    Talon
    Tanner
    Tariq
    Tate
    Tavion
    Taylor
    Terrance
    Terrell
    Terrence
    Terry
    Thaddeus
    Theodore
    Thomas
    Timothy
    Titus
    Tobias
    Toby
    Todd
    Tomas
    Tommy
    Tony
    Trace
    Travis
    Travon
    Tre
    Trent
    Trenton
    Trever
    Trevin
    Trevion
    Trevon
    Trevor
    Trey
    Treyton
    Tristan
    Tristen
    Tristian
    Tristin
    Triston
    Troy
    Trystan
    Tucker
    Turner
    Ty
    Tyler
    Tylor
    Tyree
    Tyrell
    Tyrese
    Tyrone
    Tyshawn
    Tyson
    Ulises
    Ulysses
    Uriel
    Vance
    Vaughn
    Vernon
    Vicente
    Victor
    Vincent
    Wade
    Walker
    Walter
    Warren
    Waylon
    Wayne
    Wesley
    Weston
    Will
    William
    Willie
    Wilson
    Winston
    Wyatt
    Xander
    Xavier
    Xzavier
    Yadiel
    Yahir
    Yosef
    Zachariah
    Zachary
    Zachery
    Zack
    Zackary
    Zackery
    Zain
    Zaire
    Zakary
    Zander
    Zane
    Zavier
    Zayne
    Zechariah
    Zion
  )
end
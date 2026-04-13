using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace World_OOP_Edition
{
    class Program
    {
        class Getraenk
        {
            //Outputeigenschaft
            public string getraenkeName;

            //Fuellmenge in Prozent
            public int fuellmenge = 100;

            //
            public void benennenGetraenk(string g)
            {
                getraenkeName = g;
                Console.WriteLine("Das Getränk wurde gerade als: " + g + " benannt");
            }

            //Aktuelle Füllmenge ausgeben
            public void ausgebenAktuellerZustand()
            {
                Console.WriteLine(
                    "Die aktuelle Füllmenge des " + getraenkeName + " beträgt: " + fuellmenge + " %"
                );
            }

            // Flascheninhalt hinzufügen, 5% pro sec.
            // Den Inhalt während des Füllvorgangs anzeigen
            public void auffuellen()
            {
                Console.WriteLine("\nDie Flasche " + getraenkeName + " wird aufgefüllt..");
                while (fuellmenge < 100)
                {
                    fuellmenge += 5;
                    if (fuellmenge > 100)
                        fuellmenge = 100;
                    System.Threading.Thread.Sleep(1000);
                    ausgebenAktuellerZustand();
                }
            }

            //Flascheninhalt entfernen
            public void trinkEinenSchluck()
            {
                Console.WriteLine("Du trinkst 10% des Inhaltes");
                fuellmenge -= 10;
                this.ausgebenAktuellerZustand();
            }
        }

        //Start Hauptprogramm
        static void Main(string[] args)
        {
            //neues Objekt erzeugen
            Getraenk rivella = new Getraenk();

            // Der getraenkeName ist eine Eigenschaft des Objekts 'rivella'.
            // Diese direkte Art des Zugriffs auf eine Eigenschaft wird nicht gerne gesehen in der OO-Programmierung
            // Das Objekt selber kann keine Kontrolle übernehmen, wer was wann in den getraenkeNamen geschrieben hat.
            rivella.getraenkeName = "Rivella Rot"; // Name geben
            string n = rivella.getraenkeName; // Name lesen ...
            Console.WriteLine(n); // ... und ausgeben

            //Schoener ist diese indirekte Art des Zugriffs, mittels 'Setter':
            rivella.benennenGetraenk("Rivella Blau");

            //Füllemnge reduzieren
            rivella.trinkEinenSchluck();
            rivella.trinkEinenSchluck();

            //Rivellaflasche wieder ganz auffüllen
            rivella.auffuellen();

            Console.Write("\nBitte Taste dücken, um das Programmende abzuschliessen...");
            Console.ReadKey();
        }
    }
}


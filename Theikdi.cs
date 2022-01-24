using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DRDQR
{
    class Theikdi
    {
        Boolean mouseDown;
        Point lastLocation;
        public void LabelMove(Label labelOne)
        {

            labelOne.MouseDown += new MouseEventHandler(label_MouseDown);
            labelOne.MouseMove += new MouseEventHandler(label_MouseMove);
            labelOne.MouseUp += new MouseEventHandler(label_MouseUp);

            void label_MouseDown(object sender, MouseEventArgs e)
            {
                mouseDown = true;
                lastLocation = e.Location;
            }

            void label_MouseMove(object sender, MouseEventArgs e)
            {

                if (mouseDown)
                {
                    labelOne.Location = new Point(
                        (labelOne.Location.X - lastLocation.X) + e.X, (labelOne.Location.Y - lastLocation.Y) + e.Y);

                    labelOne.Update();
                }
            }

            void label_MouseUp(object sender, MouseEventArgs e)
            {
                mouseDown = false;
            }

        }

        public void PictureMove(PictureBox pictureBox)
        {
            pictureBox.MouseDown += new MouseEventHandler(label_MouseDown);
            pictureBox.MouseMove += new MouseEventHandler(label_MouseMove);
            pictureBox.MouseUp += new MouseEventHandler(label_MouseUp);

            void label_MouseDown(object sender, MouseEventArgs e)
            {
                mouseDown = true;
                lastLocation = e.Location;
            }

            void label_MouseMove(object sender, MouseEventArgs e)
            {

                if (mouseDown)
                {
                    pictureBox.Location = new Point(
                        (pictureBox.Location.X - lastLocation.X) + e.X, (pictureBox.Location.Y - lastLocation.Y) + e.Y);

                    pictureBox.Update();
                }
            }

            void label_MouseUp(object sender, MouseEventArgs e)
            {
                mouseDown = false;
            }
        }
    }
}

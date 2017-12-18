using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace CompConexG.Classes
{
    class Graphe
    {
        public int[,] matrixAj;
        public Boolean[] visited;
        //int root = 0;
        public int nbNods;

       /* public Graphe(int nbNodes)
        {
            this.nbNods = nbNodes;
            this.matrixAj= new int[nbNodes,nbNodes];
            this.visited = new Boolean[nbNods];
        }
        */
        public Graphe(int [,] matrix)
        {
            this.nbNods = (int)Math.Sqrt(matrix.Length);
            this.visited = new Boolean[this.nbNods];
            this.matrixAj = new int[this.nbNods, this.nbNods];
            for (int i=0;i<this.nbNods;i++)
            {
                for (int j=0;j<this.nbNods;j++)
                {
                    this.matrixAj[i, j] = matrix[i, j];
                }
            }
        }

        public void setFalse()
        {
            for (int i =0;i<this.nbNods;i++)
            {
                this.visited[i] = false;
            }
           
        }
        
        public void dfs(int node,int [,] matrix)
        {
            this.visited[node] = true;
            //Console.WriteLine(node);
            int lengh = (int)Math.Sqrt(matrix.Length);
            for (int j = 0; j < lengh; j++)
            {
                if (matrix[node,j]>0 && !visited[j])
                {
                    dfs(j, matrix);
                }
            }
           // Console.WriteLine("**********");
        }

        public int nbConnex(int [,]matrix)
        {
            setFalse();
            int nb = 1;
            int lengh = (int)Math.Sqrt(matrix.Length);
            dfs(0,matrix);
            for (int i = 1; i <lengh; i++)
            {                
                if (!this.visited[i])
                {
                    nb++;
                }
                dfs(i,matrix);
            }
           // Console.WriteLine("le nombre de composante connexes est :");
           // Console.WriteLine(nb);
            return nb;
        }

      
        public int [,] supprimer(int node)
        {
            int[,] matrix = new int[this.nbNods, this.nbNods];
            matrix = (int[,])this.matrixAj.Clone();
            for (int i =0 ;i<this.nbNods;i++)
            {
                matrix[node, i] = 0;
                matrix[i, node] = 0;
            }
            return matrix;  
        }
       public List<int> connexPoint(int [,] matrix)
        {
            List<int> points =new List<int>();
           int b = 0;
           setFalse();
           int a = nbConnex(matrix);
           for(int i =0;i<this.nbNods;i++)
           {
               setFalse();
               b = nbConnex(supprimer(i))-1;
               if (b>a)
               {
                   points.Add(i);
                   Console.WriteLine("les points d'articulation sont : "+i);
               }          
           }
           return points;
        }
    }
}

defmodule MapReduce do
  def run do
    names = ["Carlie Tibbles","Selma Starbuck","Leanne Arms","Dorene Knobel","Madie Wilcoxon","Starr Tate","Riley Simons","Kendrick Kleeman","Jestine Tozier","Bethann Bormann","Bradly Mazer","Vinita Wint","Linnea Noda","Nancy Schuh","Crystal Mong","Theressa Crotty","Jackie Lex","Gertrude Dubrey","Miquel Lheureux","Winnie Capra","Iona Albury","Fallon Mikel","Raleigh Glade","Velma Cavender","Jewell Mcfaddin","Criselda Alanis","Lesia Tomey","Rasheeda Caso","Tegan Silcox","Margit Bierman","Norah Conners","King Falkowski","Raquel Weaver","Camille Deckard","Melinda Dockins","Trinidad Schreck","Berta Nail","Livia Dreher","Wyatt Fishel","Laurene Riggins","Maryalice Uhlman","Annice Scovil","Windy Eckhardt","Galen Gallien","Margaret Descoteaux","Palmer Mummert","Delma Geary","Sallie Numbers","Alysha Buis","See Cast"]
    map_machines = ~w(machine1 machine2 machine3 machine4 machine5)

    names
      |> Enum.chunk(10)
      |> Enum.with_index
      |> Enum.map(&Task.Supervisor.async({:tasks_supervisor, String.to_atom("machine#{elem(&1, 1)+1}@INLeninRaj")}, Mapper, :map, [elem(&1, 0)]))
      |> Enum.map(&Task.await/1)
      |> Enum.reduce(Reducer.initial, &Reducer.reduce(&2, &1))
  end
end
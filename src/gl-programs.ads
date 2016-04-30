with GL.C;

package GL.Programs is

   use GL.C;

   type Program (<>) is private;

   function Validate (Item : Program) return Boolean;
   function Create_Empty return Program;
   procedure Link (Item : Program);
   procedure Set_Current (Item : Program);

private

   type Program is new GL.C.GLuint range 1 .. GLuint'Last;

end;
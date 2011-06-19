
signature DICT =
   sig

      type key
      type 'a dict

      exception Absent

      val empty : 'a dict
      val insert : 'a dict -> key -> 'a -> 'a dict
      val insertMerge : 'a dict -> key -> 'a -> ('a -> 'a) -> 'a dict
      val find : 'a dict -> key -> 'a option
      val lookup : 'a dict -> key -> 'a
      val union : 'a dict -> 'a dict -> (key * 'a * 'a -> 'a) -> 'a dict

      val isEmpty : 'a dict -> bool
      val member : 'a dict -> key -> bool

      val toList : 'a dict -> (key * 'a) list
      val map : ('a -> 'b) -> 'a dict -> 'b dict
      val foldl : (key * 'a * 'b -> 'b) -> 'b -> 'a dict -> 'b
      val app : (key * 'a -> unit) -> 'a dict -> unit

   end

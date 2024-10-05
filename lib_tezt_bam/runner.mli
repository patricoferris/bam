val register :
     ?hash:('a -> int)
  -> ?pp:(Format.formatter -> 'a -> unit)
  -> ?expected_sampling_ratio:float
  -> ?minimum_number_of_samples:int
  -> ?no_stats:bool
  -> ?regression:'a list
  -> ?stop_after:[`Timeout of float | `Count of int | `Loop]
  -> ?on_sample:('a -> unit)
  -> __FILE__:string
  -> title:string
  -> tags:string list
  -> gen:'a Bam.Gen.t
  -> property:('a -> ('b, [`Fail of string | `Bad_value]) Result.t)
  -> unit
  -> unit

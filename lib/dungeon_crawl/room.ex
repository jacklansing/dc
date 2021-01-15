defmodule DungeonCrawl.Room do
  alias DungeonCrawl.Room
  alias DungeonCrawl.Room.Triggers

  import DungeonCrawl.Room.Action

  defstruct description: nil, actions: [], trigger: nil, chance: nil

  def all,
    do: [
      %Room{
        description: "You found a quiet place. Looks safe for a little nap.",
        actions: [forward(), rest()],
        trigger: Triggers.CrawlAgain,
        chance: 5
      },
      %Room{
        description: "You can see the light of day. You found the exit!",
        actions: [forward()],
        trigger: Triggers.Exit,
        chance: 2.5
      },
      %Room{
        description: "You can see an enemy blocking your path.",
        actions: [forward()],
        trigger: Triggers.Enemy,
        chance: 5
      }
    ]
end

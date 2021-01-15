defmodule DungeonCrawl.Room.Triggers.CrawlAgain do
  @behaviour DungeonCrawl.Room.Trigger
  def run(character, _), do: {character, :crawl_again}
end

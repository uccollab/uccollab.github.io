module Jekyll
  class PublicationCountGenerator < Generator
    safe true
    priority :low

    def generate(site)
      bib_path = File.join(site.source, "_bibliography", "papers.bib")
      count = 0

      if File.exist?(bib_path)
        content = File.read(bib_path)

        # Count BibTeX entries like @article{...}, @inproceedings{...}, etc.
        # Ignores @comment, @string, and @preamble.
        matches = content.scan(/^\s*@(?!comment|string|preamble)\w+\s*\{/i)
        count = matches.size
      end

      site.data["stats"] ||= {}
      site.data["stats"]["publications_count"] = count
    end
  end
end
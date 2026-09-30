<div class="publications publications-scroll-by-year">

  {% include bib_search.liquid %}
  {% bibliography %}
</div>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    const publicationsRoot = document.querySelector(
      ".publications-scroll-by-year"
    );

    if (!publicationsRoot) {
      return;
    }

    const maxVisiblePublications = 3;

    function getVisibleItems(list) {
      return Array.from(
        list.querySelectorAll(":scope > li")
      ).filter(function (item) {
        const style = window.getComputedStyle(item);

        return (
          style.display !== "none" &&
          style.visibility !== "hidden" &&
          item.getClientRects().length > 0
        );
      });
    }

    function updatePublicationScrollAreas() {
      const yearLists = publicationsRoot.querySelectorAll(
        "ol.bibliography"
      );

      yearLists.forEach(function (list) {
        /*
         * Keep the user's position inside each year while heights are
         * temporarily reset for measurement.
         */
        const previousScrollTop = list.scrollTop;

        list.style.maxHeight = "none";
        list.classList.remove("publication-year-scroll");

        const visibleItems = getVisibleItems(list);

        /*
         * Three publications or fewer: keep the rounded box, but no
         * scrollbar is needed.
         */
        if (visibleItems.length <= maxVisiblePublications) {
          return;
        }

        list.classList.add("publication-year-scroll");

        const firstItems = visibleItems.slice(
          0,
          maxVisiblePublications
        );

        const listStyle = window.getComputedStyle(list);

        let requiredHeight =
          parseFloat(listStyle.paddingTop || 0) +
          parseFloat(listStyle.paddingBottom || 0) +
          parseFloat(listStyle.borderTopWidth || 0) +
          parseFloat(listStyle.borderBottomWidth || 0);

        firstItems.forEach(function (item) {
          const itemStyle = window.getComputedStyle(item);

          requiredHeight +=
            item.getBoundingClientRect().height +
            parseFloat(itemStyle.marginTop || 0) +
            parseFloat(itemStyle.marginBottom || 0);
        });

        requiredHeight += 4;

        list.style.maxHeight =
          Math.ceil(requiredHeight) + "px";

        /*
         * Restoring scrollTop after max-height is applied prevents an
         * opened/closed abstract from sending the year back to the top.
         */
        const maxScrollTop = Math.max(
          0,
          list.scrollHeight - list.clientHeight
        );

        list.scrollTop = Math.min(
          previousScrollTop,
          maxScrollTop
        );
      });
    }

    /*
     * Only one abstract can be open at a time.
     * The theme still handles opening/closing the clicked abstract;
     * this handler closes every other open abstract afterwards.
     */
    publicationsRoot.addEventListener("click", function (event) {
      const abstractButton = event.target.closest(
        "a.abstract.btn"
      );

      if (!abstractButton) {
        return;
      }

      const currentItem = abstractButton.closest("li");
      const currentAbstract = currentItem
        ? currentItem.querySelector("div.abstract.hidden")
        : null;

      /*
       * Store the year scrollbar positions before any abstract changes.
       */
      const savedPositions = new Map();

      publicationsRoot
        .querySelectorAll("ol.bibliography")
        .forEach(function (list) {
          savedPositions.set(list, list.scrollTop);
        });

      /*
       * Run after the theme's own abstract toggle has completed.
       */
      window.setTimeout(function () {
        publicationsRoot
          .querySelectorAll("div.abstract.hidden.open")
          .forEach(function (abstract) {
            if (abstract !== currentAbstract) {
              abstract.classList.remove("open");
            }
          });

        /*
         * Recalculate the three-publication viewport, then put every
         * year back where it was scrolled before the click.
         */
        updatePublicationScrollAreas();

        savedPositions.forEach(function (scrollTop, list) {
          const maxScrollTop = Math.max(
            0,
            list.scrollHeight - list.clientHeight
          );

          list.scrollTop = Math.min(
            scrollTop,
            maxScrollTop
          );
        });
      }, 100);
    });

    updatePublicationScrollAreas();

    window.addEventListener("load", function () {
      updatePublicationScrollAreas();
    });

    let resizeTimer;

    window.addEventListener("resize", function () {
      window.clearTimeout(resizeTimer);

      resizeTimer = window.setTimeout(function () {
        updatePublicationScrollAreas();
      }, 100);
    });

    const searchInputs = publicationsRoot.querySelectorAll(
      'input[type="text"], input[type="search"]'
    );

    searchInputs.forEach(function (input) {
      input.addEventListener("input", function () {
        window.setTimeout(function () {
          updatePublicationScrollAreas();
        }, 0);
      });
    });

    /*
     * Other publication controls, such as expanded author lists or
     * BibTeX blocks, can also change item heights.
     */
    publicationsRoot.addEventListener("click", function (event) {
      if (event.target.closest("a.abstract.btn")) {
        return;
      }

      window.setTimeout(function () {
        updatePublicationScrollAreas();
      }, 100);
    });
  });
</script>
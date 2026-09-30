---
layout: page
permalink: /publications/
title: Publications
description: 
nav: true
nav_order: 2
---

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
        const previousScrollTop = list.scrollTop;

        list.style.maxHeight = "none";
        list.classList.remove("publication-year-scroll");

        const visibleItems = getVisibleItems(list);

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

      const savedPositions = new Map();

      publicationsRoot
        .querySelectorAll("ol.bibliography")
        .forEach(function (list) {
          savedPositions.set(list, list.scrollTop);
        });

      window.setTimeout(function () {
        publicationsRoot
          .querySelectorAll("div.abstract.hidden.open")
          .forEach(function (abstract) {
            if (abstract !== currentAbstract) {
              abstract.classList.remove("open");
            }
          });

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
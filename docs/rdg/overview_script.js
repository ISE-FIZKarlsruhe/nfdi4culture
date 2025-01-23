document.addEventListener("DOMContentLoaded", () => {
  const container = d3.select("#svgContainer");
  const width = 1000;
  const height = 1000;

  const svg = container
    .append("svg")
    .attr("width", "100%")
    .attr("height", "100%");

  const g = svg.append("g");

  svg.attr("viewBox", `0 0 ${width} ${height}`);

  function loadSVG(path, x, y) {
    return d3.xml(path).then((data) => {
      const svgNode = data.documentElement;
      const gNode = g.insert("g", ":first-child").node();
      gNode.append(svgNode);

      const bbox = svgNode.getBBox();
      d3.select(svgNode).attr("width", bbox.width).attr("height", bbox.height);
      d3.select(gNode).attr("transform", `translate(${x}, ${y})`);
    });
  }

  async function loadAndPositionSVGs() {
    try {
      await loadSVG("cto-arthistory.svg", 0, 0);
      await loadSVG("cto-architecture.svg", 1750, 0);
      await loadSVG("cto-mediastudies.svg", 3500, 0);
      await loadSVG("cto-musicology.svg", 500, 900);
      await loadSVG("cto-performingarts.svg", 2700, 900);
    } catch (error) {
      console.error("Error loading SVG:", error);
    }
  }

  loadAndPositionSVGs();

  const zoom = d3
    .zoom()
    .scaleExtent([0.05, 8]) // Adjust zoom limits as necessary
    .on("zoom", (event) => {
      g.attr("transform", event.transform);
    });

  svg.call(zoom);
  svg.call(zoom.transform, d3.zoomIdentity.translate(100, 250).scale(0.175));
});

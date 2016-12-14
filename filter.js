var rawGuidance = require('./raw_guidance.json');
var guidanceNodeCollection = rawGuidance.guidance.GuidanceNodeCollection;
var nodesWithDirections = guidanceNodeCollection.filter((node) =>{ return node.infoCollection && node.infoCollection.length>0});
var directions = [];

nodesWithDirections.map((node) => {
  var direction = node.infoCollection.length>1 ? node.infoCollection[1] : node.infoCollection[0];
  directions.push(direction)
});
console.log(JSON.stringify(directions));
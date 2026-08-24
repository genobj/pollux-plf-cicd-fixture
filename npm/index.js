// CI/CD 사슬 카나리아. 기능이 없는 것이 이 패키지의 성질이다.
// 실제 기능이 있으면 사슬이 실패했을 때 사슬 문제인지 기능 문제인지 못 가른다.
module.exports = { version: require('./package.json').version };

// nested maps:
function solve(arrStr) {
    let townsWithProducts = new Map();

    for (let currentLine of arrStr) {
        let [town,product,quantityPrice] = currentLine.split(/\s*->\s*/);
        let [quantity, price] = quantityPrice.split(/\s*:\s*/);

        if (!townsWithProducts.has(town)) {
            townsWithProducts.set(town, new Map());
        }

        let income = quantity * price;
        let oldIncome = townsWithProducts.get(town).get(product);
        if (oldIncome) income += oldIncome;

        townsWithProducts.get(town).set(product,income);
    }

    for (let [town, products] of townsWithProducts) {
        console.log('Town - ' + town);
        for (let [product, income] of products) {
            console.log('$$$' + product + ' : ' + income);
        }
    }
}

solve(['Sofia -> Laptops HP -> 200 : 2000',
'Sofia -> Raspberry -> 200000 : 1500',
'Sofia -> Audi Q7 -> 200 : 100000',
'Montana -> Portokals -> 200000 : 1',
'Montana -> Qgodas -> 20000 : 0.2',
'Montana -> Chereshas -> 1000 : 0.3']);
@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 70, capacity: 74, latency: 18, risk: 9, weight: 9)
        precondition(Policy.score(signalcase_1) == 115)
        precondition(Policy.classify(signalcase_1) == "review")
        let signalcase_2 = Signal(demand: 93, capacity: 75, latency: 8, risk: 23, weight: 8)
        precondition(Policy.score(signalcase_2) == 115)
        precondition(Policy.classify(signalcase_2) == "review")
        let signalcase_3 = Signal(demand: 82, capacity: 103, latency: 25, risk: 5, weight: 4)
        precondition(Policy.score(signalcase_3) == 149)
        precondition(Policy.classify(signalcase_3) == "review")
    }
}

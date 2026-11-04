import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        setupLogo()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if let gradient = view.layer.sublayers?.first as? CAGradientLayer {
            gradient.frame = view.bounds
        }
    }

    private func setupGradient() {
        let gradient = CAGradientLayer()
        gradient.colors = [
            UIColor(red: 0.33, green: 0.74, blue: 0.99, alpha: 1.0).cgColor,
            UIColor(red: 0.44, green: 0.42, blue: 0.98, alpha: 1.0).cgColor
        ]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at: 0)
    }

    private func setupLogo() {
        let label = UILabel()
        label.text = "a"
        label.textColor = .white
        label.font = UIFont(name: "Georgia-Italic", size: 160) ?? .italicSystemFont(ofSize: 160)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

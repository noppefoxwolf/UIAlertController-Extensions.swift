# UIAlertController-Extensions.swift

```swift
let image: UIImage? = nil
let sheet = UIAlertController.actionSheet
sheet.addDefault(title: "Story", ifExists: image) { (_, image) in
 // image is unwrapped
}
sheet.addCancel()
present(sheet, animated: true, completion: nil)
```

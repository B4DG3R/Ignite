//
// Head.swift
// Ignite
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

//
//  Analytics.swift
//  Ignite
//
//  Created by Matthew Hollyhead on 25/11/2024.
//

import Foundation

public struct Analytics: HTMLRootElement {
    /// The standard set of control attributes for HTML elements.
    public var attributes = CoreAttributes()
    
    var items: [BaseElement]
    
    public init(
        for page: Page,
        in context: PublishingContext
    ) {
        
        items = []
    }
    
    public func render(context: PublishingContext) -> String {
        return """
        <!-- Google tag (gtag.js) -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-Q6GH94YYW0"></script>
        
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());

          gtag('config', 'G-Q6GH94YYW0');
        </script>
        """
    }
}

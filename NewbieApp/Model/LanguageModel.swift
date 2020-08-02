//
//  MoviesModel.swift
//  NewbieApp
//
//  Created by Rizky Alfa Uji Gultom on 09/05/20.
//  Copyright © 2020 Rizky Alfa Uji Gultom. All rights reserved.
//

import Foundation

struct Language : Decodable, Identifiable{
    let id: Int
    let name : String
    let image : String
    let overview: String
    
}

class LanguageModel{
    static let languageList = [
        Language(id: 1, name: "C Language", image: "https://media.istockphoto.com/vectors/laptop-with-c-letter-learn-c-programming-language-flat-design-vector-id615714450?b=1&k=6&m=615714450&s=170x170&h=8W7VgTqOXXdS0QKHoJIWthpdhhIBEcGLdtT9i3ZqPhM=", overview: "a general-purpose, procedural computer programming language supporting structured programming, lexical variable scope, and recursion, while a static type system prevents unintended operations. By design, C provides constructs that map efficiently to typical machine instructions and has found lasting use in applications previously coded in assembly language. Such applications include operating systems and various application software for computers, from supercomputers to PLCs and embedded systems.\nC was originally developed at Bell Labs by Dennis Ritchie between 1972 and 1973 to make utilities running on Unix. Later, it was applied to re-implementing the kernel of the Unix operating system.[6] During the 1980s, C gradually gained popularity. It has become one of the most widely used programming languages,[7][8] with C compilers from various vendors available for the majority of existing computer architectures and operating systems. C has been standardized by the ANSI since 1989 (see ANSI C) and by the International Organization for Standardization.\nC is an imperative procedural language. It was designed to be compiled using a relatively straightforward compiler to provide low-level access to memory and language constructs that map efficiently to machine instructions, all with minimal runtime support. Despite its low-level capabilities, the language was designed to encourage cross-platform programming. A standards-compliant C program written with portability in mind can be compiled for a wide variety of computer platforms and operating systems with few changes to its source code. The language is available on various platforms, from embedded microcontrollers to supercomputers."),
        Language(id: 2, name: "Dart Language", image: "https://www.kindpng.com/picc/m/176-1766554_dart-programming-language-logo-hd-png-download.png", overview: "client-optimized[8] programming language for apps on multiple platforms. It is developed by Google and is used to build mobile, desktop, server, and web applications.\nDart is an object-oriented, class-based, garbage-collected language with C-style syntax. Dart can compile to either native code or JavaScript. It supports interfaces, mixins, abstract classes, reified generics, and type inference."),
        Language(id: 3, name: "Go", image: "data:image/png;base64,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", overview: "a statically typed, compiled programming language designed at Google[14] by Robert Griesemer, Rob Pike, and Ken Thompson.[12] Go is syntactically similar to C, but with memory safety, garbage collection, structural typing,[6] and CSP-style concurrency.[15] The language is often referred to as Golang because of its domain name, golang.org, but the proper name is Go"),
        Language(id: 4, name: "HTML", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/240px-HTML5_logo_and_wordmark.svg.png", overview: "the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.\n\nWeb browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages. HTML describes the structure of a web page semantically and originally included cues for the appearance of the document.\n\nHTML elements are the building blocks of HTML pages. With HTML constructs, images and other objects such as interactive forms may be embedded into the rendered page. HTML provides a means to create structured documents by denoting structural semantics for text such as headings, paragraphs, lists, links, quotes and other items. HTML elements are delineated by tags, written using angle brackets. Tags such as <img /> and <input /> directly introduce content into the page. Other tags such as <p> surround and provide information about document text and may include other tags as sub-elements. Browsers do not display the HTML tags, but use them to interpret the content of the page.\n\nHTML can embed programs written in a scripting language such as JavaScript, which affects the behavior and content of web pages. Inclusion of CSS defines the look and layout of content. The World Wide Web Consortium (W3C), former maintainer of the HTML and current maintainer of the CSS standards, has encouraged the use of CSS over explicit presentational HTML since 1997.[2]"),
        Language(id: 5, name: "Java", image: "https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/283px-Java_programming_language_logo.svg.png", overview: "a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible. It is intended to let application developers write once, run anywhere (WORA),[17] meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.[18] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture. The syntax of Java is similar to C and C++, but it has fewer low-level facilities than either of them. As of 2019, Java was one of the most popular programming languages in use according to GitHub,[19][20] particularly for client-server web applications, with a reported 9 million developers.[21]\n\nJava was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle) and released in 1995 as a core component of Sun Microsystems' Java platform. The original and reference implementation Java compilers, virtual machines, and class libraries were originally released by Sun under proprietary licenses. As of May 2007, in compliance with the specifications of the Java Community Process, Sun had relicensed most of its Java technologies under the GNU General Public License. Meanwhile, others have developed alternative implementations of these Sun technologies, such as the GNU Compiler for Java (bytecode compiler), GNU Classpath (standard libraries), and IcedTea-Web (browser plugin for applets).\n\nThe latest versions are Java 14, released in March 2020, and Java 11, a currently supported long-term support (LTS) version, released on September 25, 2018; Oracle released for the legacy Java 8 LTS the last free public update in January 2019 for commercial use, while it will otherwise still support Java 8 with public updates for personal use up to at least December 2020. Oracle (and others) highly recommend uninstalling older versions of Java because of serious risks due to unresolved security issues.[22] Since Java 9, 10, 12 and 13 are no longer supported, Oracle advises its users to immediately transition to the latest version (currently Java 14) or an LTS release."),
        Language(id: 6, name: "JScript", image: "https://upload.wikimedia.org/wikipedia/en/e/e8/Jscript_icon.gif", overview: "Microsoft's dialect of the ECMAScript standard[2] that is used in Microsoft's Internet Explorer.\n\nJScript is implemented as an Active Scripting engine. This means that it can be \"plugged in\" to OLE Automation applications that support Active Scripting, such as Internet Explorer, Active Server Pages, and Windows Script Host.[3] It also means such applications can use multiple Active Scripting languages, e.g., JScript, VBScript or PerlScript.\n\nJScript was first supported in the Internet Explorer 3.0 browser released in August 1996. Its most recent version is JScript 9.0, included in Internet Explorer 9.\n\nJScript 10.0[4] is a separate dialect, also known as JScript .NET, which adds several new features from the abandoned fourth edition of the ECMAScript standard. It must be compiled for .NET Framework version 2 or version 4, but static type annotations are optional."),
        Language(id: 7, name: "Kotlin", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Kotlin-logo.svg/440px-Kotlin-logo.svg.png", overview: "is a cross-platform, statically typed, general-purpose programming language with type inference. Kotlin is designed to interoperate fully with Java, and the JVM version of its standard library depends on the Java Class Library,[3] but type inference allows its syntax to be more concise. Kotlin mainly targets the JVM, but also compiles to JavaScript or native code (via LLVM). Language development costs are borne by JetBrains, while the Kotlin Foundation protects the Kotlin trademark.[4]\n\nOn 7 May 2019, Google announced that the Kotlin programming language is now its preferred language for Android app developers.[5] Since the release of Android Studio 3.0 in October 2017, Kotlin has been included as an alternative to the standard Java compiler. The Android Kotlin compiler targets Java 6 by default, but lets the programmer choose between Java 8 to 13, for optimization.[6]"),
        Language(id: 8, name: "NekoVM", image: "https://upload.wikimedia.org/wikipedia/en/3/32/NekoLogo.png", overview: "a virtual machine developed by Nicolas Cannasse as part of research and development (R&D) efforts at two indie video game firms in Bordeaux, France: first at Motion Twin and then at Shiro Games. NekoVM's native language is the bytecode for a high-level dynamically typed programming language called Neko. This pairing allows Neko to be used directly as an embedded scripting language or to target NekoVM by compiling some other language (such as Haxe) to NekoVM bytecode."),
        Language(id: 9, name: "Oxygene", image: "https://upload.wikimedia.org/wikipedia/en/9/9e/Chrome-128.png", overview: "(formerly known as Chrome) is a programming language developed by RemObjects Software for Microsoft's Common Language Infrastructure, the Java Platform and Cocoa. Oxygene based on Delphi's Object Pascal, but also has influences from C#, Eiffel, Java, F# and other languages.\n\nCompared to the now deprecated Delphi.NET, Oxygene does not emphasize total backward compatibility, but is designed to be a \"reinvention\" of the language, be a good citizen on the managed development platforms, and leverage all the features and technologies provided by the .NET and Java runtimes.\n\nOxygene is a commercial product, and offers full integration into Microsoft's Visual Studio IDE on Windows, as well as its own IDE, Fire for use on macOS. The command line compiler is available free. Oxygene is one of four languages supported by the underlying Elements Compiler toolchain, next to C#, Swift and Java).\n\nFrom 2008 to 2012, RemObjects Software licensed its compiler and IDE technology to Embarcadero to be used in their Embarcadero Prism product.[2] Starting in the Fall of 2011, Oxygene became available in two separate editions, with the second edition adding support for the Java and Android runtimes. Starting with the release of XE4, Embarcadero Prism is no longer part of the RAD Studio SKU. Numerous support and upgrade paths for Prism customers exist to migrate to Oxygene.[3] As of 2016, there is only one edition of Oxygene, which allows development on Windows or macOS, and which can create executables for Windows, Linux, WebAssembly .NET, iOS, Android, Java and macOS."),
        Language(id: 10, name: "PHP", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/200px-PHP-logo.svg.png", overview: "a popular general-purpose scripting language that is especially suited to web development.[5] It was originally created by Rasmus Lerdorf in 1994;[6] the PHP reference implementation is now produced by The PHP Group.[7] PHP originally stood for Personal Home Page,[6] but it now stands for the recursive initialism PHP: Hypertext Preprocessor.[8]\n\nPHP code is usually processed on a web server by a PHP interpreter implemented as a module, a daemon or as a Common Gateway Interface (CGI) executable. On a web server, the result of the interpreted and executed PHP code – which may be any type of data, such as generated HTML or binary image data – would form the whole or part of a HTTP response. Various web template systems, web content management systems, and web frameworks exist which can be employed to orchestrate or facilitate the generation of that response. Additionally, PHP can be used for many programming tasks outside of the web context, such as standalone graphical applications[9] and robotic drone control.[10] Arbitrary PHP code can also be interpreted and executed via command-line interface (CLI).\n\nThe standard PHP interpreter, powered by the Zend Engine, is free software released under the PHP License. PHP has been widely ported and can be deployed on most web servers on almost every operating system and platform, free of charge.[11]\n\nThe PHP language evolved without a written formal specification or standard until 2014, with the original implementation acting as the de facto standard which other implementations aimed to follow. Since 2014, work has gone on to create a formal PHP specification.[12]\n\nAs of April 2020, over half of sites on the web using PHP are still on discontinued \"EOLed\"[13] version 5.6 or older;[14] and with version 7.0 and 7.1 over 68%, that are neither officially supported by The PHP Development Team,[15] while security support is provided by third parties, such as Debian (up to June 2020 for PHP 5).[16] Because of the popularity of PHP that means at least 53% of the websites in the world run on implementations of languages no longer supported by their designers. In addition, PHP version 7.2, the most popular supported PHP version, will stop getting security updates on November 30, 2020.")
        
        
    ]
    
    static let titleApp = "Programming Language List"
    static let iconPerson = "person.crop.circle"
    static let imageProfile = "imageProfile"
    static let creatorName = "Rizky Alfa Uji G"
    static let creatorEmail = "rizkyalfauji11@gmail.com"
    static let heart = "heart.fill"
    static let profile = "Profile"
    static let loading = "Loading ..."
}


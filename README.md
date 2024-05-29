Xamarin.Android API Documentation
=================================

This repository contains the [**mdoc**][mdoc](5) format documentation for the
assemblies bundled with Xamarin.Android.

[mdoc]: http://docs.go-mono.com/?link=man%3amdoc(5)

Support for Xamarin ended on the 1st May 2024 and so this documentation won't be updated. For more information, see [Xamarin Support Policy](https://dotnet.microsoft.com/platform/support/policy/xamarin).

Scripts included in the repository
----------------------------------

* `make all`: run `mdoc validate` to verify the syntax of the documentation
in the repository
* `make assemble`: Create [**mdoc**][mdoc] documentation bundles for installation.
* `make install`: Install the documentation bundles into Mono.framework on OS X.

Visualizing the documentation with macdoc
-----------------------------------------

Run macdoc by passing the absolute path to the `en` directory
(i.e. where the `index.xml` file is) preprended with the character `+`:

	/Applications/Xamarin\ Studio.app/Contents/MacOS/MonoDoc.app/Contents/MacOS/macdoc \
	'+/path/to/ios-api-docs/en/'

You need a recent macdoc. You can compile it yourself by cloning
[https://github.com/mono/monomac][monomac] and running the build process
there. Macdoc is under the samples directory.

[monomac]: https://github.com/mono/monomac

## Microsoft Open Source Code of Conduct

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

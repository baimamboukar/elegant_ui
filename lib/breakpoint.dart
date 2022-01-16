class ResponsiveUI extends StatelessWidget {
  const ResponsiveUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BreakpointLayout(
      breakpoints: const {
        Breakpoints.small: 400.0,
        Breakpoints.medium: 600.0,
        Breakpoints.large: 800.0,
        Breakpoints.xlarge: 1200.0,
      },
      delegate: (context, size) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? _buildPortraitLayout(context, size)
                : _buildLandscapeLayout(context, size);
          },
        );
      },
    );
  }
}

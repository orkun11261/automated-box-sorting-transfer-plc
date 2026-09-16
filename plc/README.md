# Siemens TIA Portal Project Archive

Place your archived Siemens TIA Portal project file in this folder:

- **Filename:** `FactoryIO_Template_S7-1200_V15_V18_2.zap18` (or `automated_box_sorting_v18.zap18`)
- **Target Hardware:** Siemens S7-1200 CPU 1214C DC/DC/DC (Firmware v4.4 or v4.5+)

### How to Create an Archive in TIA Portal:
1. Open your project in TIA Portal.
2. In the main menu, navigate to **Project** -> **Archive...**
3. Select format as compressed archive (`.zap18` or `.zap19`).
4. Save the archive into this `plc/` folder.

> **Note:** Do NOT commit uncompressed multi-gigabyte project folders containing temporary build artifacts (like `PEData`, `IM`, `Logs`). The project archive (`.zap*`) is self-contained, clean, and git-friendly.

#!/usr/bin/env bash
# ==============================================================================
# Setup Script for automated-box-sorting-transfer-plc
# ==============================================================================

set -e

PROJECT_DIR="${1:-$(pwd)}"

echo "================================================================="
echo " Initializing Automated Box Sorting PLC Project Repository"
echo " Target Directory: $PROJECT_DIR"
echo "================================================================="

# Create directories
mkdir -p "$PROJECT_DIR/docs/images"
mkdir -p "$PROJECT_DIR/factory-io"
mkdir -p "$PROJECT_DIR/plc"

# Touch placeholder images if they don't exist
images=(
    "network2_Start_Stop_Button.png"
    "network3_Motor_Stop.png"
    "network4_Warning_Lamb_And_Emergency_Stop.png"
    "network5_Main_Motors_Control.png"
    "network6_Transfer_Control.png"
    "network7_Transfer_Control_Set_Reset.png"
    "network8_Left_Right_Sensor_mem_Control.png"
    "factory_io_drivers.png"
)

for img in "${images[@]}"; do
    touch "$PROJECT_DIR/docs/images/$img"
done

echo "Scaffolding created successfully."

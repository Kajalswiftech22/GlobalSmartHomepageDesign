//
//  QRViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/10/23.
//

import UIKit
import AVFoundation

class QRViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    
    var captureSession: AVCaptureSession! //Capture real time video
    var previewLayer: AVCaptureVideoPreviewLayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        captureSession = AVCaptureSession()
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else {
            print("No camera Available")
            return
        }
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            captureSession.addInput(input)
        }
        catch {
            print("Error configuring capture device: \(error.localizedDescription)")
        }
        
        let captureMetaDataOutput = AVCaptureMetadataOutput()
        captureSession.addOutput(captureMetaDataOutput)
        
        captureMetaDataOutput.metadataObjectTypes = [AVMetadataObject.ObjectType.qr]
        
        captureMetaDataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
        
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.layer.bounds
        view.layer.addSublayer(previewLayer)
        
        captureSession.startRunning()
    }
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        if let metadataObject = metadataObjects.first {
            guard let qrCodeString = metadataObject as? AVMetadataMachineReadableCodeObject else {
                return
            }
                print("QR Code: \(qrCodeString)")
                // Handle the scanned QR code data as needed
                captureSession.stopRunning()
            }
        }
    }

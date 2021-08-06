import Foundation
import os.log

public final class Loggr {
            
    public static func logDebug(_ msg: String) {
        #if DEBUG
        os_log(.debug, "[DEBUG]: %s", msg)
        #endif
    }
    
    public static func logInfo(_ msg: String) {
        #if DEBUG
        os_log(.debug, "[INFO]: %s", msg)
        #endif
    }
    
    public static func logWarning(_ msg: String) {
        #if DEBUG
        os_log(.fault, "[WARNING]: %s", msg)
        #endif
    }
    
    public static func logError(_ msg: String) {
        #if DEBUG
        os_log(.error, "[ERROR]: %s", msg)
        #endif
    }

}

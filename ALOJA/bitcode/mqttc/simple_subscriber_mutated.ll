; ModuleID = 'simple_subscriber.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Aloja_container = type { i8*, i16, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.anon.0 = type { [16 x i8], [16 x i8], [16 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.mqtt_client = type { i32, i16, i16, i32, i64, i64, i32, i32, i32, double, void (i8**, %struct.mqtt_response_publish*)*, i8*, i32 (%struct.mqtt_client*)*, void (%struct.mqtt_client*, i8**)*, i8*, %struct.anon, %union.pthread_mutex_t, %struct.mqtt_message_queue }
%struct.mqtt_response_publish = type { i8, i8, i8, i16, i8*, i16, i8*, i64 }
%struct.anon = type { i8*, i64, i8*, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.mqtt_message_queue = type { i8*, i8*, i8*, i64, %struct.mqtt_queued_message* }
%struct.mqtt_queued_message = type { i8*, i64, i32, i64, i32, i16 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.mqtt_client.7 = type { i32, i16, i16, i32, i64, i64, i32, i32, i32, double, void (i8**, %struct.mqtt_response_publish*)*, i8*, {}*, void (%struct.mqtt_client.7*, i8**)*, i8*, %struct.anon, %union.pthread_mutex_t, %struct.mqtt_message_queue }
%struct.mqtt_response = type { %struct.mqtt_fixed_header, %union.anon }
%struct.mqtt_fixed_header = type { i32, i8, i32 }
%union.anon = type { %struct.mqtt_response_publish }
%struct.mqtt_response_connack = type { i8, i32 }
%struct.mqtt_response_puback = type { i16 }
%struct.mqtt_response_suback = type { i16, i8*, i64 }
%union.pthread_mutexattr_t = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"Failed to open socket (getaddrinfo): %s\0A\00", align 1
@Aloja_Wrapper_Function.nonce_list = private unnamed_addr constant [4 x i16] [i16 1337, i16 28, i16 92, i16 65], align 2
@.str.idValue = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"test.mosquitto.org\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1883\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"datetime\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to open socket: \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to start client daemon.\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s listening for '%s' messages.\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Press CTRL-D to exit.\0A\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"\0A%s disconnecting from %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Received publish('%s'): %s\0A\00", align 1
@mqtt_fixed_header_rules = dso_local global %struct.anon.0 { [16 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", [16 x i8] c"\00\00\00\00\00\00\02\00\02\00\02\00\00\00\00\00", [16 x i8] c"\00\0F\0F\00\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00" }, align 1, !dbg !0
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MQTT_ERRORS_STR = internal global [29 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3.18, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4.19, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.20, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.21, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7.22, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8.23, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9.24, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10.25, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11.26, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0)], align 16, !dbg !133
@.str.1.16 = private unnamed_addr constant [30 x i8] c"MQTT_ERROR: Buffer too small.\00", align 1
@.str.2.17 = private unnamed_addr constant [8 x i8] c"MQTT_OK\00", align 1
@.str.3.18 = private unnamed_addr constant [19 x i8] c"MQTT_UNKNOWN_ERROR\00", align 1
@.str.4.19 = private unnamed_addr constant [19 x i8] c"MQTT_ERROR_NULLPTR\00", align 1
@.str.5.20 = private unnamed_addr constant [34 x i8] c"MQTT_ERROR_CONTROL_FORBIDDEN_TYPE\00", align 1
@.str.6.21 = private unnamed_addr constant [33 x i8] c"MQTT_ERROR_CONTROL_INVALID_FLAGS\00", align 1
@.str.7.22 = private unnamed_addr constant [30 x i8] c"MQTT_ERROR_CONTROL_WRONG_TYPE\00", align 1
@.str.8.23 = private unnamed_addr constant [37 x i8] c"MQTT_ERROR_CONNECT_CLIENT_ID_REFUSED\00", align 1
@.str.9.24 = private unnamed_addr constant [37 x i8] c"MQTT_ERROR_CONNECT_NULL_WILL_MESSAGE\00", align 1
@.str.10.25 = private unnamed_addr constant [38 x i8] c"MQTT_ERROR_CONNECT_FORBIDDEN_WILL_QOS\00", align 1
@.str.11.26 = private unnamed_addr constant [35 x i8] c"MQTT_ERROR_CONNACK_FORBIDDEN_FLAGS\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"MQTT_ERROR_CONNACK_FORBIDDEN_CODE\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"MQTT_ERROR_PUBLISH_FORBIDDEN_QOS\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"MQTT_ERROR_SUBSCRIBE_TOO_MANY_TOPICS\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"MQTT_ERROR_MALFORMED_RESPONSE\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"MQTT_ERROR_UNSUBSCRIBE_TOO_MANY_TOPICS\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"MQTT_ERROR_RESPONSE_INVALID_CONTROL_TYPE\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"MQTT_ERROR_CONNECT_NOT_CALLED\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"MQTT_ERROR_SEND_BUFFER_IS_FULL\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"MQTT_ERROR_SOCKET_ERROR\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"MQTT_ERROR_MALFORMED_REQUEST\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"MQTT_ERROR_RECV_BUFFER_TOO_SMALL\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"MQTT_ERROR_ACK_OF_UNKNOWN\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"MQTT_ERROR_NOT_IMPLEMENTED\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"MQTT_ERROR_CONNECTION_REFUSED\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"MQTT_ERROR_SUBSCRIBE_FAILED\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"MQTT_ERROR_CONNECTION_CLOSED\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"MQTT_ERROR_INITIAL_RECONNECT\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"MQTT_ERROR_INVALID_REMAINING_LENGTH\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"MQTT_ERROR_CLEAN_SESSION_IS_REQUIRED\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"MQTT_ERROR_RECONNECTING\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i16 @Aloja_Wrapper_Function(i16 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.Aloja_container, align 8
  %4 = alloca [4 x i16], align 2
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm*, align 8
  store i16 %0, i16* %2, align 2
  %7 = getelementptr inbounds %struct.Aloja_container, %struct.Aloja_container* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.idValue, i32 0, i32 0), i8** %7, align 8
  %8 = getelementptr inbounds %struct.Aloja_container, %struct.Aloja_container* %3, i32 0, i32 2
  store i32 10, i32* %8, align 4
  %9 = bitcast [4 x i16]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %9, i8* align 2 bitcast ([4 x i16]* @Aloja_Wrapper_Function.nonce_list to i8*), i64 8, i1 false)
  %10 = call i64 @time(i64* %5) #10
  %11 = call %struct.tm* @gmtime(i64* %5) #10
  store %struct.tm* %11, %struct.tm** %6, align 8
  %12 = load %struct.tm*, %struct.tm** %6, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = srem i32 %14, 24
  %16 = icmp sgt i32 %15, 12
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = getelementptr inbounds [4 x i16], [4 x i16]* %4, i64 0, i64 0
  %19 = load i16, i16* %18, align 2
  %20 = getelementptr inbounds %struct.Aloja_container, %struct.Aloja_container* %3, i32 0, i32 1
  store i16 %19, i16* %20, align 8
  br label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds [4 x i16], [4 x i16]* %4, i64 0, i64 2
  %23 = load i16, i16* %22, align 2
  %24 = getelementptr inbounds %struct.Aloja_container, %struct.Aloja_container* %3, i32 0, i32 1
  store i16 %23, i16* %24, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i16, i16* %2, align 2
  ret i16 %26
}

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime(i64*) #14

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_nb_socket(i8* %0, i8* %1) #0 !dbg !269 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !274, metadata !DIExpression()), !dbg !275
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata %struct.addrinfo* %6, metadata !278, metadata !DIExpression()), !dbg !305
  %11 = bitcast %struct.addrinfo* %6 to i8*, !dbg !305
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 48, i1 false), !dbg !305
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 1, !dbg !306
  store i32 0, i32* %12, align 4, !dbg !307
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2, !dbg !308
  store i32 1, i32* %13, align 8, !dbg !309
  call void @llvm.dbg.declare(metadata i32* %7, metadata !310, metadata !DIExpression()), !dbg !311
  store i32 -1, i32* %7, align 4, !dbg !311
  call void @llvm.dbg.declare(metadata i32* %8, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %9, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %10, metadata !316, metadata !DIExpression()), !dbg !317
  %14 = load i8*, i8** %4, align 8, !dbg !318
  %15 = load i8*, i8** %5, align 8, !dbg !319
  %16 = call i32 @getaddrinfo(i8* %14, i8* %15, %struct.addrinfo* %6, %struct.addrinfo** %10), !dbg !320
  store i32 %16, i32* %8, align 4, !dbg !321
  %17 = load i32, i32* %8, align 4, !dbg !322
  %18 = icmp ne i32 %17, 0, !dbg !324
  br i1 %18, label %19, label %24, !dbg !325

19:                                               ; preds = %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !326
  %21 = load i32, i32* %8, align 4, !dbg !328
  %22 = call i8* @gai_strerror(i32 %21) #10, !dbg !329
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %22), !dbg !330
  store i32 -1, i32* %3, align 4, !dbg !331
  br label %74, !dbg !331

24:                                               ; preds = %2
  %25 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !332
  store %struct.addrinfo* %25, %struct.addrinfo** %9, align 8, !dbg !334
  br label %26, !dbg !335

26:                                               ; preds = %58, %24
  %27 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8, !dbg !336
  %28 = icmp ne %struct.addrinfo* %27, null, !dbg !338
  br i1 %28, label %29, label %62, !dbg !339

29:                                               ; preds = %26
  %30 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8, !dbg !340
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 1, !dbg !342
  %32 = load i32, i32* %31, align 4, !dbg !342
  %33 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8, !dbg !343
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 2, !dbg !344
  %35 = load i32, i32* %34, align 8, !dbg !344
  %36 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8, !dbg !345
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 3, !dbg !346
  %38 = load i32, i32* %37, align 4, !dbg !346
  %39 = call i32 @socket(i32 %32, i32 %35, i32 %38) #10, !dbg !347
  store i32 %39, i32* %7, align 4, !dbg !348
  %40 = load i32, i32* %7, align 4, !dbg !349
  %41 = icmp eq i32 %40, -1, !dbg !351
  br i1 %41, label %42, label %43, !dbg !352

42:                                               ; preds = %29
  br label %58, !dbg !353

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4, !dbg !354
  %45 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8, !dbg !355
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 5, !dbg !356
  %47 = load %struct.sockaddr*, %struct.sockaddr** %46, align 8, !dbg !356
  %48 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8, !dbg !357
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 4, !dbg !358
  %50 = load i32, i32* %49, align 8, !dbg !358
  %51 = call i32 @connect(i32 %44, %struct.sockaddr* %47, i32 %50), !dbg !359
  store i32 %51, i32* %8, align 4, !dbg !360
  %52 = load i32, i32* %8, align 4, !dbg !361
  %53 = icmp eq i32 %52, -1, !dbg !363
  br i1 %53, label %54, label %57, !dbg !364

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4, !dbg !365
  %56 = call i32 @close(i32 %55), !dbg !367
  store i32 -1, i32* %7, align 4, !dbg !368
  br label %58, !dbg !369

57:                                               ; preds = %43
  br label %62, !dbg !370

58:                                               ; preds = %54, %42
  %59 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8, !dbg !371
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i32 0, i32 7, !dbg !372
  %61 = load %struct.addrinfo*, %struct.addrinfo** %60, align 8, !dbg !372
  store %struct.addrinfo* %61, %struct.addrinfo** %9, align 8, !dbg !373
  br label %26, !dbg !374, !llvm.loop !375

62:                                               ; preds = %57, %26
  %63 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !378
  call void @freeaddrinfo(%struct.addrinfo* %63) #10, !dbg !379
  %64 = load i32, i32* %7, align 4, !dbg !380
  %65 = icmp ne i32 %64, -1, !dbg !382
  br i1 %65, label %66, label %72, !dbg !383

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4, !dbg !384
  %68 = load i32, i32* %7, align 4, !dbg !385
  %69 = call i32 (i32, i32, ...) @fcntl(i32 %68, i32 3), !dbg !386
  %70 = or i32 %69, 2048, !dbg !387
  %71 = call i32 (i32, i32, ...) @fcntl(i32 %67, i32 4, i32 %70), !dbg !388
  br label %72, !dbg !388

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %7, align 4, !dbg !389
  store i32 %73, i32* %3, align 4, !dbg !390
  br label %74, !dbg !390

74:                                               ; preds = %72, %19
  %75 = load i32, i32* %3, align 4, !dbg !391
  ret i32 %75, !dbg !391
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #3

; Function Attrs: nounwind
declare dso_local i8* @gai_strerror(i32) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @socket(i32, i32, i32) #4

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #3

declare dso_local i32 @close(i32) #3

; Function Attrs: nounwind
declare dso_local void @freeaddrinfo(%struct.addrinfo*) #4

declare dso_local i32 @fcntl(i32, i32, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !392 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mqtt_client, align 8
  %11 = alloca [2048 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !397, metadata !DIExpression()), !dbg !398
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i8** %6, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i8** %7, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata i8** %8, metadata !405, metadata !DIExpression()), !dbg !406
  %16 = load i32, i32* %4, align 4, !dbg !407
  %17 = icmp sgt i32 %16, 1, !dbg !409
  br i1 %17, label %18, label %22, !dbg !410

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8, !dbg !411
  %20 = getelementptr inbounds i8*, i8** %19, i64 1, !dbg !411
  %21 = load i8*, i8** %20, align 8, !dbg !411
  store i8* %21, i8** %6, align 8, !dbg !413
  br label %23, !dbg !414

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8, !dbg !415
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i32, i32* %4, align 4, !dbg !417
  %25 = icmp sgt i32 %24, 2, !dbg !419
  br i1 %25, label %26, label %30, !dbg !420

26:                                               ; preds = %23
  %27 = load i8**, i8*** %5, align 8, !dbg !421
  %28 = getelementptr inbounds i8*, i8** %27, i64 2, !dbg !421
  %29 = load i8*, i8** %28, align 8, !dbg !421
  store i8* %29, i8** %7, align 8, !dbg !423
  br label %31, !dbg !424

30:                                               ; preds = %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8, !dbg !425
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* %4, align 4, !dbg !427
  %33 = icmp sgt i32 %32, 3, !dbg !429
  br i1 %33, label %34, label %38, !dbg !430

34:                                               ; preds = %31
  %35 = load i8**, i8*** %5, align 8, !dbg !431
  %36 = getelementptr inbounds i8*, i8** %35, i64 3, !dbg !431
  %37 = load i8*, i8** %36, align 8, !dbg !431
  store i8* %37, i8** %8, align 8, !dbg !433
  br label %39, !dbg !434

38:                                               ; preds = %31
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8, !dbg !435
  br label %39

39:                                               ; preds = %38, %34
  call void @llvm.dbg.declare(metadata i32* %9, metadata !437, metadata !DIExpression()), !dbg !438
  %40 = load i8*, i8** %6, align 8, !dbg !439
  %41 = load i8*, i8** %7, align 8, !dbg !440
  %42 = call i32 @open_nb_socket(i8* %40, i8* %41), !dbg !441
  store i32 %42, i32* %9, align 4, !dbg !438
  %43 = load i32, i32* %9, align 4, !dbg !442
  %44 = icmp eq i32 %43, -1, !dbg !444
  br i1 %44, label %45, label %47, !dbg !445

45:                                               ; preds = %39
  call void @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0)), !dbg !446
  %46 = load i32, i32* %9, align 4, !dbg !448
  call void @exit_example(i32 1, i32 %46, i64* null), !dbg !449
  br label %47, !dbg !450

47:                                               ; preds = %45, %39
  call void @llvm.dbg.declare(metadata %struct.mqtt_client* %10, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata [2048 x i8]* %11, metadata !453, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata [1024 x i8]* %12, metadata !458, metadata !DIExpression()), !dbg !462
  %48 = load i32, i32* %9, align 4, !dbg !463
  %49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0, !dbg !464
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0, !dbg !465
  %51 = call i32 bitcast (i32 (%struct.mqtt_client.7*, i32, i8*, i64, i8*, i64, void (i8**, %struct.mqtt_response_publish*)*)* @mqtt_init to i32 (%struct.mqtt_client*, i32, i8*, i64, i8*, i64, void (i8**, %struct.mqtt_response_publish*)*)*)(%struct.mqtt_client* %10, i32 %48, i8* %49, i64 2048, i8* %50, i64 1024, void (i8**, %struct.mqtt_response_publish*)* @publish_callback), !dbg !466
  call void @llvm.dbg.declare(metadata i8** %13, metadata !467, metadata !DIExpression()), !dbg !468
  store i8* null, i8** %13, align 8, !dbg !468
  call void @llvm.dbg.declare(metadata i8* %14, metadata !469, metadata !DIExpression()), !dbg !470
  store i8 2, i8* %14, align 1, !dbg !470
  %52 = load i8*, i8** %13, align 8, !dbg !471
  %53 = load i8, i8* %14, align 1, !dbg !472
  %54 = call i32 bitcast (i32 (%struct.mqtt_client.7*, i8*, i8*, i8*, i64, i8*, i8*, i8, i16)* @mqtt_connect to i32 (%struct.mqtt_client*, i8*, i8*, i8*, i64, i8*, i8*, i8, i16)*)(%struct.mqtt_client* %10, i8* %52, i8* null, i8* null, i64 0, i8* null, i8* null, i8 zeroext %53, i16 zeroext 400), !dbg !473
  %55 = getelementptr inbounds %struct.mqtt_client, %struct.mqtt_client* %10, i32 0, i32 6, !dbg !474
  %56 = load i32, i32* %55, align 8, !dbg !474
  %57 = icmp ne i32 %56, 1, !dbg !476
  br i1 %57, label %58, label %65, !dbg !477

58:                                               ; preds = %47
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !478
  %60 = getelementptr inbounds %struct.mqtt_client, %struct.mqtt_client* %10, i32 0, i32 6, !dbg !480
  %61 = load i32, i32* %60, align 8, !dbg !480
  %62 = call i8* @mqtt_error_str(i32 %61), !dbg !481
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %62), !dbg !482
  %64 = load i32, i32* %9, align 4, !dbg !483
  call void @exit_example(i32 1, i32 %64, i64* null), !dbg !484
  br label %65, !dbg !485

65:                                               ; preds = %58, %47
  call void @llvm.dbg.declare(metadata i64* %15, metadata !486, metadata !DIExpression()), !dbg !488
  %66 = bitcast %struct.mqtt_client* %10 to i8*, !dbg !489
  %67 = call i32 @pthread_create(i64* %15, %union.pthread_attr_t* null, i8* (i8*)* @client_refresher, i8* %66) #10, !dbg !491
  %68 = icmp ne i32 %67, 0, !dbg !491
  br i1 %68, label %69, label %73, !dbg !492

69:                                               ; preds = %65
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !493
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0)), !dbg !495
  %72 = load i32, i32* %9, align 4, !dbg !496
  call void @exit_example(i32 1, i32 %72, i64* null), !dbg !497
  br label %73, !dbg !498

73:                                               ; preds = %69, %65
  %74 = load i8*, i8** %8, align 8, !dbg !499
  %75 = call i32 bitcast (i32 (%struct.mqtt_client.7*, i8*, i32)* @mqtt_subscribe to i32 (%struct.mqtt_client*, i8*, i32)*)(%struct.mqtt_client* %10, i8* %74, i32 0), !dbg !500
  %76 = load i8**, i8*** %5, align 8, !dbg !501
  %77 = getelementptr inbounds i8*, i8** %76, i64 0, !dbg !501
  %78 = load i8*, i8** %77, align 8, !dbg !501
  %79 = load i8*, i8** %8, align 8, !dbg !502
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %78, i8* %79), !dbg !503
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)), !dbg !504
  br label %82, !dbg !505

82:                                               ; preds = %86, %73
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !506
  %84 = call i32 @fgetc(%struct._IO_FILE* %83), !dbg !507
  %85 = icmp ne i32 %84, -1, !dbg !508
  br i1 %85, label %86, label %87, !dbg !505

86:                                               ; preds = %82
  br label %82, !dbg !505, !llvm.loop !509

87:                                               ; preds = %82
  %88 = load i8**, i8*** %5, align 8, !dbg !511
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !511
  %90 = load i8*, i8** %89, align 8, !dbg !511
  %91 = load i8*, i8** %6, align 8, !dbg !512
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %90, i8* %91), !dbg !513
  %93 = call i32 @sleep(i32 1), !dbg !514
  %94 = load i32, i32* %9, align 4, !dbg !515
  call void @exit_example(i32 0, i32 %94, i64* %15), !dbg !516
  %95 = load i32, i32* %3, align 4, !dbg !517
  ret i32 %95, !dbg !517
}

declare dso_local void @perror(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_example(i32 %0, i32 %1, i64* %2) #0 !dbg !518 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !522, metadata !DIExpression()), !dbg !523
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !524, metadata !DIExpression()), !dbg !525
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !526, metadata !DIExpression()), !dbg !527
  %7 = load i32, i32* %5, align 4, !dbg !528
  %8 = icmp ne i32 %7, -1, !dbg !530
  br i1 %8, label %9, label %12, !dbg !531

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4, !dbg !532
  %11 = call i32 @close(i32 %10), !dbg !533
  br label %12, !dbg !533

12:                                               ; preds = %9, %3
  %13 = load i64*, i64** %6, align 8, !dbg !534
  %14 = icmp ne i64* %13, null, !dbg !536
  br i1 %14, label %15, label %19, !dbg !537

15:                                               ; preds = %12
  %16 = load i64*, i64** %6, align 8, !dbg !538
  %17 = load i64, i64* %16, align 8, !dbg !539
  %18 = call i32 @pthread_cancel(i64 %17), !dbg !540
  br label %19, !dbg !540

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %4, align 4, !dbg !541
  call void @exit(i32 %20) #11, !dbg !542
  unreachable, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @publish_callback(i8** %0, %struct.mqtt_response_publish* %1) #0 !dbg !543 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.mqtt_response_publish*, align 8
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !544, metadata !DIExpression()), !dbg !545
  store %struct.mqtt_response_publish* %1, %struct.mqtt_response_publish** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response_publish** %4, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata i8** %5, metadata !548, metadata !DIExpression()), !dbg !549
  %6 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %4, align 8, !dbg !550
  %7 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %6, i32 0, i32 3, !dbg !551
  %8 = load i16, i16* %7, align 4, !dbg !551
  %9 = zext i16 %8 to i32, !dbg !550
  %10 = add nsw i32 %9, 1, !dbg !552
  %11 = sext i32 %10 to i64, !dbg !550
  %12 = call noalias i8* @malloc(i64 %11) #10, !dbg !553
  store i8* %12, i8** %5, align 8, !dbg !549
  %13 = load i8*, i8** %5, align 8, !dbg !554
  %14 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %4, align 8, !dbg !555
  %15 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %14, i32 0, i32 4, !dbg !556
  %16 = load i8*, i8** %15, align 8, !dbg !556
  %17 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %4, align 8, !dbg !557
  %18 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %17, i32 0, i32 3, !dbg !558
  %19 = load i16, i16* %18, align 4, !dbg !558
  %20 = zext i16 %19 to i64, !dbg !557
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %16, i64 %20, i1 false), !dbg !559
  %21 = load i8*, i8** %5, align 8, !dbg !560
  %22 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %4, align 8, !dbg !561
  %23 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %22, i32 0, i32 3, !dbg !562
  %24 = load i16, i16* %23, align 4, !dbg !562
  %25 = zext i16 %24 to i64, !dbg !560
  %26 = getelementptr inbounds i8, i8* %21, i64 %25, !dbg !560
  store i8 0, i8* %26, align 1, !dbg !563
  %27 = load i8*, i8** %5, align 8, !dbg !564
  %28 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %4, align 8, !dbg !565
  %29 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %28, i32 0, i32 6, !dbg !566
  %30 = load i8*, i8** %29, align 8, !dbg !566
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %27, i8* %30), !dbg !567
  %32 = load i8*, i8** %5, align 8, !dbg !568
  call void @free(i8* %32) #10, !dbg !569
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @client_refresher(i8* %0) #0 !dbg !571 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !574, metadata !DIExpression()), !dbg !575
  br label %3, !dbg !576

3:                                                ; preds = %1, %3
  %4 = load i8*, i8** %2, align 8, !dbg !577
  %5 = bitcast i8* %4 to %struct.mqtt_client*, !dbg !579
  %6 = call i32 bitcast (i32 (%struct.mqtt_client.7*)* @mqtt_sync to i32 (%struct.mqtt_client*)*)(%struct.mqtt_client* %5), !dbg !580
  %7 = call i32 @usleep(i32 100000), !dbg !581
  br label %3, !dbg !576, !llvm.loop !582
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @fgetc(%struct._IO_FILE*) #3

declare dso_local i32 @sleep(i32) #3

declare dso_local i32 @usleep(i32) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

declare dso_local i32 @pthread_cancel(i64) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_sync(%struct.mqtt_client.7* %0) #0 !dbg !584 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mqtt_client.7*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %3, metadata !662, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.declare(metadata i32* %4, metadata !664, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.declare(metadata i32* %5, metadata !666, metadata !DIExpression()), !dbg !667
  store i32 0, i32* %5, align 4, !dbg !667
  %6 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !668
  %7 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %6, i32 0, i32 16, !dbg !668
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %7) #10, !dbg !668
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !669
  %10 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %9, i32 0, i32 6, !dbg !671
  %11 = load i32, i32* %10, align 8, !dbg !671
  %12 = icmp ne i32 %11, -2147483620, !dbg !672
  br i1 %12, label %13, label %30, !dbg !673

13:                                               ; preds = %1
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !674
  %15 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %14, i32 0, i32 6, !dbg !675
  %16 = load i32, i32* %15, align 8, !dbg !675
  %17 = icmp ne i32 %16, 1, !dbg !676
  br i1 %17, label %18, label %30, !dbg !677

18:                                               ; preds = %13
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !678
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 13, !dbg !679
  %21 = load void (%struct.mqtt_client.7*, i8**)*, void (%struct.mqtt_client.7*, i8**)** %20, align 8, !dbg !679
  %22 = icmp ne void (%struct.mqtt_client.7*, i8**)* %21, null, !dbg !680
  br i1 %22, label %23, label %30, !dbg !681

23:                                               ; preds = %18
  %24 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !682
  %25 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %24, i32 0, i32 13, !dbg !684
  %26 = load void (%struct.mqtt_client.7*, i8**)*, void (%struct.mqtt_client.7*, i8**)** %25, align 8, !dbg !684
  %27 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !685
  %28 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !686
  %29 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %28, i32 0, i32 14, !dbg !687
  call void %26(%struct.mqtt_client.7* %27, i8** %29), !dbg !682
  br label %42, !dbg !688

30:                                               ; preds = %18, %13, %1
  %31 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !689
  %32 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %31, i32 0, i32 6, !dbg !692
  %33 = load i32, i32* %32, align 8, !dbg !692
  %34 = icmp eq i32 %33, -2147483620, !dbg !693
  br i1 %34, label %35, label %38, !dbg !694

35:                                               ; preds = %30
  store i32 1, i32* %5, align 4, !dbg !695
  %36 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !697
  %37 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %36, i32 0, i32 6, !dbg !698
  store i32 1, i32* %37, align 8, !dbg !699
  br label %38, !dbg !700

38:                                               ; preds = %35, %30
  %39 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !701
  %40 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %39, i32 0, i32 16, !dbg !701
  %41 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %40) #10, !dbg !701
  br label %42

42:                                               ; preds = %38, %23
  %43 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !702
  %44 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %43, i32 0, i32 12, !dbg !704
  %45 = bitcast {}** %44 to i32 (%struct.mqtt_client.7*)**, !dbg !704
  %46 = load i32 (%struct.mqtt_client.7*)*, i32 (%struct.mqtt_client.7*)** %45, align 8, !dbg !704
  %47 = icmp ne i32 (%struct.mqtt_client.7*)* %46, null, !dbg !705
  br i1 %47, label %48, label %66, !dbg !706

48:                                               ; preds = %42
  %49 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !707
  %50 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %49, i32 0, i32 16, !dbg !707
  %51 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %50) #10, !dbg !707
  %52 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !709
  %53 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %52, i32 0, i32 12, !dbg !710
  %54 = bitcast {}** %53 to i32 (%struct.mqtt_client.7*)**, !dbg !710
  %55 = load i32 (%struct.mqtt_client.7*)*, i32 (%struct.mqtt_client.7*)** %54, align 8, !dbg !710
  %56 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !711
  %57 = call i32 %55(%struct.mqtt_client.7* %56), !dbg !709
  store i32 %57, i32* %4, align 4, !dbg !712
  %58 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !713
  %59 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %58, i32 0, i32 16, !dbg !713
  %60 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %59) #10, !dbg !713
  %61 = load i32, i32* %4, align 4, !dbg !714
  %62 = icmp ne i32 %61, 1, !dbg !716
  br i1 %62, label %63, label %65, !dbg !717

63:                                               ; preds = %48
  %64 = load i32, i32* %4, align 4, !dbg !718
  store i32 %64, i32* %2, align 4, !dbg !719
  br label %97, !dbg !719

65:                                               ; preds = %48
  br label %66, !dbg !720

66:                                               ; preds = %65, %42
  %67 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !721
  %68 = call i64 @__mqtt_recv(%struct.mqtt_client.7* %67), !dbg !722
  %69 = trunc i64 %68 to i32, !dbg !722
  store i32 %69, i32* %4, align 4, !dbg !723
  %70 = load i32, i32* %4, align 4, !dbg !724
  %71 = icmp ne i32 %70, 1, !dbg !726
  br i1 %71, label %72, label %74, !dbg !727

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4, !dbg !728
  store i32 %73, i32* %2, align 4, !dbg !729
  br label %97, !dbg !729

74:                                               ; preds = %66
  %75 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !730
  %76 = call i64 @__mqtt_send(%struct.mqtt_client.7* %75), !dbg !731
  %77 = trunc i64 %76 to i32, !dbg !731
  store i32 %77, i32* %4, align 4, !dbg !732
  %78 = load i32, i32* %5, align 4, !dbg !733
  %79 = icmp ne i32 %78, 0, !dbg !733
  br i1 %79, label %80, label %95, !dbg !735

80:                                               ; preds = %74
  %81 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !736
  %82 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %81, i32 0, i32 13, !dbg !737
  %83 = load void (%struct.mqtt_client.7*, i8**)*, void (%struct.mqtt_client.7*, i8**)** %82, align 8, !dbg !737
  %84 = icmp ne void (%struct.mqtt_client.7*, i8**)* %83, null, !dbg !738
  br i1 %84, label %85, label %95, !dbg !739

85:                                               ; preds = %80
  %86 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !740
  %87 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %86, i32 0, i32 16, !dbg !740
  %88 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %87) #10, !dbg !740
  %89 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !742
  %90 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %89, i32 0, i32 13, !dbg !743
  %91 = load void (%struct.mqtt_client.7*, i8**)*, void (%struct.mqtt_client.7*, i8**)** %90, align 8, !dbg !743
  %92 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !744
  %93 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !745
  %94 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %93, i32 0, i32 14, !dbg !746
  call void %91(%struct.mqtt_client.7* %92, i8** %94), !dbg !742
  br label %95, !dbg !747

95:                                               ; preds = %85, %80, %74
  %96 = load i32, i32* %4, align 4, !dbg !748
  store i32 %96, i32* %2, align 4, !dbg !749
  br label %97, !dbg !749

97:                                               ; preds = %95, %72, %63
  %98 = load i32, i32* %2, align 4, !dbg !750
  ret i32 %98, !dbg !750
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #4

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_recv(%struct.mqtt_client.7* %0) #0 !dbg !751 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mqtt_client.7*, align 8
  %4 = alloca %struct.mqtt_response, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mqtt_queued_message*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %3, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata %struct.mqtt_response* %4, metadata !759, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.declare(metadata i64* %5, metadata !809, metadata !DIExpression()), !dbg !810
  store i64 1, i64* %5, align 8, !dbg !810
  %12 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !811
  %13 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %12, i32 0, i32 16, !dbg !811
  %14 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %13) #10, !dbg !811
  br label %15, !dbg !812

15:                                               ; preds = %464, %1
  %16 = load i64, i64* %5, align 8, !dbg !813
  %17 = icmp eq i64 %16, 1, !dbg !814
  br i1 %17, label %18, label %504, !dbg !812

18:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata i64* %6, metadata !815, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata i64* %7, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %8, metadata !820, metadata !DIExpression()), !dbg !821
  store %struct.mqtt_queued_message* null, %struct.mqtt_queued_message** %8, align 8, !dbg !821
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !822
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 0, !dbg !823
  %21 = load i32, i32* %20, align 8, !dbg !823
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !824
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 15, !dbg !825
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 2, !dbg !826
  %25 = load i8*, i8** %24, align 8, !dbg !826
  %26 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !827
  %27 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %26, i32 0, i32 15, !dbg !828
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 3, !dbg !829
  %29 = load i64, i64* %28, align 8, !dbg !829
  %30 = call i64 @mqtt_pal_recvall(i32 %21, i8* %25, i64 %29, i32 0), !dbg !830
  store i64 %30, i64* %6, align 8, !dbg !831
  %31 = load i64, i64* %6, align 8, !dbg !832
  %32 = icmp slt i64 %31, 0, !dbg !834
  br i1 %32, label %33, label %42, !dbg !835

33:                                               ; preds = %18
  %34 = load i64, i64* %6, align 8, !dbg !836
  %35 = trunc i64 %34 to i32, !dbg !836
  %36 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !838
  %37 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %36, i32 0, i32 6, !dbg !839
  store i32 %35, i32* %37, align 8, !dbg !840
  %38 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !841
  %39 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %38, i32 0, i32 16, !dbg !841
  %40 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %39) #10, !dbg !841
  %41 = load i64, i64* %6, align 8, !dbg !842
  store i64 %41, i64* %2, align 8, !dbg !843
  br label %509, !dbg !843

42:                                               ; preds = %18
  %43 = load i64, i64* %6, align 8, !dbg !844
  %44 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !846
  %45 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %44, i32 0, i32 15, !dbg !847
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 2, !dbg !848
  %47 = load i8*, i8** %46, align 8, !dbg !849
  %48 = getelementptr inbounds i8, i8* %47, i64 %43, !dbg !849
  store i8* %48, i8** %46, align 8, !dbg !849
  %49 = load i64, i64* %6, align 8, !dbg !850
  %50 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !851
  %51 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %50, i32 0, i32 15, !dbg !852
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 3, !dbg !853
  %53 = load i64, i64* %52, align 8, !dbg !854
  %54 = sub i64 %53, %49, !dbg !854
  store i64 %54, i64* %52, align 8, !dbg !854
  br label %55

55:                                               ; preds = %42
  %56 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !855
  %57 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %56, i32 0, i32 15, !dbg !856
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0, !dbg !857
  %59 = load i8*, i8** %58, align 8, !dbg !857
  %60 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !858
  %61 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %60, i32 0, i32 15, !dbg !859
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 2, !dbg !860
  %63 = load i8*, i8** %62, align 8, !dbg !860
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !861
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 15, !dbg !862
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0, !dbg !863
  %67 = load i8*, i8** %66, align 8, !dbg !863
  %68 = ptrtoint i8* %63 to i64, !dbg !864
  %69 = ptrtoint i8* %67 to i64, !dbg !864
  %70 = sub i64 %68, %69, !dbg !864
  %71 = call i64 @mqtt_unpack_response(%struct.mqtt_response* %4, i8* %59, i64 %70), !dbg !865
  store i64 %71, i64* %7, align 8, !dbg !866
  %72 = load i64, i64* %7, align 8, !dbg !867
  %73 = icmp slt i64 %72, 0, !dbg !869
  br i1 %73, label %74, label %83, !dbg !870

74:                                               ; preds = %55
  %75 = load i64, i64* %7, align 8, !dbg !871
  %76 = trunc i64 %75 to i32, !dbg !871
  %77 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !873
  %78 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %77, i32 0, i32 6, !dbg !874
  store i32 %76, i32* %78, align 8, !dbg !875
  %79 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !876
  %80 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %79, i32 0, i32 16, !dbg !876
  %81 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %80) #10, !dbg !876
  %82 = load i64, i64* %7, align 8, !dbg !877
  store i64 %82, i64* %2, align 8, !dbg !878
  br label %509, !dbg !878

83:                                               ; preds = %55
  %84 = load i64, i64* %7, align 8, !dbg !879
  %85 = icmp eq i64 %84, 0, !dbg !881
  br i1 %85, label %86, label %102, !dbg !882

86:                                               ; preds = %83
  %87 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !883
  %88 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %87, i32 0, i32 15, !dbg !886
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 3, !dbg !887
  %90 = load i64, i64* %89, align 8, !dbg !887
  %91 = icmp eq i64 %90, 0, !dbg !888
  br i1 %91, label %92, label %98, !dbg !889

92:                                               ; preds = %86
  %93 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !890
  %94 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %93, i32 0, i32 6, !dbg !892
  store i32 -2147483629, i32* %94, align 8, !dbg !893
  %95 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !894
  %96 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %95, i32 0, i32 16, !dbg !894
  %97 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %96) #10, !dbg !894
  store i64 -2147483629, i64* %2, align 8, !dbg !895
  br label %509, !dbg !895

98:                                               ; preds = %86
  %99 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !896
  %100 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %99, i32 0, i32 16, !dbg !896
  %101 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %100) #10, !dbg !896
  store i64 1, i64* %2, align 8, !dbg !897
  br label %509, !dbg !897

102:                                              ; preds = %83
  br label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 0, !dbg !898
  %105 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %104, i32 0, i32 0, !dbg !899
  %106 = load i32, i32* %105, align 8, !dbg !899
  switch i32 %106, label %461 [
    i32 2, label %107
    i32 3, label %146
    i32 4, label %210
    i32 5, label %239
    i32 6, label %292
    i32 7, label %336
    i32 9, label %365
    i32 11, label %406
    i32 13, label %435
  ], !dbg !900

107:                                              ; preds = %103
  %108 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !901
  %109 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %108, i32 0, i32 17, !dbg !903
  %110 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %109, i32 1, i16* null), !dbg !904
  store %struct.mqtt_queued_message* %110, %struct.mqtt_queued_message** %8, align 8, !dbg !905
  %111 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !906
  %112 = icmp eq %struct.mqtt_queued_message* %111, null, !dbg !908
  br i1 %112, label %113, label %116, !dbg !909

113:                                              ; preds = %107
  %114 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !910
  %115 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %114, i32 0, i32 6, !dbg !912
  store i32 -2147483628, i32* %115, align 8, !dbg !913
  store i64 -2147483628, i64* %5, align 8, !dbg !914
  br label %464, !dbg !915

116:                                              ; preds = %107
  %117 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !916
  %118 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %117, i32 0, i32 2, !dbg !917
  store i32 2, i32* %118, align 8, !dbg !918
  %119 = call i64 @time(i64* null) #10, !dbg !919
  %120 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !920
  %121 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %120, i32 0, i32 3, !dbg !921
  %122 = load i64, i64* %121, align 8, !dbg !921
  %123 = sub nsw i64 %119, %122, !dbg !922
  %124 = sitofp i64 %123 to double, !dbg !923
  %125 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !924
  %126 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %125, i32 0, i32 9, !dbg !925
  store double %124, double* %126, align 8, !dbg !926
  %127 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !927
  %128 = bitcast %union.anon* %127 to %struct.mqtt_response_connack*, !dbg !929
  %129 = getelementptr inbounds %struct.mqtt_response_connack, %struct.mqtt_response_connack* %128, i32 0, i32 1, !dbg !930
  %130 = load i32, i32* %129, align 4, !dbg !930
  %131 = icmp ne i32 %130, 0, !dbg !931
  br i1 %131, label %132, label %145, !dbg !932

132:                                              ; preds = %116
  %133 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !933
  %134 = bitcast %union.anon* %133 to %struct.mqtt_response_connack*, !dbg !936
  %135 = getelementptr inbounds %struct.mqtt_response_connack, %struct.mqtt_response_connack* %134, i32 0, i32 1, !dbg !937
  %136 = load i32, i32* %135, align 4, !dbg !937
  %137 = icmp eq i32 %136, 2, !dbg !938
  br i1 %137, label %138, label %141, !dbg !939

138:                                              ; preds = %132
  %139 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !940
  %140 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %139, i32 0, i32 6, !dbg !942
  store i32 -2147483643, i32* %140, align 8, !dbg !943
  store i64 -2147483643, i64* %5, align 8, !dbg !944
  br label %144, !dbg !945

141:                                              ; preds = %132
  %142 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !946
  %143 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %142, i32 0, i32 6, !dbg !948
  store i32 -2147483626, i32* %143, align 8, !dbg !949
  store i64 -2147483626, i64* %5, align 8, !dbg !950
  br label %144

144:                                              ; preds = %141, %138
  br label %464, !dbg !951

145:                                              ; preds = %116
  br label %464, !dbg !952

146:                                              ; preds = %103
  %147 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !953
  %148 = bitcast %union.anon* %147 to %struct.mqtt_response_publish*, !dbg !955
  %149 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %148, i32 0, i32 1, !dbg !956
  %150 = load i8, i8* %149, align 1, !dbg !956
  %151 = zext i8 %150 to i32, !dbg !957
  %152 = icmp eq i32 %151, 1, !dbg !958
  br i1 %152, label %153, label %169, !dbg !959

153:                                              ; preds = %146
  %154 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !960
  %155 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !962
  %156 = bitcast %union.anon* %155 to %struct.mqtt_response_publish*, !dbg !963
  %157 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %156, i32 0, i32 5, !dbg !964
  %158 = load i16, i16* %157, align 8, !dbg !964
  %159 = call i64 @__mqtt_puback(%struct.mqtt_client.7* %154, i16 zeroext %158), !dbg !965
  store i64 %159, i64* %6, align 8, !dbg !966
  %160 = load i64, i64* %6, align 8, !dbg !967
  %161 = icmp ne i64 %160, 1, !dbg !969
  br i1 %161, label %162, label %168, !dbg !970

162:                                              ; preds = %153
  %163 = load i64, i64* %6, align 8, !dbg !971
  %164 = trunc i64 %163 to i32, !dbg !971
  %165 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !973
  %166 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %165, i32 0, i32 6, !dbg !974
  store i32 %164, i32* %166, align 8, !dbg !975
  %167 = load i64, i64* %6, align 8, !dbg !976
  store i64 %167, i64* %5, align 8, !dbg !977
  br label %464, !dbg !978

168:                                              ; preds = %153
  br label %202, !dbg !979

169:                                              ; preds = %146
  %170 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !980
  %171 = bitcast %union.anon* %170 to %struct.mqtt_response_publish*, !dbg !982
  %172 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %171, i32 0, i32 1, !dbg !983
  %173 = load i8, i8* %172, align 1, !dbg !983
  %174 = zext i8 %173 to i32, !dbg !984
  %175 = icmp eq i32 %174, 2, !dbg !985
  br i1 %175, label %176, label %201, !dbg !986

176:                                              ; preds = %169
  %177 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !987
  %178 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %177, i32 0, i32 17, !dbg !990
  %179 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !991
  %180 = bitcast %union.anon* %179 to %struct.mqtt_response_publish*, !dbg !992
  %181 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %180, i32 0, i32 5, !dbg !993
  %182 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %178, i32 5, i16* %181), !dbg !994
  %183 = icmp ne %struct.mqtt_queued_message* %182, null, !dbg !995
  br i1 %183, label %184, label %185, !dbg !996

184:                                              ; preds = %176
  br label %464, !dbg !997

185:                                              ; preds = %176
  %186 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !999
  %187 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1000
  %188 = bitcast %union.anon* %187 to %struct.mqtt_response_publish*, !dbg !1001
  %189 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %188, i32 0, i32 5, !dbg !1002
  %190 = load i16, i16* %189, align 8, !dbg !1002
  %191 = call i64 @__mqtt_pubrec(%struct.mqtt_client.7* %186, i16 zeroext %190), !dbg !1003
  store i64 %191, i64* %6, align 8, !dbg !1004
  %192 = load i64, i64* %6, align 8, !dbg !1005
  %193 = icmp ne i64 %192, 1, !dbg !1007
  br i1 %193, label %194, label %200, !dbg !1008

194:                                              ; preds = %185
  %195 = load i64, i64* %6, align 8, !dbg !1009
  %196 = trunc i64 %195 to i32, !dbg !1009
  %197 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1011
  %198 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %197, i32 0, i32 6, !dbg !1012
  store i32 %196, i32* %198, align 8, !dbg !1013
  %199 = load i64, i64* %6, align 8, !dbg !1014
  store i64 %199, i64* %5, align 8, !dbg !1015
  br label %464, !dbg !1016

200:                                              ; preds = %185
  br label %201, !dbg !1017

201:                                              ; preds = %200, %169
  br label %202

202:                                              ; preds = %201, %168
  %203 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1018
  %204 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %203, i32 0, i32 10, !dbg !1019
  %205 = load void (i8**, %struct.mqtt_response_publish*)*, void (i8**, %struct.mqtt_response_publish*)** %204, align 8, !dbg !1019
  %206 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1020
  %207 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %206, i32 0, i32 11, !dbg !1021
  %208 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1022
  %209 = bitcast %union.anon* %208 to %struct.mqtt_response_publish*, !dbg !1023
  call void %205(i8** %207, %struct.mqtt_response_publish* %209), !dbg !1018
  br label %464, !dbg !1024

210:                                              ; preds = %103
  %211 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1025
  %212 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %211, i32 0, i32 17, !dbg !1026
  %213 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1027
  %214 = bitcast %union.anon* %213 to %struct.mqtt_response_puback*, !dbg !1028
  %215 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %214, i32 0, i32 0, !dbg !1029
  %216 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %212, i32 3, i16* %215), !dbg !1030
  store %struct.mqtt_queued_message* %216, %struct.mqtt_queued_message** %8, align 8, !dbg !1031
  %217 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1032
  %218 = icmp eq %struct.mqtt_queued_message* %217, null, !dbg !1034
  br i1 %218, label %219, label %222, !dbg !1035

219:                                              ; preds = %210
  %220 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1036
  %221 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %220, i32 0, i32 6, !dbg !1038
  store i32 -2147483628, i32* %221, align 8, !dbg !1039
  store i64 -2147483628, i64* %5, align 8, !dbg !1040
  br label %464, !dbg !1041

222:                                              ; preds = %210
  %223 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1042
  %224 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %223, i32 0, i32 2, !dbg !1043
  store i32 2, i32* %224, align 8, !dbg !1044
  %225 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1045
  %226 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %225, i32 0, i32 9, !dbg !1046
  %227 = load double, double* %226, align 8, !dbg !1046
  %228 = fmul double 8.750000e-01, %227, !dbg !1047
  %229 = call i64 @time(i64* null) #10, !dbg !1048
  %230 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1049
  %231 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %230, i32 0, i32 3, !dbg !1050
  %232 = load i64, i64* %231, align 8, !dbg !1050
  %233 = sub nsw i64 %229, %232, !dbg !1051
  %234 = sitofp i64 %233 to double, !dbg !1052
  %235 = fmul double 1.250000e-01, %234, !dbg !1053
  %236 = fadd double %228, %235, !dbg !1054
  %237 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1055
  %238 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %237, i32 0, i32 9, !dbg !1056
  store double %236, double* %238, align 8, !dbg !1057
  br label %464, !dbg !1058

239:                                              ; preds = %103
  %240 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1059
  %241 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %240, i32 0, i32 17, !dbg !1061
  %242 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1062
  %243 = bitcast %union.anon* %242 to %struct.mqtt_response_puback*, !dbg !1063
  %244 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %243, i32 0, i32 0, !dbg !1064
  %245 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %241, i32 6, i16* %244), !dbg !1065
  %246 = icmp ne %struct.mqtt_queued_message* %245, null, !dbg !1066
  br i1 %246, label %247, label %248, !dbg !1067

247:                                              ; preds = %239
  br label %464, !dbg !1068

248:                                              ; preds = %239
  %249 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1070
  %250 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %249, i32 0, i32 17, !dbg !1071
  %251 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1072
  %252 = bitcast %union.anon* %251 to %struct.mqtt_response_puback*, !dbg !1073
  %253 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %252, i32 0, i32 0, !dbg !1074
  %254 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %250, i32 3, i16* %253), !dbg !1075
  store %struct.mqtt_queued_message* %254, %struct.mqtt_queued_message** %8, align 8, !dbg !1076
  %255 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1077
  %256 = icmp eq %struct.mqtt_queued_message* %255, null, !dbg !1079
  br i1 %256, label %257, label %260, !dbg !1080

257:                                              ; preds = %248
  %258 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1081
  %259 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %258, i32 0, i32 6, !dbg !1083
  store i32 -2147483628, i32* %259, align 8, !dbg !1084
  store i64 -2147483628, i64* %5, align 8, !dbg !1085
  br label %464, !dbg !1086

260:                                              ; preds = %248
  %261 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1087
  %262 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %261, i32 0, i32 2, !dbg !1088
  store i32 2, i32* %262, align 8, !dbg !1089
  %263 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1090
  %264 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %263, i32 0, i32 9, !dbg !1091
  %265 = load double, double* %264, align 8, !dbg !1091
  %266 = fmul double 8.750000e-01, %265, !dbg !1092
  %267 = call i64 @time(i64* null) #10, !dbg !1093
  %268 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1094
  %269 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %268, i32 0, i32 3, !dbg !1095
  %270 = load i64, i64* %269, align 8, !dbg !1095
  %271 = sub nsw i64 %267, %270, !dbg !1096
  %272 = sitofp i64 %271 to double, !dbg !1097
  %273 = fmul double 1.250000e-01, %272, !dbg !1098
  %274 = fadd double %266, %273, !dbg !1099
  %275 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1100
  %276 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %275, i32 0, i32 9, !dbg !1101
  store double %274, double* %276, align 8, !dbg !1102
  %277 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1103
  %278 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1104
  %279 = bitcast %union.anon* %278 to %struct.mqtt_response_puback*, !dbg !1105
  %280 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %279, i32 0, i32 0, !dbg !1106
  %281 = load i16, i16* %280, align 8, !dbg !1106
  %282 = call i64 @__mqtt_pubrel(%struct.mqtt_client.7* %277, i16 zeroext %281), !dbg !1107
  store i64 %282, i64* %6, align 8, !dbg !1108
  %283 = load i64, i64* %6, align 8, !dbg !1109
  %284 = icmp ne i64 %283, 1, !dbg !1111
  br i1 %284, label %285, label %291, !dbg !1112

285:                                              ; preds = %260
  %286 = load i64, i64* %6, align 8, !dbg !1113
  %287 = trunc i64 %286 to i32, !dbg !1113
  %288 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1115
  %289 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %288, i32 0, i32 6, !dbg !1116
  store i32 %287, i32* %289, align 8, !dbg !1117
  %290 = load i64, i64* %6, align 8, !dbg !1118
  store i64 %290, i64* %5, align 8, !dbg !1119
  br label %464, !dbg !1120

291:                                              ; preds = %260
  br label %464, !dbg !1121

292:                                              ; preds = %103
  %293 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1122
  %294 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %293, i32 0, i32 17, !dbg !1123
  %295 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1124
  %296 = bitcast %union.anon* %295 to %struct.mqtt_response_puback*, !dbg !1125
  %297 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %296, i32 0, i32 0, !dbg !1126
  %298 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %294, i32 5, i16* %297), !dbg !1127
  store %struct.mqtt_queued_message* %298, %struct.mqtt_queued_message** %8, align 8, !dbg !1128
  %299 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1129
  %300 = icmp eq %struct.mqtt_queued_message* %299, null, !dbg !1131
  br i1 %300, label %301, label %304, !dbg !1132

301:                                              ; preds = %292
  %302 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1133
  %303 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %302, i32 0, i32 6, !dbg !1135
  store i32 -2147483628, i32* %303, align 8, !dbg !1136
  store i64 -2147483628, i64* %5, align 8, !dbg !1137
  br label %464, !dbg !1138

304:                                              ; preds = %292
  %305 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1139
  %306 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %305, i32 0, i32 2, !dbg !1140
  store i32 2, i32* %306, align 8, !dbg !1141
  %307 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1142
  %308 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %307, i32 0, i32 9, !dbg !1143
  %309 = load double, double* %308, align 8, !dbg !1143
  %310 = fmul double 8.750000e-01, %309, !dbg !1144
  %311 = call i64 @time(i64* null) #10, !dbg !1145
  %312 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1146
  %313 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %312, i32 0, i32 3, !dbg !1147
  %314 = load i64, i64* %313, align 8, !dbg !1147
  %315 = sub nsw i64 %311, %314, !dbg !1148
  %316 = sitofp i64 %315 to double, !dbg !1149
  %317 = fmul double 1.250000e-01, %316, !dbg !1150
  %318 = fadd double %310, %317, !dbg !1151
  %319 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1152
  %320 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %319, i32 0, i32 9, !dbg !1153
  store double %318, double* %320, align 8, !dbg !1154
  %321 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1155
  %322 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1156
  %323 = bitcast %union.anon* %322 to %struct.mqtt_response_puback*, !dbg !1157
  %324 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %323, i32 0, i32 0, !dbg !1158
  %325 = load i16, i16* %324, align 8, !dbg !1158
  %326 = call i64 @__mqtt_pubcomp(%struct.mqtt_client.7* %321, i16 zeroext %325), !dbg !1159
  store i64 %326, i64* %6, align 8, !dbg !1160
  %327 = load i64, i64* %6, align 8, !dbg !1161
  %328 = icmp ne i64 %327, 1, !dbg !1163
  br i1 %328, label %329, label %335, !dbg !1164

329:                                              ; preds = %304
  %330 = load i64, i64* %6, align 8, !dbg !1165
  %331 = trunc i64 %330 to i32, !dbg !1165
  %332 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1167
  %333 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %332, i32 0, i32 6, !dbg !1168
  store i32 %331, i32* %333, align 8, !dbg !1169
  %334 = load i64, i64* %6, align 8, !dbg !1170
  store i64 %334, i64* %5, align 8, !dbg !1171
  br label %464, !dbg !1172

335:                                              ; preds = %304
  br label %464, !dbg !1173

336:                                              ; preds = %103
  %337 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1174
  %338 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %337, i32 0, i32 17, !dbg !1175
  %339 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1176
  %340 = bitcast %union.anon* %339 to %struct.mqtt_response_puback*, !dbg !1177
  %341 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %340, i32 0, i32 0, !dbg !1178
  %342 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %338, i32 6, i16* %341), !dbg !1179
  store %struct.mqtt_queued_message* %342, %struct.mqtt_queued_message** %8, align 8, !dbg !1180
  %343 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1181
  %344 = icmp eq %struct.mqtt_queued_message* %343, null, !dbg !1183
  br i1 %344, label %345, label %348, !dbg !1184

345:                                              ; preds = %336
  %346 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1185
  %347 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %346, i32 0, i32 6, !dbg !1187
  store i32 -2147483628, i32* %347, align 8, !dbg !1188
  store i64 -2147483628, i64* %5, align 8, !dbg !1189
  br label %464, !dbg !1190

348:                                              ; preds = %336
  %349 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1191
  %350 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %349, i32 0, i32 2, !dbg !1192
  store i32 2, i32* %350, align 8, !dbg !1193
  %351 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1194
  %352 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %351, i32 0, i32 9, !dbg !1195
  %353 = load double, double* %352, align 8, !dbg !1195
  %354 = fmul double 8.750000e-01, %353, !dbg !1196
  %355 = call i64 @time(i64* null) #10, !dbg !1197
  %356 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1198
  %357 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %356, i32 0, i32 3, !dbg !1199
  %358 = load i64, i64* %357, align 8, !dbg !1199
  %359 = sub nsw i64 %355, %358, !dbg !1200
  %360 = sitofp i64 %359 to double, !dbg !1201
  %361 = fmul double 1.250000e-01, %360, !dbg !1202
  %362 = fadd double %354, %361, !dbg !1203
  %363 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1204
  %364 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %363, i32 0, i32 9, !dbg !1205
  store double %362, double* %364, align 8, !dbg !1206
  br label %464, !dbg !1207

365:                                              ; preds = %103
  %366 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1208
  %367 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %366, i32 0, i32 17, !dbg !1209
  %368 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1210
  %369 = bitcast %union.anon* %368 to %struct.mqtt_response_suback*, !dbg !1211
  %370 = getelementptr inbounds %struct.mqtt_response_suback, %struct.mqtt_response_suback* %369, i32 0, i32 0, !dbg !1212
  %371 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %367, i32 8, i16* %370), !dbg !1213
  store %struct.mqtt_queued_message* %371, %struct.mqtt_queued_message** %8, align 8, !dbg !1214
  %372 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1215
  %373 = icmp eq %struct.mqtt_queued_message* %372, null, !dbg !1217
  br i1 %373, label %374, label %377, !dbg !1218

374:                                              ; preds = %365
  %375 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1219
  %376 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %375, i32 0, i32 6, !dbg !1221
  store i32 -2147483628, i32* %376, align 8, !dbg !1222
  store i64 -2147483628, i64* %5, align 8, !dbg !1223
  br label %464, !dbg !1224

377:                                              ; preds = %365
  %378 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1225
  %379 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %378, i32 0, i32 2, !dbg !1226
  store i32 2, i32* %379, align 8, !dbg !1227
  %380 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1228
  %381 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %380, i32 0, i32 9, !dbg !1229
  %382 = load double, double* %381, align 8, !dbg !1229
  %383 = fmul double 8.750000e-01, %382, !dbg !1230
  %384 = call i64 @time(i64* null) #10, !dbg !1231
  %385 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1232
  %386 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %385, i32 0, i32 3, !dbg !1233
  %387 = load i64, i64* %386, align 8, !dbg !1233
  %388 = sub nsw i64 %384, %387, !dbg !1234
  %389 = sitofp i64 %388 to double, !dbg !1235
  %390 = fmul double 1.250000e-01, %389, !dbg !1236
  %391 = fadd double %383, %390, !dbg !1237
  %392 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1238
  %393 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %392, i32 0, i32 9, !dbg !1239
  store double %391, double* %393, align 8, !dbg !1240
  %394 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1241
  %395 = bitcast %union.anon* %394 to %struct.mqtt_response_suback*, !dbg !1243
  %396 = getelementptr inbounds %struct.mqtt_response_suback, %struct.mqtt_response_suback* %395, i32 0, i32 1, !dbg !1244
  %397 = load i8*, i8** %396, align 8, !dbg !1244
  %398 = getelementptr inbounds i8, i8* %397, i64 0, !dbg !1245
  %399 = load i8, i8* %398, align 1, !dbg !1245
  %400 = zext i8 %399 to i32, !dbg !1245
  %401 = icmp eq i32 %400, 128, !dbg !1246
  br i1 %401, label %402, label %405, !dbg !1247

402:                                              ; preds = %377
  %403 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1248
  %404 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %403, i32 0, i32 6, !dbg !1250
  store i32 -2147483625, i32* %404, align 8, !dbg !1251
  store i64 -2147483625, i64* %5, align 8, !dbg !1252
  br label %464, !dbg !1253

405:                                              ; preds = %377
  br label %464, !dbg !1254

406:                                              ; preds = %103
  %407 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1255
  %408 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %407, i32 0, i32 17, !dbg !1256
  %409 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1257
  %410 = bitcast %union.anon* %409 to %struct.mqtt_response_puback*, !dbg !1258
  %411 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %410, i32 0, i32 0, !dbg !1259
  %412 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %408, i32 10, i16* %411), !dbg !1260
  store %struct.mqtt_queued_message* %412, %struct.mqtt_queued_message** %8, align 8, !dbg !1261
  %413 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1262
  %414 = icmp eq %struct.mqtt_queued_message* %413, null, !dbg !1264
  br i1 %414, label %415, label %418, !dbg !1265

415:                                              ; preds = %406
  %416 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1266
  %417 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %416, i32 0, i32 6, !dbg !1268
  store i32 -2147483628, i32* %417, align 8, !dbg !1269
  store i64 -2147483628, i64* %5, align 8, !dbg !1270
  br label %464, !dbg !1271

418:                                              ; preds = %406
  %419 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1272
  %420 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %419, i32 0, i32 2, !dbg !1273
  store i32 2, i32* %420, align 8, !dbg !1274
  %421 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1275
  %422 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %421, i32 0, i32 9, !dbg !1276
  %423 = load double, double* %422, align 8, !dbg !1276
  %424 = fmul double 8.750000e-01, %423, !dbg !1277
  %425 = call i64 @time(i64* null) #10, !dbg !1278
  %426 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1279
  %427 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %426, i32 0, i32 3, !dbg !1280
  %428 = load i64, i64* %427, align 8, !dbg !1280
  %429 = sub nsw i64 %425, %428, !dbg !1281
  %430 = sitofp i64 %429 to double, !dbg !1282
  %431 = fmul double 1.250000e-01, %430, !dbg !1283
  %432 = fadd double %424, %431, !dbg !1284
  %433 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1285
  %434 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %433, i32 0, i32 9, !dbg !1286
  store double %432, double* %434, align 8, !dbg !1287
  br label %464, !dbg !1288

435:                                              ; preds = %103
  %436 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1289
  %437 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %436, i32 0, i32 17, !dbg !1290
  %438 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %437, i32 12, i16* null), !dbg !1291
  store %struct.mqtt_queued_message* %438, %struct.mqtt_queued_message** %8, align 8, !dbg !1292
  %439 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1293
  %440 = icmp eq %struct.mqtt_queued_message* %439, null, !dbg !1295
  br i1 %440, label %441, label %444, !dbg !1296

441:                                              ; preds = %435
  %442 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1297
  %443 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %442, i32 0, i32 6, !dbg !1299
  store i32 -2147483628, i32* %443, align 8, !dbg !1300
  store i64 -2147483628, i64* %5, align 8, !dbg !1301
  br label %464, !dbg !1302

444:                                              ; preds = %435
  %445 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1303
  %446 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %445, i32 0, i32 2, !dbg !1304
  store i32 2, i32* %446, align 8, !dbg !1305
  %447 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1306
  %448 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %447, i32 0, i32 9, !dbg !1307
  %449 = load double, double* %448, align 8, !dbg !1307
  %450 = fmul double 8.750000e-01, %449, !dbg !1308
  %451 = call i64 @time(i64* null) #10, !dbg !1309
  %452 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1310
  %453 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %452, i32 0, i32 3, !dbg !1311
  %454 = load i64, i64* %453, align 8, !dbg !1311
  %455 = sub nsw i64 %451, %454, !dbg !1312
  %456 = sitofp i64 %455 to double, !dbg !1313
  %457 = fmul double 1.250000e-01, %456, !dbg !1314
  %458 = fadd double %450, %457, !dbg !1315
  %459 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1316
  %460 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %459, i32 0, i32 9, !dbg !1317
  store double %458, double* %460, align 8, !dbg !1318
  br label %464, !dbg !1319

461:                                              ; preds = %103
  %462 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1320
  %463 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %462, i32 0, i32 6, !dbg !1321
  store i32 -2147483636, i32* %463, align 8, !dbg !1322
  store i64 -2147483636, i64* %5, align 8, !dbg !1323
  br label %464, !dbg !1324

464:                                              ; preds = %461, %444, %441, %418, %415, %405, %402, %374, %348, %345, %335, %329, %301, %291, %285, %257, %247, %222, %219, %202, %194, %184, %162, %145, %144, %113
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1325, metadata !DIExpression()), !dbg !1327
  %465 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1328
  %466 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %465, i32 0, i32 15, !dbg !1329
  %467 = getelementptr inbounds %struct.anon, %struct.anon* %466, i32 0, i32 0, !dbg !1330
  %468 = load i8*, i8** %467, align 8, !dbg !1330
  store i8* %468, i8** %9, align 8, !dbg !1327
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1331, metadata !DIExpression()), !dbg !1332
  %469 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1333
  %470 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %469, i32 0, i32 15, !dbg !1334
  %471 = getelementptr inbounds %struct.anon, %struct.anon* %470, i32 0, i32 0, !dbg !1335
  %472 = load i8*, i8** %471, align 8, !dbg !1335
  %473 = load i64, i64* %7, align 8, !dbg !1336
  %474 = getelementptr inbounds i8, i8* %472, i64 %473, !dbg !1337
  store i8* %474, i8** %10, align 8, !dbg !1332
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1338, metadata !DIExpression()), !dbg !1339
  %475 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1340
  %476 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %475, i32 0, i32 15, !dbg !1341
  %477 = getelementptr inbounds %struct.anon, %struct.anon* %476, i32 0, i32 2, !dbg !1342
  %478 = load i8*, i8** %477, align 8, !dbg !1342
  %479 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1343
  %480 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %479, i32 0, i32 15, !dbg !1344
  %481 = getelementptr inbounds %struct.anon, %struct.anon* %480, i32 0, i32 0, !dbg !1345
  %482 = load i8*, i8** %481, align 8, !dbg !1345
  %483 = ptrtoint i8* %478 to i64, !dbg !1346
  %484 = ptrtoint i8* %482 to i64, !dbg !1346
  %485 = sub i64 %483, %484, !dbg !1346
  %486 = load i64, i64* %7, align 8, !dbg !1347
  %487 = sub nsw i64 %485, %486, !dbg !1348
  store i64 %487, i64* %11, align 8, !dbg !1339
  %488 = load i8*, i8** %9, align 8, !dbg !1349
  %489 = load i8*, i8** %10, align 8, !dbg !1350
  %490 = load i64, i64* %11, align 8, !dbg !1351
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %488, i8* align 1 %489, i64 %490, i1 false), !dbg !1352
  %491 = load i64, i64* %7, align 8, !dbg !1353
  %492 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1354
  %493 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %492, i32 0, i32 15, !dbg !1355
  %494 = getelementptr inbounds %struct.anon, %struct.anon* %493, i32 0, i32 2, !dbg !1356
  %495 = load i8*, i8** %494, align 8, !dbg !1357
  %496 = sub i64 0, %491, !dbg !1357
  %497 = getelementptr inbounds i8, i8* %495, i64 %496, !dbg !1357
  store i8* %497, i8** %494, align 8, !dbg !1357
  %498 = load i64, i64* %7, align 8, !dbg !1358
  %499 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1359
  %500 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %499, i32 0, i32 15, !dbg !1360
  %501 = getelementptr inbounds %struct.anon, %struct.anon* %500, i32 0, i32 3, !dbg !1361
  %502 = load i64, i64* %501, align 8, !dbg !1362
  %503 = add i64 %502, %498, !dbg !1362
  store i64 %503, i64* %501, align 8, !dbg !1362
  br label %15, !dbg !812, !llvm.loop !1363

504:                                              ; preds = %15
  %505 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1365
  %506 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %505, i32 0, i32 16, !dbg !1365
  %507 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %506) #10, !dbg !1365
  %508 = load i64, i64* %5, align 8, !dbg !1366
  store i64 %508, i64* %2, align 8, !dbg !1367
  br label %509, !dbg !1367

509:                                              ; preds = %504, %98, %92, %74, %33
  %510 = load i64, i64* %2, align 8, !dbg !1368
  ret i64 %510, !dbg !1368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_send(%struct.mqtt_client.7* %0) #0 !dbg !1369 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mqtt_client.7*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mqtt_queued_message*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %3, align 8
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 2
  %15 = load i16, i16* %14, align 4
  %16 = call i16 @Aloja_Wrapper_Function(i16 %15)
  %17 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8
  %18 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %17, i32 0, i32 2
  store i16 %16, i16* %18, align 4
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 2
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %3, metadata !1370, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1372, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1374, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1376, metadata !DIExpression()), !dbg !1377
  store i32 0, i32* %6, align 4, !dbg !1377
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1378, metadata !DIExpression()), !dbg !1379
  store i32 0, i32* %7, align 4, !dbg !1379
  %21 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1380
  %22 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %21, i32 0, i32 16, !dbg !1380
  %23 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %22) #10, !dbg !1380
  %24 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1381
  %25 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %24, i32 0, i32 6, !dbg !1383
  %26 = load i32, i32* %25, align 8, !dbg !1383
  %27 = icmp slt i32 %26, 0, !dbg !1384
  br i1 %27, label %28, label %41, !dbg !1385

28:                                               ; preds = %1
  %29 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1386
  %30 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %29, i32 0, i32 6, !dbg !1387
  %31 = load i32, i32* %30, align 8, !dbg !1387
  %32 = icmp ne i32 %31, -2147483632, !dbg !1388
  br i1 %32, label %33, label %41, !dbg !1389

33:                                               ; preds = %28
  %34 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1390
  %35 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %34, i32 0, i32 16, !dbg !1390
  %36 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %35) #10, !dbg !1390
  %37 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1392
  %38 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %37, i32 0, i32 6, !dbg !1393
  %39 = load i32, i32* %38, align 8, !dbg !1393
  %40 = sext i32 %39 to i64, !dbg !1392
  store i64 %40, i64* %2, align 8, !dbg !1394
  br label %286, !dbg !1394

41:                                               ; preds = %28, %1
  %42 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1395
  %43 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %42, i32 0, i32 17, !dbg !1395
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 1, !dbg !1395
  %45 = load i8*, i8** %44, align 8, !dbg !1395
  %46 = bitcast i8* %45 to %struct.mqtt_queued_message*, !dbg !1395
  %47 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1395
  %48 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %47, i32 0, i32 17, !dbg !1395
  %49 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %48, i32 0, i32 4, !dbg !1395
  %50 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %49, align 8, !dbg !1395
  %51 = ptrtoint %struct.mqtt_queued_message* %46 to i64, !dbg !1395
  %52 = ptrtoint %struct.mqtt_queued_message* %50 to i64, !dbg !1395
  %53 = sub i64 %51, %52, !dbg !1395
  %54 = sdiv exact i64 %53, 40, !dbg !1395
  store i64 %54, i64* %5, align 8, !dbg !1396
  br label %55, !dbg !1397

55:                                               ; preds = %248, %41
  %56 = load i32, i32* %7, align 4, !dbg !1398
  %57 = sext i32 %56 to i64, !dbg !1398
  %58 = load i64, i64* %5, align 8, !dbg !1401
  %59 = icmp slt i64 %57, %58, !dbg !1402
  br i1 %59, label %60, label %251, !dbg !1403

60:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %8, metadata !1404, metadata !DIExpression()), !dbg !1406
  %61 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1407
  %62 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %61, i32 0, i32 17, !dbg !1407
  %63 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %62, i32 0, i32 1, !dbg !1407
  %64 = load i8*, i8** %63, align 8, !dbg !1407
  %65 = bitcast i8* %64 to %struct.mqtt_queued_message*, !dbg !1407
  %66 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %65, i64 -1, !dbg !1407
  %67 = load i32, i32* %7, align 4, !dbg !1407
  %68 = sext i32 %67 to i64, !dbg !1407
  %69 = sub i64 0, %68, !dbg !1407
  %70 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %66, i64 %69, !dbg !1407
  store %struct.mqtt_queued_message* %70, %struct.mqtt_queued_message** %8, align 8, !dbg !1406
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1408, metadata !DIExpression()), !dbg !1409
  store i32 0, i32* %9, align 4, !dbg !1409
  %71 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1410
  %72 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %71, i32 0, i32 2, !dbg !1412
  %73 = load i32, i32* %72, align 8, !dbg !1412
  %74 = icmp eq i32 %73, 0, !dbg !1413
  br i1 %74, label %75, label %76, !dbg !1414

75:                                               ; preds = %60
  store i32 1, i32* %9, align 4, !dbg !1415
  br label %101, !dbg !1417

76:                                               ; preds = %60
  %77 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1418
  %78 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %77, i32 0, i32 2, !dbg !1420
  %79 = load i32, i32* %78, align 8, !dbg !1420
  %80 = icmp eq i32 %79, 1, !dbg !1421
  br i1 %80, label %81, label %100, !dbg !1422

81:                                               ; preds = %76
  %82 = call i64 @time(i64* null) #10, !dbg !1423
  %83 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1426
  %84 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %83, i32 0, i32 3, !dbg !1427
  %85 = load i64, i64* %84, align 8, !dbg !1427
  %86 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1428
  %87 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %86, i32 0, i32 7, !dbg !1429
  %88 = load i32, i32* %87, align 4, !dbg !1429
  %89 = sext i32 %88 to i64, !dbg !1428
  %90 = add nsw i64 %85, %89, !dbg !1430
  %91 = icmp sgt i64 %82, %90, !dbg !1431
  br i1 %91, label %92, label %99, !dbg !1432

92:                                               ; preds = %81
  store i32 1, i32* %9, align 4, !dbg !1433
  %93 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1435
  %94 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %93, i32 0, i32 8, !dbg !1436
  %95 = load i32, i32* %94, align 8, !dbg !1437
  %96 = add nsw i32 %95, 1, !dbg !1437
  store i32 %96, i32* %94, align 8, !dbg !1437
  %97 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1438
  %98 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %97, i32 0, i32 4, !dbg !1439
  store i64 0, i64* %98, align 8, !dbg !1440
  br label %99, !dbg !1441

99:                                               ; preds = %92, %81
  br label %100, !dbg !1442

100:                                               ; preds = %99, %76
  br label %101

101:                                               ; preds = %100, %75
  %102 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1443
  %103 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %102, i32 0, i32 4, !dbg !1445
  %104 = load i32, i32* %103, align 8, !dbg !1445
  %105 = icmp eq i32 %104, 3, !dbg !1446
  br i1 %105, label %106, label %135, !dbg !1447

106:                                               ; preds = %101
  %107 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1448
  %108 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %107, i32 0, i32 2, !dbg !1449
  %109 = load i32, i32* %108, align 8, !dbg !1449
  %110 = icmp eq i32 %109, 0, !dbg !1450
  br i1 %110, label %116, label %111, !dbg !1451

111:                                              ; preds = %106
  %112 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1452
  %113 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %112, i32 0, i32 2, !dbg !1453
  %114 = load i32, i32* %113, align 8, !dbg !1453
  %115 = icmp eq i32 %114, 1, !dbg !1454
  br i1 %115, label %116, label %135, !dbg !1455

116:                                              ; preds = %111, %106
  %117 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1456
  %118 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %117, i32 0, i32 0, !dbg !1458
  %119 = load i8*, i8** %118, align 8, !dbg !1458
  %120 = getelementptr inbounds i8, i8* %119, i64 0, !dbg !1456
  %121 = load i8, i8* %120, align 1, !dbg !1456
  %122 = zext i8 %121 to i32, !dbg !1459
  %123 = ashr i32 %122, 1, !dbg !1460
  %124 = and i32 3, %123, !dbg !1461
  %125 = trunc i32 %124 to i8, !dbg !1462
  store i8 %125, i8* %4, align 1, !dbg !1463
  %126 = load i8, i8* %4, align 1, !dbg !1464
  %127 = zext i8 %126 to i32, !dbg !1464
  %128 = icmp eq i32 %127, 2, !dbg !1466
  br i1 %128, label %129, label %134, !dbg !1467

129:                                              ; preds = %116
  %130 = load i32, i32* %6, align 4, !dbg !1468
  %131 = icmp ne i32 %130, 0, !dbg !1468
  br i1 %131, label %132, label %133, !dbg !1471

132:                                              ; preds = %129
  store i32 0, i32* %9, align 4, !dbg !1472
  br label %133, !dbg !1474

133:                                              ; preds = %132, %129
  store i32 1, i32* %6, align 4, !dbg !1475
  br label %134, !dbg !1476

134:                                              ; preds = %133, %116
  br label %135, !dbg !1477

135:                                              ; preds = %134, %111, %101
  %136 = load i32, i32* %9, align 4, !dbg !1478
  %137 = icmp ne i32 %136, 0, !dbg !1478
  br i1 %137, label %139, label %138, !dbg !1480

138:                                              ; preds = %135
  br label %248, !dbg !1481

139:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1483, metadata !DIExpression()), !dbg !1485
  %140 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1486
  %141 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %140, i32 0, i32 0, !dbg !1487
  %142 = load i32, i32* %141, align 8, !dbg !1487
  %143 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1488
  %144 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %143, i32 0, i32 0, !dbg !1489
  %145 = load i8*, i8** %144, align 8, !dbg !1489
  %146 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1490
  %147 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %146, i32 0, i32 4, !dbg !1491
  %148 = load i64, i64* %147, align 8, !dbg !1491
  %149 = getelementptr inbounds i8, i8* %145, i64 %148, !dbg !1492
  %150 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1493
  %151 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %150, i32 0, i32 1, !dbg !1494
  %152 = load i64, i64* %151, align 8, !dbg !1494
  %153 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1495
  %154 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %153, i32 0, i32 4, !dbg !1496
  %155 = load i64, i64* %154, align 8, !dbg !1496
  %156 = sub i64 %152, %155, !dbg !1497
  %157 = call i64 @mqtt_pal_sendall(i32 %142, i8* %149, i64 %156, i32 0), !dbg !1498
  store i64 %157, i64* %10, align 8, !dbg !1485
  %158 = load i64, i64* %10, align 8, !dbg !1499
  %159 = icmp slt i64 %158, 0, !dbg !1501
  br i1 %159, label %160, label %169, !dbg !1502

160:                                              ; preds = %139
  %161 = load i64, i64* %10, align 8, !dbg !1503
  %162 = trunc i64 %161 to i32, !dbg !1503
  %163 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1505
  %164 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %163, i32 0, i32 6, !dbg !1506
  store i32 %162, i32* %164, align 8, !dbg !1507
  %165 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1508
  %166 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %165, i32 0, i32 16, !dbg !1508
  %167 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %166) #10, !dbg !1508
  %168 = load i64, i64* %10, align 8, !dbg !1509
  store i64 %168, i64* %2, align 8, !dbg !1510
  br label %286, !dbg !1510

169:                                              ; preds = %139
  %170 = load i64, i64* %10, align 8, !dbg !1511
  %171 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1513
  %172 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %171, i32 0, i32 4, !dbg !1514
  %173 = load i64, i64* %172, align 8, !dbg !1515
  %174 = add i64 %173, %170, !dbg !1515
  store i64 %174, i64* %172, align 8, !dbg !1515
  %175 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1516
  %176 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %175, i32 0, i32 4, !dbg !1518
  %177 = load i64, i64* %176, align 8, !dbg !1518
  %178 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1519
  %179 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %178, i32 0, i32 1, !dbg !1520
  %180 = load i64, i64* %179, align 8, !dbg !1520
  %181 = icmp ult i64 %177, %180, !dbg !1521
  br i1 %181, label %182, label %183, !dbg !1522

182:                                              ; preds = %169
  br label %251, !dbg !1523

183:                                              ; preds = %169
  %184 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1525
  %185 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %184, i32 0, i32 4, !dbg !1527
  store i64 0, i64* %185, align 8, !dbg !1528
  br label %186

186:                                              ; preds = %183
  br label %187

187:                                              ; preds = %186
  %188 = call i64 @time(i64* null) #10, !dbg !1529
  %189 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1530
  %190 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %189, i32 0, i32 5, !dbg !1531
  store i64 %188, i64* %190, align 8, !dbg !1532
  %191 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1533
  %192 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %191, i32 0, i32 5, !dbg !1534
  %193 = load i64, i64* %192, align 8, !dbg !1534
  %194 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1535
  %195 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %194, i32 0, i32 3, !dbg !1536
  store i64 %193, i64* %195, align 8, !dbg !1537
  %196 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1538
  %197 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %196, i32 0, i32 4, !dbg !1539
  %198 = load i32, i32* %197, align 8, !dbg !1539
  switch i32 %198, label %241 [
    i32 4, label %199
    i32 7, label %199
    i32 14, label %199
    i32 3, label %202
    i32 1, label %238
    i32 5, label %238
    i32 6, label %238
    i32 8, label %238
    i32 10, label %238
    i32 12, label %238
  ], !dbg !1540

199:                                              ; preds = %187, %187, %187
  %200 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1541
  %201 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %200, i32 0, i32 2, !dbg !1543
  store i32 2, i32* %201, align 8, !dbg !1544
  br label %247, !dbg !1545

202:                                              ; preds = %187
  %203 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1546
  %204 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %203, i32 0, i32 0, !dbg !1547
  %205 = load i8*, i8** %204, align 8, !dbg !1547
  %206 = getelementptr inbounds i8, i8* %205, i64 0, !dbg !1546
  %207 = load i8, i8* %206, align 1, !dbg !1546
  %208 = zext i8 %207 to i32, !dbg !1548
  %209 = and i32 6, %208, !dbg !1549
  %210 = ashr i32 %209, 1, !dbg !1550
  %211 = trunc i32 %210 to i8, !dbg !1551
  store i8 %211, i8* %4, align 1, !dbg !1552
  %212 = load i8, i8* %4, align 1, !dbg !1553
  %213 = zext i8 %212 to i32, !dbg !1553
  %214 = icmp eq i32 %213, 0, !dbg !1555
  br i1 %214, label %215, label %218, !dbg !1556

215:                                              ; preds = %202
  %216 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1557
  %217 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %216, i32 0, i32 2, !dbg !1559
  store i32 2, i32* %217, align 8, !dbg !1560
  br label %237, !dbg !1561

218:                                              ; preds = %202
  %219 = load i8, i8* %4, align 1, !dbg !1562
  %220 = zext i8 %219 to i32, !dbg !1562
  %221 = icmp eq i32 %220, 1, !dbg !1564
  br i1 %221, label %222, label %233, !dbg !1565

222:                                              ; preds = %218
  %223 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1566
  %224 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %223, i32 0, i32 2, !dbg !1568
  store i32 1, i32* %224, align 8, !dbg !1569
  %225 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1570
  %226 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %225, i32 0, i32 0, !dbg !1571
  %227 = load i8*, i8** %226, align 8, !dbg !1571
  %228 = getelementptr inbounds i8, i8* %227, i64 0, !dbg !1570
  %229 = load i8, i8* %228, align 1, !dbg !1572
  %230 = zext i8 %229 to i32, !dbg !1572
  %231 = or i32 %230, 8, !dbg !1572
  %232 = trunc i32 %231 to i8, !dbg !1572
  store i8 %232, i8* %228, align 1, !dbg !1572
  br label %236, !dbg !1573

233:                                              ; preds = %218
  %234 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1574
  %235 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %234, i32 0, i32 2, !dbg !1576
  store i32 1, i32* %235, align 8, !dbg !1577
  br label %236

236:                                              ; preds = %233, %222
  br label %237

237:                                              ; preds = %236, %215
  br label %247, !dbg !1578

238:                                              ; preds = %187, %187, %187, %187, %187, %187
  %239 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1579
  %240 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %239, i32 0, i32 2, !dbg !1580
  store i32 1, i32* %240, align 8, !dbg !1581
  br label %247, !dbg !1582

241:                                              ; preds = %187
  %242 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1583
  %243 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %242, i32 0, i32 6, !dbg !1584
  store i32 -2147483630, i32* %243, align 8, !dbg !1585
  %244 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1586
  %245 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %244, i32 0, i32 16, !dbg !1586
  %246 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %245) #10, !dbg !1586
  store i64 -2147483630, i64* %2, align 8, !dbg !1587
  br label %286, !dbg !1587

247:                                              ; preds = %238, %237, %199
  br label %248, !dbg !1588

248:                                              ; preds = %247, %138
  %249 = load i32, i32* %7, align 4, !dbg !1589
  %250 = add nsw i32 %249, 1, !dbg !1589
  store i32 %250, i32* %7, align 4, !dbg !1589
  br label %55, !dbg !1590, !llvm.loop !1591

251:                                              ; preds = %182, %55
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1593, metadata !DIExpression()), !dbg !1595
  %252 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1596
  %253 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %252, i32 0, i32 5, !dbg !1597
  %254 = load i64, i64* %253, align 8, !dbg !1597
  %255 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1598
  %256 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %255, i32 0, i32 2, !dbg !1599
  %257 = load i16, i16* %256, align 2, !dbg !1599
  %258 = uitofp i16 %257 to float, !dbg !1600
  %259 = fpext float %258 to double, !dbg !1600
  %260 = fmul double %259, 7.500000e-01, !dbg !1601
  %261 = fptosi double %260 to i64, !dbg !1602
  %262 = add nsw i64 %254, %261, !dbg !1603
  store i64 %262, i64* %11, align 8, !dbg !1595
  %263 = call i64 @time(i64* null) #10, !dbg !1604
  %264 = load i64, i64* %11, align 8, !dbg !1606
  %265 = icmp sgt i64 %263, %264, !dbg !1607
  br i1 %265, label %266, label %282, !dbg !1608

266:                                              ; preds = %251
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1609, metadata !DIExpression()), !dbg !1611
  %267 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1612
  %268 = call i32 @__mqtt_ping(%struct.mqtt_client.7* %267), !dbg !1613
  %269 = sext i32 %268 to i64, !dbg !1613
  store i64 %269, i64* %12, align 8, !dbg !1611
  %270 = load i64, i64* %12, align 8, !dbg !1614
  %271 = icmp ne i64 %270, 1, !dbg !1616
  br i1 %271, label %272, label %281, !dbg !1617

272:                                              ; preds = %266
  %273 = load i64, i64* %12, align 8, !dbg !1618
  %274 = trunc i64 %273 to i32, !dbg !1618
  %275 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1620
  %276 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %275, i32 0, i32 6, !dbg !1621
  store i32 %274, i32* %276, align 8, !dbg !1622
  %277 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1623
  %278 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %277, i32 0, i32 16, !dbg !1623
  %279 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %278) #10, !dbg !1623
  %280 = load i64, i64* %12, align 8, !dbg !1624
  store i64 %280, i64* %2, align 8, !dbg !1625
  br label %286, !dbg !1625

281:                                              ; preds = %266
  br label %282, !dbg !1626

282:                                              ; preds = %281, %251
  %283 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1627
  %284 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %283, i32 0, i32 16, !dbg !1627
  %285 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %284) #10, !dbg !1627
  store i64 1, i64* %2, align 8, !dbg !1628
  br label %286, !dbg !1628

286:                                              ; preds = %282, %272, %241, %160, %33
  %287 = load i64, i64* %2, align 8, !dbg !1629
  ret i64 %287, !dbg !1629
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mqtt_ping(%struct.mqtt_client.7* %0) #0 !dbg !1630 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mqtt_client.7*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %3, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1633, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %5, metadata !1635, metadata !DIExpression()), !dbg !1636
  %6 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1637
  %7 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %6, i32 0, i32 6, !dbg !1637
  %8 = load i32, i32* %7, align 8, !dbg !1637
  %9 = icmp slt i32 %8, 0, !dbg !1637
  br i1 %9, label %10, label %14, !dbg !1639

10:                                               ; preds = %1
  %11 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1640
  %12 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %11, i32 0, i32 6, !dbg !1640
  %13 = load i32, i32* %12, align 8, !dbg !1640
  store i32 %13, i32* %2, align 4, !dbg !1640
  br label %73, !dbg !1640

14:                                               ; preds = %1
  %15 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1639
  %16 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %15, i32 0, i32 17, !dbg !1639
  %17 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %16, i32 0, i32 2, !dbg !1639
  %18 = load i8*, i8** %17, align 8, !dbg !1639
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1639
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 17, !dbg !1639
  %21 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %20, i32 0, i32 3, !dbg !1639
  %22 = load i64, i64* %21, align 8, !dbg !1639
  %23 = call i64 @mqtt_pack_ping_request(i8* %18, i64 %22), !dbg !1639
  store i64 %23, i64* %4, align 8, !dbg !1639
  %24 = load i64, i64* %4, align 8, !dbg !1642
  %25 = icmp slt i64 %24, 0, !dbg !1642
  br i1 %25, label %26, label %33, !dbg !1639

26:                                               ; preds = %14
  %27 = load i64, i64* %4, align 8, !dbg !1644
  %28 = trunc i64 %27 to i32, !dbg !1644
  %29 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1644
  %30 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %29, i32 0, i32 6, !dbg !1644
  store i32 %28, i32* %30, align 8, !dbg !1644
  %31 = load i64, i64* %4, align 8, !dbg !1644
  %32 = trunc i64 %31 to i32, !dbg !1644
  store i32 %32, i32* %2, align 4, !dbg !1644
  br label %73, !dbg !1644

33:                                               ; preds = %14
  %34 = load i64, i64* %4, align 8, !dbg !1646
  %35 = icmp eq i64 %34, 0, !dbg !1646
  br i1 %35, label %36, label %65, !dbg !1642

36:                                               ; preds = %33
  %37 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1648
  %38 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %37, i32 0, i32 17, !dbg !1648
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %38), !dbg !1648
  %39 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1648
  %40 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %39, i32 0, i32 17, !dbg !1648
  %41 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %40, i32 0, i32 2, !dbg !1648
  %42 = load i8*, i8** %41, align 8, !dbg !1648
  %43 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1648
  %44 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %43, i32 0, i32 17, !dbg !1648
  %45 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %44, i32 0, i32 3, !dbg !1648
  %46 = load i64, i64* %45, align 8, !dbg !1648
  %47 = call i64 @mqtt_pack_ping_request(i8* %42, i64 %46), !dbg !1648
  store i64 %47, i64* %4, align 8, !dbg !1648
  %48 = load i64, i64* %4, align 8, !dbg !1650
  %49 = icmp slt i64 %48, 0, !dbg !1650
  br i1 %49, label %50, label %57, !dbg !1648

50:                                               ; preds = %36
  %51 = load i64, i64* %4, align 8, !dbg !1652
  %52 = trunc i64 %51 to i32, !dbg !1652
  %53 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1652
  %54 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %53, i32 0, i32 6, !dbg !1652
  store i32 %52, i32* %54, align 8, !dbg !1652
  %55 = load i64, i64* %4, align 8, !dbg !1652
  %56 = trunc i64 %55 to i32, !dbg !1652
  store i32 %56, i32* %2, align 4, !dbg !1652
  br label %73, !dbg !1652

57:                                               ; preds = %36
  %58 = load i64, i64* %4, align 8, !dbg !1654
  %59 = icmp eq i64 %58, 0, !dbg !1654
  br i1 %59, label %60, label %63, !dbg !1650

60:                                               ; preds = %57
  %61 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1656
  %62 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %61, i32 0, i32 6, !dbg !1656
  store i32 -2147483632, i32* %62, align 8, !dbg !1656
  store i32 -2147483632, i32* %2, align 4, !dbg !1656
  br label %73, !dbg !1656

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  br label %65, !dbg !1648

65:                                               ; preds = %64, %33
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1639
  %68 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %67, i32 0, i32 17, !dbg !1639
  %69 = load i64, i64* %4, align 8, !dbg !1639
  %70 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %68, i64 %69), !dbg !1639
  store %struct.mqtt_queued_message* %70, %struct.mqtt_queued_message** %5, align 8, !dbg !1639
  %71 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %5, align 8, !dbg !1658
  %72 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %71, i32 0, i32 4, !dbg !1659
  store i32 12, i32* %72, align 8, !dbg !1660
  store i32 1, i32* %2, align 4, !dbg !1661
  br label %73, !dbg !1661

73:                                               ; preds = %66, %60, %50, %26, %10
  %74 = load i32, i32* %2, align 4, !dbg !1662
  ret i32 %74, !dbg !1662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_ping_request(i8* %0, i64 %1) #0 !dbg !1663 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_fixed_header, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1666, metadata !DIExpression()), !dbg !1667
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1668, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %5, metadata !1670, metadata !DIExpression()), !dbg !1671
  %6 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 0, !dbg !1672
  store i32 12, i32* %6, align 4, !dbg !1673
  %7 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 1, !dbg !1674
  %8 = load i8, i8* %7, align 4, !dbg !1675
  %9 = and i8 %8, -16, !dbg !1675
  store i8 %9, i8* %7, align 4, !dbg !1675
  %10 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 2, !dbg !1676
  store i32 0, i32* %10, align 4, !dbg !1677
  %11 = load i8*, i8** %3, align 8, !dbg !1678
  %12 = load i64, i64* %4, align 8, !dbg !1679
  %13 = call i64 @mqtt_pack_fixed_header(i8* %11, i64 %12, %struct.mqtt_fixed_header* %5), !dbg !1680
  ret i64 %13, !dbg !1681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mqtt_mq_clean(%struct.mqtt_message_queue* %0) #0 !dbg !1682 {
  %2 = alloca %struct.mqtt_message_queue*, align 8
  %3 = alloca %struct.mqtt_queued_message*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mqtt_message_queue* %0, %struct.mqtt_message_queue** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_message_queue** %2, metadata !1686, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %3, metadata !1688, metadata !DIExpression()), !dbg !1689
  %8 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1690
  %9 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %8, i32 0, i32 1, !dbg !1690
  %10 = load i8*, i8** %9, align 8, !dbg !1690
  %11 = bitcast i8* %10 to %struct.mqtt_queued_message*, !dbg !1690
  %12 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %11, i64 -1, !dbg !1690
  %13 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %12, i64 0, !dbg !1690
  store %struct.mqtt_queued_message* %13, %struct.mqtt_queued_message** %3, align 8, !dbg !1692
  br label %14, !dbg !1693

14:                                               ; preds = %27, %1
  %15 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1694
  %16 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1696
  %17 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %16, i32 0, i32 4, !dbg !1697
  %18 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %17, align 8, !dbg !1697
  %19 = icmp uge %struct.mqtt_queued_message* %15, %18, !dbg !1698
  br i1 %19, label %20, label %30, !dbg !1699

20:                                               ; preds = %14
  %21 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1700
  %22 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %21, i32 0, i32 2, !dbg !1703
  %23 = load i32, i32* %22, align 8, !dbg !1703
  %24 = icmp ne i32 %23, 2, !dbg !1704
  br i1 %24, label %25, label %26, !dbg !1705

25:                                               ; preds = %20
  br label %30, !dbg !1706

26:                                               ; preds = %20
  br label %27, !dbg !1707

27:                                               ; preds = %26
  %28 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1708
  %29 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %28, i32 -1, !dbg !1708
  store %struct.mqtt_queued_message* %29, %struct.mqtt_queued_message** %3, align 8, !dbg !1708
  br label %14, !dbg !1709, !llvm.loop !1710

30:                                               ; preds = %25, %14
  %31 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1712
  %32 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1714
  %33 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %32, i32 0, i32 4, !dbg !1715
  %34 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %33, align 8, !dbg !1715
  %35 = icmp ult %struct.mqtt_queued_message* %31, %34, !dbg !1716
  br i1 %35, label %36, label %74, !dbg !1717

36:                                               ; preds = %30
  %37 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1718
  %38 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %37, i32 0, i32 0, !dbg !1720
  %39 = load i8*, i8** %38, align 8, !dbg !1720
  %40 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1721
  %41 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %40, i32 0, i32 2, !dbg !1722
  store i8* %39, i8** %41, align 8, !dbg !1723
  %42 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1724
  %43 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %42, i32 0, i32 1, !dbg !1725
  %44 = load i8*, i8** %43, align 8, !dbg !1725
  %45 = bitcast i8* %44 to %struct.mqtt_queued_message*, !dbg !1724
  %46 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1726
  %47 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %46, i32 0, i32 4, !dbg !1727
  store %struct.mqtt_queued_message* %45, %struct.mqtt_queued_message** %47, align 8, !dbg !1728
  %48 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1729
  %49 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %48, i32 0, i32 2, !dbg !1729
  %50 = load i8*, i8** %49, align 8, !dbg !1729
  %51 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1729
  %52 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %51, i32 0, i32 4, !dbg !1729
  %53 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %52, align 8, !dbg !1729
  %54 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %53, i64 -1, !dbg !1729
  %55 = bitcast %struct.mqtt_queued_message* %54 to i8*, !dbg !1729
  %56 = icmp uge i8* %50, %55, !dbg !1729
  br i1 %56, label %57, label %58, !dbg !1729

57:                                               ; preds = %36
  br label %70, !dbg !1729

58:                                               ; preds = %36
  %59 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1729
  %60 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %59, i32 0, i32 4, !dbg !1729
  %61 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %60, align 8, !dbg !1729
  %62 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %61, i64 -1, !dbg !1729
  %63 = bitcast %struct.mqtt_queued_message* %62 to i8*, !dbg !1729
  %64 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1729
  %65 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %64, i32 0, i32 2, !dbg !1729
  %66 = load i8*, i8** %65, align 8, !dbg !1729
  %67 = ptrtoint i8* %63 to i64, !dbg !1729
  %68 = ptrtoint i8* %66 to i64, !dbg !1729
  %69 = sub i64 %67, %68, !dbg !1729
  br label %70, !dbg !1729

70:                                               ; preds = %58, %57
  %71 = phi i64 [ 0, %57 ], [ %69, %58 ], !dbg !1729
  %72 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1730
  %73 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %72, i32 0, i32 3, !dbg !1731
  store i64 %71, i64* %73, align 8, !dbg !1732
  br label %201, !dbg !1733

74:                                               ; preds = %30
  %75 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1734
  %76 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1736
  %77 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %76, i32 0, i32 1, !dbg !1736
  %78 = load i8*, i8** %77, align 8, !dbg !1736
  %79 = bitcast i8* %78 to %struct.mqtt_queued_message*, !dbg !1736
  %80 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %79, i64 -1, !dbg !1736
  %81 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %80, i64 0, !dbg !1736
  %82 = icmp eq %struct.mqtt_queued_message* %75, %81, !dbg !1737
  br i1 %82, label %83, label %84, !dbg !1738

83:                                               ; preds = %74
  br label %201, !dbg !1739

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1741, metadata !DIExpression()), !dbg !1743
  %86 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1744
  %87 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %86, i32 0, i32 2, !dbg !1745
  %88 = load i8*, i8** %87, align 8, !dbg !1745
  %89 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1746
  %90 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %89, i32 0, i32 0, !dbg !1747
  %91 = load i8*, i8** %90, align 8, !dbg !1747
  %92 = ptrtoint i8* %88 to i64, !dbg !1748
  %93 = ptrtoint i8* %91 to i64, !dbg !1748
  %94 = sub i64 %92, %93, !dbg !1748
  store i64 %94, i64* %4, align 8, !dbg !1743
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1749, metadata !DIExpression()), !dbg !1750
  %95 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1751
  %96 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %95, i32 0, i32 0, !dbg !1752
  %97 = load i8*, i8** %96, align 8, !dbg !1752
  %98 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1753
  %99 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %98, i32 0, i32 0, !dbg !1754
  %100 = load i8*, i8** %99, align 8, !dbg !1754
  %101 = ptrtoint i8* %97 to i64, !dbg !1755
  %102 = ptrtoint i8* %100 to i64, !dbg !1755
  %103 = sub i64 %101, %102, !dbg !1755
  store i64 %103, i64* %5, align 8, !dbg !1750
  %104 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1756
  %105 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %104, i32 0, i32 0, !dbg !1757
  %106 = load i8*, i8** %105, align 8, !dbg !1757
  %107 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1758
  %108 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %107, i32 0, i32 0, !dbg !1759
  %109 = load i8*, i8** %108, align 8, !dbg !1759
  %110 = load i64, i64* %4, align 8, !dbg !1760
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %106, i8* align 1 %109, i64 %110, i1 false), !dbg !1761
  %111 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1762
  %112 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %111, i32 0, i32 0, !dbg !1763
  %113 = load i8*, i8** %112, align 8, !dbg !1763
  %114 = load i64, i64* %4, align 8, !dbg !1764
  %115 = getelementptr inbounds i8, i8* %113, i64 %114, !dbg !1765
  %116 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1766
  %117 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %116, i32 0, i32 2, !dbg !1767
  store i8* %115, i8** %117, align 8, !dbg !1768
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1769, metadata !DIExpression()), !dbg !1771
  %118 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1772
  %119 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1773
  %120 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %119, i32 0, i32 4, !dbg !1774
  %121 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %120, align 8, !dbg !1774
  %122 = ptrtoint %struct.mqtt_queued_message* %118 to i64, !dbg !1775
  %123 = ptrtoint %struct.mqtt_queued_message* %121 to i64, !dbg !1775
  %124 = sub i64 %122, %123, !dbg !1775
  %125 = sdiv exact i64 %124, 40, !dbg !1775
  store i64 %125, i64* %6, align 8, !dbg !1771
  %126 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1776
  %127 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %126, i32 0, i32 1, !dbg !1776
  %128 = load i8*, i8** %127, align 8, !dbg !1776
  %129 = bitcast i8* %128 to %struct.mqtt_queued_message*, !dbg !1776
  %130 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %129, i64 -1, !dbg !1776
  %131 = load i64, i64* %6, align 8, !dbg !1776
  %132 = sub i64 0, %131, !dbg !1776
  %133 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %130, i64 %132, !dbg !1776
  %134 = bitcast %struct.mqtt_queued_message* %133 to i8*, !dbg !1777
  %135 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1778
  %136 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %135, i32 0, i32 4, !dbg !1779
  %137 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %136, align 8, !dbg !1779
  %138 = bitcast %struct.mqtt_queued_message* %137 to i8*, !dbg !1777
  %139 = load i64, i64* %6, align 8, !dbg !1780
  %140 = add nsw i64 %139, 1, !dbg !1781
  %141 = mul i64 40, %140, !dbg !1782
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %138, i64 %141, i1 false), !dbg !1777
  %142 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1783
  %143 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %142, i32 0, i32 1, !dbg !1783
  %144 = load i8*, i8** %143, align 8, !dbg !1783
  %145 = bitcast i8* %144 to %struct.mqtt_queued_message*, !dbg !1783
  %146 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %145, i64 -1, !dbg !1783
  %147 = load i64, i64* %6, align 8, !dbg !1783
  %148 = sub i64 0, %147, !dbg !1783
  %149 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %146, i64 %148, !dbg !1783
  %150 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1784
  %151 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %150, i32 0, i32 4, !dbg !1785
  store %struct.mqtt_queued_message* %149, %struct.mqtt_queued_message** %151, align 8, !dbg !1786
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1787, metadata !DIExpression()), !dbg !1789
  store i64 0, i64* %7, align 8, !dbg !1789
  br label %152, !dbg !1790

152:                                              ; preds = %171, %85
  %153 = load i64, i64* %7, align 8, !dbg !1791
  %154 = load i64, i64* %6, align 8, !dbg !1794
  %155 = add nsw i64 %154, 1, !dbg !1795
  %156 = icmp slt i64 %153, %155, !dbg !1796
  br i1 %156, label %157, label %174, !dbg !1797

157:                                              ; preds = %152
  %158 = load i64, i64* %5, align 8, !dbg !1798
  %159 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1800
  %160 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %159, i32 0, i32 1, !dbg !1800
  %161 = load i8*, i8** %160, align 8, !dbg !1800
  %162 = bitcast i8* %161 to %struct.mqtt_queued_message*, !dbg !1800
  %163 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %162, i64 -1, !dbg !1800
  %164 = load i64, i64* %7, align 8, !dbg !1800
  %165 = sub i64 0, %164, !dbg !1800
  %166 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %163, i64 %165, !dbg !1800
  %167 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %166, i32 0, i32 0, !dbg !1801
  %168 = load i8*, i8** %167, align 8, !dbg !1802
  %169 = sub i64 0, %158, !dbg !1802
  %170 = getelementptr inbounds i8, i8* %168, i64 %169, !dbg !1802
  store i8* %170, i8** %167, align 8, !dbg !1802
  br label %171, !dbg !1803

171:                                              ; preds = %157
  %172 = load i64, i64* %7, align 8, !dbg !1804
  %173 = add nsw i64 %172, 1, !dbg !1804
  store i64 %173, i64* %7, align 8, !dbg !1804
  br label %152, !dbg !1805, !llvm.loop !1806

174:                                              ; preds = %152
  %175 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1808
  %176 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %175, i32 0, i32 2, !dbg !1808
  %177 = load i8*, i8** %176, align 8, !dbg !1808
  %178 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1808
  %179 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %178, i32 0, i32 4, !dbg !1808
  %180 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %179, align 8, !dbg !1808
  %181 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %180, i64 -1, !dbg !1808
  %182 = bitcast %struct.mqtt_queued_message* %181 to i8*, !dbg !1808
  %183 = icmp uge i8* %177, %182, !dbg !1808
  br i1 %183, label %184, label %185, !dbg !1808

184:                                              ; preds = %174
  br label %197, !dbg !1808

185:                                              ; preds = %174
  %186 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1808
  %187 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %186, i32 0, i32 4, !dbg !1808
  %188 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %187, align 8, !dbg !1808
  %189 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %188, i64 -1, !dbg !1808
  %190 = bitcast %struct.mqtt_queued_message* %189 to i8*, !dbg !1808
  %191 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1808
  %192 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %191, i32 0, i32 2, !dbg !1808
  %193 = load i8*, i8** %192, align 8, !dbg !1808
  %194 = ptrtoint i8* %190 to i64, !dbg !1808
  %195 = ptrtoint i8* %193 to i64, !dbg !1808
  %196 = sub i64 %194, %195, !dbg !1808
  br label %197, !dbg !1808

197:                                              ; preds = %185, %184
  %198 = phi i64 [ 0, %184 ], [ %196, %185 ], !dbg !1808
  %199 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1809
  %200 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %199, i32 0, i32 3, !dbg !1810
  store i64 %198, i64* %200, align 8, !dbg !1811
  br label %201, !dbg !1812

201:                                              ; preds = %197, %83, %70
  ret void, !dbg !1812
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %0, i64 %1) #0 !dbg !1813 {
  %3 = alloca %struct.mqtt_message_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.mqtt_message_queue* %0, %struct.mqtt_message_queue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_message_queue** %3, metadata !1816, metadata !DIExpression()), !dbg !1817
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1818, metadata !DIExpression()), !dbg !1819
  %5 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1820
  %6 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %5, i32 0, i32 4, !dbg !1821
  %7 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %6, align 8, !dbg !1822
  %8 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %7, i32 -1, !dbg !1822
  store %struct.mqtt_queued_message* %8, %struct.mqtt_queued_message** %6, align 8, !dbg !1822
  %9 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1823
  %10 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %9, i32 0, i32 2, !dbg !1824
  %11 = load i8*, i8** %10, align 8, !dbg !1824
  %12 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1825
  %13 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %12, i32 0, i32 4, !dbg !1826
  %14 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %13, align 8, !dbg !1826
  %15 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %14, i32 0, i32 0, !dbg !1827
  store i8* %11, i8** %15, align 8, !dbg !1828
  %16 = load i64, i64* %4, align 8, !dbg !1829
  %17 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1830
  %18 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %17, i32 0, i32 4, !dbg !1831
  %19 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %18, align 8, !dbg !1831
  %20 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %19, i32 0, i32 1, !dbg !1832
  store i64 %16, i64* %20, align 8, !dbg !1833
  %21 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1834
  %22 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %21, i32 0, i32 4, !dbg !1835
  %23 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %22, align 8, !dbg !1835
  %24 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %23, i32 0, i32 2, !dbg !1836
  store i32 0, i32* %24, align 8, !dbg !1837
  %25 = load i64, i64* %4, align 8, !dbg !1838
  %26 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1839
  %27 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %26, i32 0, i32 2, !dbg !1840
  %28 = load i8*, i8** %27, align 8, !dbg !1841
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1841
  store i8* %29, i8** %27, align 8, !dbg !1841
  %30 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1842
  %31 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %30, i32 0, i32 2, !dbg !1842
  %32 = load i8*, i8** %31, align 8, !dbg !1842
  %33 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1842
  %34 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %33, i32 0, i32 4, !dbg !1842
  %35 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %34, align 8, !dbg !1842
  %36 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %35, i64 -1, !dbg !1842
  %37 = bitcast %struct.mqtt_queued_message* %36 to i8*, !dbg !1842
  %38 = icmp uge i8* %32, %37, !dbg !1842
  br i1 %38, label %39, label %40, !dbg !1842

39:                                               ; preds = %2
  br label %52, !dbg !1842

40:                                               ; preds = %2
  %41 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1842
  %42 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %41, i32 0, i32 4, !dbg !1842
  %43 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %42, align 8, !dbg !1842
  %44 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %43, i64 -1, !dbg !1842
  %45 = bitcast %struct.mqtt_queued_message* %44 to i8*, !dbg !1842
  %46 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1842
  %47 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %46, i32 0, i32 2, !dbg !1842
  %48 = load i8*, i8** %47, align 8, !dbg !1842
  %49 = ptrtoint i8* %45 to i64, !dbg !1842
  %50 = ptrtoint i8* %48 to i64, !dbg !1842
  %51 = sub i64 %49, %50, !dbg !1842
  br label %52, !dbg !1842

52:                                               ; preds = %40, %39
  %53 = phi i64 [ 0, %39 ], [ %51, %40 ], !dbg !1842
  %54 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1843
  %55 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %54, i32 0, i32 3, !dbg !1844
  store i64 %53, i64* %55, align 8, !dbg !1845
  %56 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1846
  %57 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %56, i32 0, i32 4, !dbg !1847
  %58 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %57, align 8, !dbg !1847
  ret %struct.mqtt_queued_message* %58, !dbg !1848
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_fixed_header(i8* %0, i64 %1, %struct.mqtt_fixed_header* %2) #0 !dbg !1849 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mqtt_fixed_header*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1854, metadata !DIExpression()), !dbg !1855
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1856, metadata !DIExpression()), !dbg !1857
  store %struct.mqtt_fixed_header* %2, %struct.mqtt_fixed_header** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header** %7, metadata !1858, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1860, metadata !DIExpression()), !dbg !1861
  %11 = load i8*, i8** %5, align 8, !dbg !1862
  store i8* %11, i8** %8, align 8, !dbg !1861
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1863, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1865, metadata !DIExpression()), !dbg !1866
  %12 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1867
  %13 = icmp eq %struct.mqtt_fixed_header* %12, null, !dbg !1869
  br i1 %13, label %17, label %14, !dbg !1870

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !1871
  %16 = icmp eq i8* %15, null, !dbg !1872
  br i1 %16, label %17, label %18, !dbg !1873

17:                                               ; preds = %14, %3
  store i64 -2147483647, i64* %4, align 8, !dbg !1874
  br label %107, !dbg !1874

18:                                               ; preds = %14
  %19 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1876
  %20 = call i64 @mqtt_fixed_header_rule_violation(%struct.mqtt_fixed_header* %19), !dbg !1877
  store i64 %20, i64* %9, align 8, !dbg !1878
  %21 = load i64, i64* %9, align 8, !dbg !1879
  %22 = icmp ne i64 %21, 0, !dbg !1879
  br i1 %22, label %23, label %25, !dbg !1881

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8, !dbg !1882
  store i64 %24, i64* %4, align 8, !dbg !1884
  br label %107, !dbg !1884

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8, !dbg !1885
  %27 = icmp eq i64 %26, 0, !dbg !1887
  br i1 %27, label %28, label %29, !dbg !1888

28:                                               ; preds = %25
  store i64 0, i64* %4, align 8, !dbg !1889
  br label %107, !dbg !1889

29:                                               ; preds = %25
  %30 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1890
  %31 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %30, i32 0, i32 0, !dbg !1891
  %32 = load i32, i32* %31, align 4, !dbg !1891
  %33 = trunc i32 %32 to i8, !dbg !1892
  %34 = zext i8 %33 to i32, !dbg !1893
  %35 = shl i32 %34, 4, !dbg !1894
  %36 = and i32 %35, 240, !dbg !1895
  %37 = trunc i32 %36 to i8, !dbg !1896
  %38 = load i8*, i8** %5, align 8, !dbg !1897
  store i8 %37, i8* %38, align 1, !dbg !1898
  %39 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1899
  %40 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %39, i32 0, i32 1, !dbg !1900
  %41 = load i8, i8* %40, align 4, !dbg !1900
  %42 = and i8 %41, 15, !dbg !1900
  %43 = zext i8 %42 to i32, !dbg !1900
  %44 = trunc i32 %43 to i8, !dbg !1901
  %45 = zext i8 %44 to i32, !dbg !1902
  %46 = and i32 %45, 15, !dbg !1903
  %47 = load i8*, i8** %5, align 8, !dbg !1904
  %48 = load i8, i8* %47, align 1, !dbg !1905
  %49 = zext i8 %48 to i32, !dbg !1905
  %50 = or i32 %49, %46, !dbg !1905
  %51 = trunc i32 %50 to i8, !dbg !1905
  store i8 %51, i8* %47, align 1, !dbg !1905
  %52 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1906
  %53 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %52, i32 0, i32 2, !dbg !1907
  %54 = load i32, i32* %53, align 4, !dbg !1907
  store i32 %54, i32* %10, align 4, !dbg !1908
  %55 = load i32, i32* %10, align 4, !dbg !1909
  %56 = icmp uge i32 %55, 268435456, !dbg !1911
  br i1 %56, label %57, label %58, !dbg !1912

57:                                               ; preds = %29
  store i64 -2147483622, i64* %4, align 8, !dbg !1913
  br label %107, !dbg !1913

58:                                               ; preds = %29
  br label %59, !dbg !1914

59:                                               ; preds = %83, %58
  %60 = load i64, i64* %6, align 8, !dbg !1915
  %61 = add i64 %60, -1, !dbg !1915
  store i64 %61, i64* %6, align 8, !dbg !1915
  %62 = load i8*, i8** %5, align 8, !dbg !1917
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !1917
  store i8* %63, i8** %5, align 8, !dbg !1917
  %64 = load i64, i64* %6, align 8, !dbg !1918
  %65 = icmp eq i64 %64, 0, !dbg !1920
  br i1 %65, label %66, label %67, !dbg !1921

66:                                               ; preds = %59
  store i64 0, i64* %4, align 8, !dbg !1922
  br label %107, !dbg !1922

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4, !dbg !1923
  %69 = and i32 %68, 127, !dbg !1924
  %70 = trunc i32 %69 to i8, !dbg !1923
  %71 = load i8*, i8** %5, align 8, !dbg !1925
  store i8 %70, i8* %71, align 1, !dbg !1926
  %72 = load i32, i32* %10, align 4, !dbg !1927
  %73 = icmp ugt i32 %72, 127, !dbg !1929
  br i1 %73, label %74, label %80, !dbg !1930

74:                                               ; preds = %67
  %75 = load i8*, i8** %5, align 8, !dbg !1931
  %76 = load i8, i8* %75, align 1, !dbg !1932
  %77 = zext i8 %76 to i32, !dbg !1932
  %78 = or i32 %77, 128, !dbg !1932
  %79 = trunc i32 %78 to i8, !dbg !1932
  store i8 %79, i8* %75, align 1, !dbg !1932
  br label %80, !dbg !1933

80:                                               ; preds = %74, %67
  %81 = load i32, i32* %10, align 4, !dbg !1934
  %82 = lshr i32 %81, 7, !dbg !1935
  store i32 %82, i32* %10, align 4, !dbg !1936
  br label %83, !dbg !1937

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8, !dbg !1938
  %85 = load i8, i8* %84, align 1, !dbg !1939
  %86 = zext i8 %85 to i32, !dbg !1939
  %87 = and i32 %86, 128, !dbg !1940
  %88 = icmp ne i32 %87, 0, !dbg !1937
  br i1 %88, label %59, label %89, !dbg !1937, !llvm.loop !1941

89:                                               ; preds = %83
  %90 = load i64, i64* %6, align 8, !dbg !1943
  %91 = add i64 %90, -1, !dbg !1943
  store i64 %91, i64* %6, align 8, !dbg !1943
  %92 = load i8*, i8** %5, align 8, !dbg !1944
  %93 = getelementptr inbounds i8, i8* %92, i32 1, !dbg !1944
  store i8* %93, i8** %5, align 8, !dbg !1944
  %94 = load i64, i64* %6, align 8, !dbg !1945
  %95 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1947
  %96 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %95, i32 0, i32 2, !dbg !1948
  %97 = load i32, i32* %96, align 4, !dbg !1948
  %98 = zext i32 %97 to i64, !dbg !1947
  %99 = icmp ult i64 %94, %98, !dbg !1949
  br i1 %99, label %100, label %101, !dbg !1950

100:                                              ; preds = %89
  store i64 0, i64* %4, align 8, !dbg !1951
  br label %107, !dbg !1951

101:                                              ; preds = %89
  %102 = load i8*, i8** %5, align 8, !dbg !1953
  %103 = load i8*, i8** %8, align 8, !dbg !1954
  %104 = ptrtoint i8* %102 to i64, !dbg !1955
  %105 = ptrtoint i8* %103 to i64, !dbg !1955
  %106 = sub i64 %104, %105, !dbg !1955
  store i64 %106, i64* %4, align 8, !dbg !1956
  br label %107, !dbg !1956

107:                                              ; preds = %101, %100, %66, %57, %28, %23, %17
  %108 = load i64, i64* %4, align 8, !dbg !1957
  ret i64 %108, !dbg !1957
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mqtt_fixed_header_rule_violation(%struct.mqtt_fixed_header* %0) #0 !dbg !1958 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mqtt_fixed_header*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.mqtt_fixed_header* %0, %struct.mqtt_fixed_header** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header** %3, metadata !1961, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1963, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1965, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1967, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1969, metadata !DIExpression()), !dbg !1970
  %8 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %3, align 8, !dbg !1971
  %9 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %8, i32 0, i32 0, !dbg !1972
  %10 = load i32, i32* %9, align 4, !dbg !1972
  %11 = trunc i32 %10 to i8, !dbg !1971
  store i8 %11, i8* %4, align 1, !dbg !1973
  %12 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %3, align 8, !dbg !1974
  %13 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %12, i32 0, i32 1, !dbg !1975
  %14 = load i8, i8* %13, align 4, !dbg !1975
  %15 = and i8 %14, 15, !dbg !1975
  %16 = zext i8 %15 to i32, !dbg !1975
  %17 = trunc i32 %16 to i8, !dbg !1974
  store i8 %17, i8* %5, align 1, !dbg !1976
  %18 = load i8, i8* %4, align 1, !dbg !1977
  %19 = zext i8 %18 to i64, !dbg !1978
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mqtt_fixed_header_rules, i32 0, i32 1), i64 0, i64 %19, !dbg !1978
  %21 = load i8, i8* %20, align 1, !dbg !1978
  store i8 %21, i8* %6, align 1, !dbg !1979
  %22 = load i8, i8* %4, align 1, !dbg !1980
  %23 = zext i8 %22 to i64, !dbg !1981
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mqtt_fixed_header_rules, i32 0, i32 2), i64 0, i64 %23, !dbg !1981
  %25 = load i8, i8* %24, align 1, !dbg !1981
  store i8 %25, i8* %7, align 1, !dbg !1982
  %26 = load i8, i8* %4, align 1, !dbg !1983
  %27 = zext i8 %26 to i64, !dbg !1985
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mqtt_fixed_header_rules, i32 0, i32 0), i64 0, i64 %27, !dbg !1985
  %29 = load i8, i8* %28, align 1, !dbg !1985
  %30 = icmp ne i8 %29, 0, !dbg !1985
  br i1 %30, label %32, label %31, !dbg !1986

31:                                               ; preds = %1
  store i64 -2147483646, i64* %2, align 8, !dbg !1987
  br label %44, !dbg !1987

32:                                               ; preds = %1
  %33 = load i8, i8* %5, align 1, !dbg !1989
  %34 = zext i8 %33 to i32, !dbg !1989
  %35 = load i8, i8* %6, align 1, !dbg !1989
  %36 = zext i8 %35 to i32, !dbg !1989
  %37 = xor i32 %34, %36, !dbg !1989
  %38 = load i8, i8* %7, align 1, !dbg !1989
  %39 = zext i8 %38 to i32, !dbg !1989
  %40 = and i32 %37, %39, !dbg !1989
  %41 = icmp ne i32 %40, 0, !dbg !1989
  br i1 %41, label %42, label %43, !dbg !1991

42:                                               ; preds = %32
  store i64 -2147483645, i64* %2, align 8, !dbg !1992
  br label %44, !dbg !1992

43:                                               ; preds = %32
  store i64 0, i64* %2, align 8, !dbg !1994
  br label %44, !dbg !1994

44:                                               ; preds = %43, %42, %31
  %45 = load i64, i64* %2, align 8, !dbg !1995
  ret i64 %45, !dbg !1995
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_response(%struct.mqtt_response* %0, i8* %1, i64 %2) #0 !dbg !1996 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_response*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.mqtt_response* %0, %struct.mqtt_response** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %5, metadata !2000, metadata !DIExpression()), !dbg !2001
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2002, metadata !DIExpression()), !dbg !2003
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2004, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2006, metadata !DIExpression()), !dbg !2008
  %10 = load i8*, i8** %6, align 8, !dbg !2009
  store i8* %10, i8** %8, align 8, !dbg !2008
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2010, metadata !DIExpression()), !dbg !2011
  %11 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2012
  %12 = load i8*, i8** %6, align 8, !dbg !2013
  %13 = load i64, i64* %7, align 8, !dbg !2014
  %14 = call i64 @mqtt_unpack_fixed_header(%struct.mqtt_response* %11, i8* %12, i64 %13), !dbg !2015
  store i64 %14, i64* %9, align 8, !dbg !2011
  %15 = load i64, i64* %9, align 8, !dbg !2016
  %16 = icmp sle i64 %15, 0, !dbg !2018
  br i1 %16, label %17, label %19, !dbg !2019

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8, !dbg !2020
  store i64 %18, i64* %4, align 8, !dbg !2021
  br label %77, !dbg !2021

19:                                               ; preds = %3
  %20 = load i64, i64* %9, align 8, !dbg !2022
  %21 = load i8*, i8** %6, align 8, !dbg !2023
  %22 = getelementptr inbounds i8, i8* %21, i64 %20, !dbg !2023
  store i8* %22, i8** %6, align 8, !dbg !2023
  br label %23

23:                                               ; preds = %19
  %24 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2024
  %25 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %24, i32 0, i32 0, !dbg !2025
  %26 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %25, i32 0, i32 0, !dbg !2026
  %27 = load i32, i32* %26, align 8, !dbg !2026
  switch i32 %27, label %62 [
    i32 2, label %28
    i32 3, label %32
    i32 4, label %36
    i32 5, label %40
    i32 6, label %44
    i32 7, label %48
    i32 9, label %52
    i32 11, label %56
    i32 13, label %60
  ], !dbg !2027

28:                                               ; preds = %23
  %29 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2028
  %30 = load i8*, i8** %6, align 8, !dbg !2030
  %31 = call i64 @mqtt_unpack_connack_response(%struct.mqtt_response* %29, i8* %30), !dbg !2031
  store i64 %31, i64* %9, align 8, !dbg !2032
  br label %63, !dbg !2033

32:                                               ; preds = %23
  %33 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2034
  %34 = load i8*, i8** %6, align 8, !dbg !2035
  %35 = call i64 @mqtt_unpack_publish_response(%struct.mqtt_response* %33, i8* %34), !dbg !2036
  store i64 %35, i64* %9, align 8, !dbg !2037
  br label %63, !dbg !2038

36:                                               ; preds = %23
  %37 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2039
  %38 = load i8*, i8** %6, align 8, !dbg !2040
  %39 = call i64 @mqtt_unpack_pubxxx_response(%struct.mqtt_response* %37, i8* %38), !dbg !2041
  store i64 %39, i64* %9, align 8, !dbg !2042
  br label %63, !dbg !2043

40:                                               ; preds = %23
  %41 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2044
  %42 = load i8*, i8** %6, align 8, !dbg !2045
  %43 = call i64 @mqtt_unpack_pubxxx_response(%struct.mqtt_response* %41, i8* %42), !dbg !2046
  store i64 %43, i64* %9, align 8, !dbg !2047
  br label %63, !dbg !2048

44:                                               ; preds = %23
  %45 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2049
  %46 = load i8*, i8** %6, align 8, !dbg !2050
  %47 = call i64 @mqtt_unpack_pubxxx_response(%struct.mqtt_response* %45, i8* %46), !dbg !2051
  store i64 %47, i64* %9, align 8, !dbg !2052
  br label %63, !dbg !2053

48:                                               ; preds = %23
  %49 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2054
  %50 = load i8*, i8** %6, align 8, !dbg !2055
  %51 = call i64 @mqtt_unpack_pubxxx_response(%struct.mqtt_response* %49, i8* %50), !dbg !2056
  store i64 %51, i64* %9, align 8, !dbg !2057
  br label %63, !dbg !2058

52:                                               ; preds = %23
  %53 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2059
  %54 = load i8*, i8** %6, align 8, !dbg !2060
  %55 = call i64 @mqtt_unpack_suback_response(%struct.mqtt_response* %53, i8* %54), !dbg !2061
  store i64 %55, i64* %9, align 8, !dbg !2062
  br label %63, !dbg !2063

56:                                               ; preds = %23
  %57 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2064
  %58 = load i8*, i8** %6, align 8, !dbg !2065
  %59 = call i64 @mqtt_unpack_unsuback_response(%struct.mqtt_response* %57, i8* %58), !dbg !2066
  store i64 %59, i64* %9, align 8, !dbg !2067
  br label %63, !dbg !2068

60:                                               ; preds = %23
  %61 = load i64, i64* %9, align 8, !dbg !2069
  store i64 %61, i64* %4, align 8, !dbg !2070
  br label %77, !dbg !2070

62:                                               ; preds = %23
  store i64 -2147483634, i64* %4, align 8, !dbg !2071
  br label %77, !dbg !2071

63:                                               ; preds = %56, %52, %48, %44, %40, %36, %32, %28
  %64 = load i64, i64* %9, align 8, !dbg !2072
  %65 = icmp slt i64 %64, 0, !dbg !2074
  br i1 %65, label %66, label %68, !dbg !2075

66:                                               ; preds = %63
  %67 = load i64, i64* %9, align 8, !dbg !2076
  store i64 %67, i64* %4, align 8, !dbg !2077
  br label %77, !dbg !2077

68:                                               ; preds = %63
  %69 = load i64, i64* %9, align 8, !dbg !2078
  %70 = load i8*, i8** %6, align 8, !dbg !2079
  %71 = getelementptr inbounds i8, i8* %70, i64 %69, !dbg !2079
  store i8* %71, i8** %6, align 8, !dbg !2079
  %72 = load i8*, i8** %6, align 8, !dbg !2080
  %73 = load i8*, i8** %8, align 8, !dbg !2081
  %74 = ptrtoint i8* %72 to i64, !dbg !2082
  %75 = ptrtoint i8* %73 to i64, !dbg !2082
  %76 = sub i64 %74, %75, !dbg !2082
  store i64 %76, i64* %4, align 8, !dbg !2083
  br label %77, !dbg !2083

77:                                               ; preds = %68, %66, %62, %60, %17
  %78 = load i64, i64* %4, align 8, !dbg !2084
  ret i64 %78, !dbg !2084
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %0, i32 %1, i16* %2) #0 !dbg !2085 {
  %4 = alloca %struct.mqtt_queued_message*, align 8
  %5 = alloca %struct.mqtt_message_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_message_queue* %0, %struct.mqtt_message_queue** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_message_queue** %5, metadata !2089, metadata !DIExpression()), !dbg !2090
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2091, metadata !DIExpression()), !dbg !2092
  store i16* %2, i16** %7, align 8
  call void @llvm.dbg.declare(metadata i16** %7, metadata !2093, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %8, metadata !2095, metadata !DIExpression()), !dbg !2096
  %9 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %5, align 8, !dbg !2097
  %10 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %9, i32 0, i32 1, !dbg !2097
  %11 = load i8*, i8** %10, align 8, !dbg !2097
  %12 = bitcast i8* %11 to %struct.mqtt_queued_message*, !dbg !2097
  %13 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %12, i64 -1, !dbg !2097
  %14 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %13, i64 0, !dbg !2097
  store %struct.mqtt_queued_message* %14, %struct.mqtt_queued_message** %8, align 8, !dbg !2099
  br label %15, !dbg !2100

15:                                               ; preds = %51, %3
  %16 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2101
  %17 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %5, align 8, !dbg !2103
  %18 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %17, i32 0, i32 4, !dbg !2104
  %19 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %18, align 8, !dbg !2104
  %20 = icmp uge %struct.mqtt_queued_message* %16, %19, !dbg !2105
  br i1 %20, label %21, label %54, !dbg !2106

21:                                               ; preds = %15
  %22 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2107
  %23 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %22, i32 0, i32 4, !dbg !2110
  %24 = load i32, i32* %23, align 8, !dbg !2110
  %25 = load i32, i32* %6, align 4, !dbg !2111
  %26 = icmp eq i32 %24, %25, !dbg !2112
  br i1 %26, label %27, label %50, !dbg !2113

27:                                               ; preds = %21
  %28 = load i16*, i16** %7, align 8, !dbg !2114
  %29 = icmp eq i16* %28, null, !dbg !2117
  br i1 %29, label %30, label %35, !dbg !2118

30:                                               ; preds = %27
  %31 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2119
  %32 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %31, i32 0, i32 2, !dbg !2120
  %33 = load i32, i32* %32, align 8, !dbg !2120
  %34 = icmp ne i32 %33, 2, !dbg !2121
  br i1 %34, label %47, label %35, !dbg !2122

35:                                               ; preds = %30, %27
  %36 = load i16*, i16** %7, align 8, !dbg !2123
  %37 = icmp ne i16* %36, null, !dbg !2124
  br i1 %37, label %38, label %49, !dbg !2125

38:                                               ; preds = %35
  %39 = load i16*, i16** %7, align 8, !dbg !2126
  %40 = load i16, i16* %39, align 2, !dbg !2127
  %41 = zext i16 %40 to i32, !dbg !2127
  %42 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2128
  %43 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %42, i32 0, i32 5, !dbg !2129
  %44 = load i16, i16* %43, align 4, !dbg !2129
  %45 = zext i16 %44 to i32, !dbg !2128
  %46 = icmp eq i32 %41, %45, !dbg !2130
  br i1 %46, label %47, label %49, !dbg !2131

47:                                               ; preds = %38, %30
  %48 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2132
  store %struct.mqtt_queued_message* %48, %struct.mqtt_queued_message** %4, align 8, !dbg !2134
  br label %55, !dbg !2134

49:                                               ; preds = %38, %35
  br label %50, !dbg !2135

50:                                               ; preds = %49, %21
  br label %51, !dbg !2136

51:                                               ; preds = %50
  %52 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2137
  %53 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %52, i32 -1, !dbg !2137
  store %struct.mqtt_queued_message* %53, %struct.mqtt_queued_message** %8, align 8, !dbg !2137
  br label %15, !dbg !2138, !llvm.loop !2139

54:                                               ; preds = %15
  store %struct.mqtt_queued_message* null, %struct.mqtt_queued_message** %4, align 8, !dbg !2141
  br label %55, !dbg !2141

55:                                               ; preds = %54, %47
  %56 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %4, align 8, !dbg !2142
  ret %struct.mqtt_queued_message* %56, !dbg !2142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_puback(%struct.mqtt_client.7* %0, i16 zeroext %1) #0 !dbg !2143 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_client.7*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %4, metadata !2146, metadata !DIExpression()), !dbg !2147
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2148, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2150, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %7, metadata !2152, metadata !DIExpression()), !dbg !2153
  %8 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2154
  %9 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %8, i32 0, i32 6, !dbg !2154
  %10 = load i32, i32* %9, align 8, !dbg !2154
  %11 = icmp slt i32 %10, 0, !dbg !2154
  br i1 %11, label %12, label %17, !dbg !2156

12:                                               ; preds = %2
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2157
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 6, !dbg !2157
  %15 = load i32, i32* %14, align 8, !dbg !2157
  %16 = sext i32 %15 to i64, !dbg !2157
  store i64 %16, i64* %3, align 8, !dbg !2157
  br label %79, !dbg !2157

17:                                               ; preds = %2
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2156
  %19 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %18, i32 0, i32 17, !dbg !2156
  %20 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %19, i32 0, i32 2, !dbg !2156
  %21 = load i8*, i8** %20, align 8, !dbg !2156
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2156
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 17, !dbg !2156
  %24 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %23, i32 0, i32 3, !dbg !2156
  %25 = load i64, i64* %24, align 8, !dbg !2156
  %26 = load i16, i16* %5, align 2, !dbg !2156
  %27 = call i64 @mqtt_pack_pubxxx_request(i8* %21, i64 %25, i32 4, i16 zeroext %26), !dbg !2156
  store i64 %27, i64* %6, align 8, !dbg !2156
  %28 = load i64, i64* %6, align 8, !dbg !2159
  %29 = icmp slt i64 %28, 0, !dbg !2159
  br i1 %29, label %30, label %36, !dbg !2156

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8, !dbg !2161
  %32 = trunc i64 %31 to i32, !dbg !2161
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2161
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 6, !dbg !2161
  store i32 %32, i32* %34, align 8, !dbg !2161
  %35 = load i64, i64* %6, align 8, !dbg !2161
  store i64 %35, i64* %3, align 8, !dbg !2161
  br label %79, !dbg !2161

36:                                               ; preds = %17
  %37 = load i64, i64* %6, align 8, !dbg !2163
  %38 = icmp eq i64 %37, 0, !dbg !2163
  br i1 %38, label %39, label %68, !dbg !2159

39:                                               ; preds = %36
  %40 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2165
  %41 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %40, i32 0, i32 17, !dbg !2165
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %41), !dbg !2165
  %42 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2165
  %43 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %42, i32 0, i32 17, !dbg !2165
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 2, !dbg !2165
  %45 = load i8*, i8** %44, align 8, !dbg !2165
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2165
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !2165
  %48 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %47, i32 0, i32 3, !dbg !2165
  %49 = load i64, i64* %48, align 8, !dbg !2165
  %50 = load i16, i16* %5, align 2, !dbg !2165
  %51 = call i64 @mqtt_pack_pubxxx_request(i8* %45, i64 %49, i32 4, i16 zeroext %50), !dbg !2165
  store i64 %51, i64* %6, align 8, !dbg !2165
  %52 = load i64, i64* %6, align 8, !dbg !2167
  %53 = icmp slt i64 %52, 0, !dbg !2167
  br i1 %53, label %54, label %60, !dbg !2165

54:                                               ; preds = %39
  %55 = load i64, i64* %6, align 8, !dbg !2169
  %56 = trunc i64 %55 to i32, !dbg !2169
  %57 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2169
  %58 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %57, i32 0, i32 6, !dbg !2169
  store i32 %56, i32* %58, align 8, !dbg !2169
  %59 = load i64, i64* %6, align 8, !dbg !2169
  store i64 %59, i64* %3, align 8, !dbg !2169
  br label %79, !dbg !2169

60:                                               ; preds = %39
  %61 = load i64, i64* %6, align 8, !dbg !2171
  %62 = icmp eq i64 %61, 0, !dbg !2171
  br i1 %62, label %63, label %66, !dbg !2167

63:                                               ; preds = %60
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2173
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 6, !dbg !2173
  store i32 -2147483632, i32* %65, align 8, !dbg !2173
  store i64 -2147483632, i64* %3, align 8, !dbg !2173
  br label %79, !dbg !2173

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  br label %68, !dbg !2165

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2156
  %71 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %70, i32 0, i32 17, !dbg !2156
  %72 = load i64, i64* %6, align 8, !dbg !2156
  %73 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %71, i64 %72), !dbg !2156
  store %struct.mqtt_queued_message* %73, %struct.mqtt_queued_message** %7, align 8, !dbg !2156
  %74 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2175
  %75 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %74, i32 0, i32 4, !dbg !2176
  store i32 4, i32* %75, align 8, !dbg !2177
  %76 = load i16, i16* %5, align 2, !dbg !2178
  %77 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2179
  %78 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %77, i32 0, i32 5, !dbg !2180
  store i16 %76, i16* %78, align 4, !dbg !2181
  store i64 1, i64* %3, align 8, !dbg !2182
  br label %79, !dbg !2182

79:                                               ; preds = %69, %63, %54, %30, %12
  %80 = load i64, i64* %3, align 8, !dbg !2183
  ret i64 %80, !dbg !2183
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_pubrec(%struct.mqtt_client.7* %0, i16 zeroext %1) #0 !dbg !2184 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_client.7*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %4, metadata !2185, metadata !DIExpression()), !dbg !2186
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2187, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2189, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %7, metadata !2191, metadata !DIExpression()), !dbg !2192
  %8 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2193
  %9 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %8, i32 0, i32 6, !dbg !2193
  %10 = load i32, i32* %9, align 8, !dbg !2193
  %11 = icmp slt i32 %10, 0, !dbg !2193
  br i1 %11, label %12, label %17, !dbg !2195

12:                                               ; preds = %2
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2196
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 6, !dbg !2196
  %15 = load i32, i32* %14, align 8, !dbg !2196
  %16 = sext i32 %15 to i64, !dbg !2196
  store i64 %16, i64* %3, align 8, !dbg !2196
  br label %79, !dbg !2196

17:                                               ; preds = %2
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2195
  %19 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %18, i32 0, i32 17, !dbg !2195
  %20 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %19, i32 0, i32 2, !dbg !2195
  %21 = load i8*, i8** %20, align 8, !dbg !2195
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2195
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 17, !dbg !2195
  %24 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %23, i32 0, i32 3, !dbg !2195
  %25 = load i64, i64* %24, align 8, !dbg !2195
  %26 = load i16, i16* %5, align 2, !dbg !2195
  %27 = call i64 @mqtt_pack_pubxxx_request(i8* %21, i64 %25, i32 5, i16 zeroext %26), !dbg !2195
  store i64 %27, i64* %6, align 8, !dbg !2195
  %28 = load i64, i64* %6, align 8, !dbg !2198
  %29 = icmp slt i64 %28, 0, !dbg !2198
  br i1 %29, label %30, label %36, !dbg !2195

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8, !dbg !2200
  %32 = trunc i64 %31 to i32, !dbg !2200
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2200
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 6, !dbg !2200
  store i32 %32, i32* %34, align 8, !dbg !2200
  %35 = load i64, i64* %6, align 8, !dbg !2200
  store i64 %35, i64* %3, align 8, !dbg !2200
  br label %79, !dbg !2200

36:                                               ; preds = %17
  %37 = load i64, i64* %6, align 8, !dbg !2202
  %38 = icmp eq i64 %37, 0, !dbg !2202
  br i1 %38, label %39, label %68, !dbg !2198

39:                                               ; preds = %36
  %40 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2204
  %41 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %40, i32 0, i32 17, !dbg !2204
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %41), !dbg !2204
  %42 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2204
  %43 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %42, i32 0, i32 17, !dbg !2204
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 2, !dbg !2204
  %45 = load i8*, i8** %44, align 8, !dbg !2204
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2204
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !2204
  %48 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %47, i32 0, i32 3, !dbg !2204
  %49 = load i64, i64* %48, align 8, !dbg !2204
  %50 = load i16, i16* %5, align 2, !dbg !2204
  %51 = call i64 @mqtt_pack_pubxxx_request(i8* %45, i64 %49, i32 5, i16 zeroext %50), !dbg !2204
  store i64 %51, i64* %6, align 8, !dbg !2204
  %52 = load i64, i64* %6, align 8, !dbg !2206
  %53 = icmp slt i64 %52, 0, !dbg !2206
  br i1 %53, label %54, label %60, !dbg !2204

54:                                               ; preds = %39
  %55 = load i64, i64* %6, align 8, !dbg !2208
  %56 = trunc i64 %55 to i32, !dbg !2208
  %57 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2208
  %58 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %57, i32 0, i32 6, !dbg !2208
  store i32 %56, i32* %58, align 8, !dbg !2208
  %59 = load i64, i64* %6, align 8, !dbg !2208
  store i64 %59, i64* %3, align 8, !dbg !2208
  br label %79, !dbg !2208

60:                                               ; preds = %39
  %61 = load i64, i64* %6, align 8, !dbg !2210
  %62 = icmp eq i64 %61, 0, !dbg !2210
  br i1 %62, label %63, label %66, !dbg !2206

63:                                               ; preds = %60
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2212
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 6, !dbg !2212
  store i32 -2147483632, i32* %65, align 8, !dbg !2212
  store i64 -2147483632, i64* %3, align 8, !dbg !2212
  br label %79, !dbg !2212

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  br label %68, !dbg !2204

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2195
  %71 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %70, i32 0, i32 17, !dbg !2195
  %72 = load i64, i64* %6, align 8, !dbg !2195
  %73 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %71, i64 %72), !dbg !2195
  store %struct.mqtt_queued_message* %73, %struct.mqtt_queued_message** %7, align 8, !dbg !2195
  %74 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2214
  %75 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %74, i32 0, i32 4, !dbg !2215
  store i32 5, i32* %75, align 8, !dbg !2216
  %76 = load i16, i16* %5, align 2, !dbg !2217
  %77 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2218
  %78 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %77, i32 0, i32 5, !dbg !2219
  store i16 %76, i16* %78, align 4, !dbg !2220
  store i64 1, i64* %3, align 8, !dbg !2221
  br label %79, !dbg !2221

79:                                               ; preds = %69, %63, %54, %30, %12
  %80 = load i64, i64* %3, align 8, !dbg !2222
  ret i64 %80, !dbg !2222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_pubrel(%struct.mqtt_client.7* %0, i16 zeroext %1) #0 !dbg !2223 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_client.7*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %4, metadata !2224, metadata !DIExpression()), !dbg !2225
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2226, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2228, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %7, metadata !2230, metadata !DIExpression()), !dbg !2231
  %8 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2232
  %9 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %8, i32 0, i32 6, !dbg !2232
  %10 = load i32, i32* %9, align 8, !dbg !2232
  %11 = icmp slt i32 %10, 0, !dbg !2232
  br i1 %11, label %12, label %17, !dbg !2234

12:                                               ; preds = %2
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2235
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 6, !dbg !2235
  %15 = load i32, i32* %14, align 8, !dbg !2235
  %16 = sext i32 %15 to i64, !dbg !2235
  store i64 %16, i64* %3, align 8, !dbg !2235
  br label %79, !dbg !2235

17:                                               ; preds = %2
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2234
  %19 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %18, i32 0, i32 17, !dbg !2234
  %20 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %19, i32 0, i32 2, !dbg !2234
  %21 = load i8*, i8** %20, align 8, !dbg !2234
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2234
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 17, !dbg !2234
  %24 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %23, i32 0, i32 3, !dbg !2234
  %25 = load i64, i64* %24, align 8, !dbg !2234
  %26 = load i16, i16* %5, align 2, !dbg !2234
  %27 = call i64 @mqtt_pack_pubxxx_request(i8* %21, i64 %25, i32 6, i16 zeroext %26), !dbg !2234
  store i64 %27, i64* %6, align 8, !dbg !2234
  %28 = load i64, i64* %6, align 8, !dbg !2237
  %29 = icmp slt i64 %28, 0, !dbg !2237
  br i1 %29, label %30, label %36, !dbg !2234

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8, !dbg !2239
  %32 = trunc i64 %31 to i32, !dbg !2239
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2239
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 6, !dbg !2239
  store i32 %32, i32* %34, align 8, !dbg !2239
  %35 = load i64, i64* %6, align 8, !dbg !2239
  store i64 %35, i64* %3, align 8, !dbg !2239
  br label %79, !dbg !2239

36:                                               ; preds = %17
  %37 = load i64, i64* %6, align 8, !dbg !2241
  %38 = icmp eq i64 %37, 0, !dbg !2241
  br i1 %38, label %39, label %68, !dbg !2237

39:                                               ; preds = %36
  %40 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2243
  %41 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %40, i32 0, i32 17, !dbg !2243
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %41), !dbg !2243
  %42 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2243
  %43 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %42, i32 0, i32 17, !dbg !2243
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 2, !dbg !2243
  %45 = load i8*, i8** %44, align 8, !dbg !2243
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2243
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !2243
  %48 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %47, i32 0, i32 3, !dbg !2243
  %49 = load i64, i64* %48, align 8, !dbg !2243
  %50 = load i16, i16* %5, align 2, !dbg !2243
  %51 = call i64 @mqtt_pack_pubxxx_request(i8* %45, i64 %49, i32 6, i16 zeroext %50), !dbg !2243
  store i64 %51, i64* %6, align 8, !dbg !2243
  %52 = load i64, i64* %6, align 8, !dbg !2245
  %53 = icmp slt i64 %52, 0, !dbg !2245
  br i1 %53, label %54, label %60, !dbg !2243

54:                                               ; preds = %39
  %55 = load i64, i64* %6, align 8, !dbg !2247
  %56 = trunc i64 %55 to i32, !dbg !2247
  %57 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2247
  %58 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %57, i32 0, i32 6, !dbg !2247
  store i32 %56, i32* %58, align 8, !dbg !2247
  %59 = load i64, i64* %6, align 8, !dbg !2247
  store i64 %59, i64* %3, align 8, !dbg !2247
  br label %79, !dbg !2247

60:                                               ; preds = %39
  %61 = load i64, i64* %6, align 8, !dbg !2249
  %62 = icmp eq i64 %61, 0, !dbg !2249
  br i1 %62, label %63, label %66, !dbg !2245

63:                                               ; preds = %60
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2251
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 6, !dbg !2251
  store i32 -2147483632, i32* %65, align 8, !dbg !2251
  store i64 -2147483632, i64* %3, align 8, !dbg !2251
  br label %79, !dbg !2251

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  br label %68, !dbg !2243

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2234
  %71 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %70, i32 0, i32 17, !dbg !2234
  %72 = load i64, i64* %6, align 8, !dbg !2234
  %73 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %71, i64 %72), !dbg !2234
  store %struct.mqtt_queued_message* %73, %struct.mqtt_queued_message** %7, align 8, !dbg !2234
  %74 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2253
  %75 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %74, i32 0, i32 4, !dbg !2254
  store i32 6, i32* %75, align 8, !dbg !2255
  %76 = load i16, i16* %5, align 2, !dbg !2256
  %77 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2257
  %78 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %77, i32 0, i32 5, !dbg !2258
  store i16 %76, i16* %78, align 4, !dbg !2259
  store i64 1, i64* %3, align 8, !dbg !2260
  br label %79, !dbg !2260

79:                                               ; preds = %69, %63, %54, %30, %12
  %80 = load i64, i64* %3, align 8, !dbg !2261
  ret i64 %80, !dbg !2261
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_pubcomp(%struct.mqtt_client.7* %0, i16 zeroext %1) #0 !dbg !2262 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_client.7*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %4, metadata !2263, metadata !DIExpression()), !dbg !2264
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2265, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2267, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %7, metadata !2269, metadata !DIExpression()), !dbg !2270
  %8 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2271
  %9 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %8, i32 0, i32 6, !dbg !2271
  %10 = load i32, i32* %9, align 8, !dbg !2271
  %11 = icmp slt i32 %10, 0, !dbg !2271
  br i1 %11, label %12, label %17, !dbg !2273

12:                                               ; preds = %2
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2274
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 6, !dbg !2274
  %15 = load i32, i32* %14, align 8, !dbg !2274
  %16 = sext i32 %15 to i64, !dbg !2274
  store i64 %16, i64* %3, align 8, !dbg !2274
  br label %79, !dbg !2274

17:                                               ; preds = %2
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2273
  %19 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %18, i32 0, i32 17, !dbg !2273
  %20 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %19, i32 0, i32 2, !dbg !2273
  %21 = load i8*, i8** %20, align 8, !dbg !2273
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2273
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 17, !dbg !2273
  %24 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %23, i32 0, i32 3, !dbg !2273
  %25 = load i64, i64* %24, align 8, !dbg !2273
  %26 = load i16, i16* %5, align 2, !dbg !2273
  %27 = call i64 @mqtt_pack_pubxxx_request(i8* %21, i64 %25, i32 7, i16 zeroext %26), !dbg !2273
  store i64 %27, i64* %6, align 8, !dbg !2273
  %28 = load i64, i64* %6, align 8, !dbg !2276
  %29 = icmp slt i64 %28, 0, !dbg !2276
  br i1 %29, label %30, label %36, !dbg !2273

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8, !dbg !2278
  %32 = trunc i64 %31 to i32, !dbg !2278
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2278
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 6, !dbg !2278
  store i32 %32, i32* %34, align 8, !dbg !2278
  %35 = load i64, i64* %6, align 8, !dbg !2278
  store i64 %35, i64* %3, align 8, !dbg !2278
  br label %79, !dbg !2278

36:                                               ; preds = %17
  %37 = load i64, i64* %6, align 8, !dbg !2280
  %38 = icmp eq i64 %37, 0, !dbg !2280
  br i1 %38, label %39, label %68, !dbg !2276

39:                                               ; preds = %36
  %40 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2282
  %41 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %40, i32 0, i32 17, !dbg !2282
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %41), !dbg !2282
  %42 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2282
  %43 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %42, i32 0, i32 17, !dbg !2282
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 2, !dbg !2282
  %45 = load i8*, i8** %44, align 8, !dbg !2282
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2282
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !2282
  %48 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %47, i32 0, i32 3, !dbg !2282
  %49 = load i64, i64* %48, align 8, !dbg !2282
  %50 = load i16, i16* %5, align 2, !dbg !2282
  %51 = call i64 @mqtt_pack_pubxxx_request(i8* %45, i64 %49, i32 7, i16 zeroext %50), !dbg !2282
  store i64 %51, i64* %6, align 8, !dbg !2282
  %52 = load i64, i64* %6, align 8, !dbg !2284
  %53 = icmp slt i64 %52, 0, !dbg !2284
  br i1 %53, label %54, label %60, !dbg !2282

54:                                               ; preds = %39
  %55 = load i64, i64* %6, align 8, !dbg !2286
  %56 = trunc i64 %55 to i32, !dbg !2286
  %57 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2286
  %58 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %57, i32 0, i32 6, !dbg !2286
  store i32 %56, i32* %58, align 8, !dbg !2286
  %59 = load i64, i64* %6, align 8, !dbg !2286
  store i64 %59, i64* %3, align 8, !dbg !2286
  br label %79, !dbg !2286

60:                                               ; preds = %39
  %61 = load i64, i64* %6, align 8, !dbg !2288
  %62 = icmp eq i64 %61, 0, !dbg !2288
  br i1 %62, label %63, label %66, !dbg !2284

63:                                               ; preds = %60
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2290
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 6, !dbg !2290
  store i32 -2147483632, i32* %65, align 8, !dbg !2290
  store i64 -2147483632, i64* %3, align 8, !dbg !2290
  br label %79, !dbg !2290

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  br label %68, !dbg !2282

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2273
  %71 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %70, i32 0, i32 17, !dbg !2273
  %72 = load i64, i64* %6, align 8, !dbg !2273
  %73 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %71, i64 %72), !dbg !2273
  store %struct.mqtt_queued_message* %73, %struct.mqtt_queued_message** %7, align 8, !dbg !2273
  %74 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2292
  %75 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %74, i32 0, i32 4, !dbg !2293
  store i32 7, i32* %75, align 8, !dbg !2294
  %76 = load i16, i16* %5, align 2, !dbg !2295
  %77 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2296
  %78 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %77, i32 0, i32 5, !dbg !2297
  store i16 %76, i16* %78, align 4, !dbg !2298
  store i64 1, i64* %3, align 8, !dbg !2299
  br label %79, !dbg !2299

79:                                               ; preds = %69, %63, %54, %30, %12
  %80 = load i64, i64* %3, align 8, !dbg !2300
  ret i64 %80, !dbg !2300
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_pubxxx_request(i8* %0, i64 %1, i32 %2, i16 zeroext %3) #0 !dbg !2301 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mqtt_fixed_header, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2304, metadata !DIExpression()), !dbg !2305
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2306, metadata !DIExpression()), !dbg !2307
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2308, metadata !DIExpression()), !dbg !2309
  store i16 %3, i16* %9, align 2
  call void @llvm.dbg.declare(metadata i16* %9, metadata !2310, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2312, metadata !DIExpression()), !dbg !2313
  %13 = load i8*, i8** %6, align 8, !dbg !2314
  store i8* %13, i8** %10, align 8, !dbg !2313
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %11, metadata !2315, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2317, metadata !DIExpression()), !dbg !2318
  %14 = load i8*, i8** %6, align 8, !dbg !2319
  %15 = icmp eq i8* %14, null, !dbg !2321
  br i1 %15, label %16, label %17, !dbg !2322

16:                                               ; preds = %4
  store i64 -2147483647, i64* %5, align 8, !dbg !2323
  br label %64, !dbg !2323

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4, !dbg !2325
  %19 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 0, !dbg !2326
  store i32 %18, i32* %19, align 4, !dbg !2327
  %20 = load i32, i32* %8, align 4, !dbg !2328
  %21 = icmp eq i32 %20, 6, !dbg !2330
  br i1 %21, label %22, label %27, !dbg !2331

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 1, !dbg !2332
  %24 = load i8, i8* %23, align 4, !dbg !2334
  %25 = and i8 %24, -16, !dbg !2334
  %26 = or i8 %25, 2, !dbg !2334
  store i8 %26, i8* %23, align 4, !dbg !2334
  br label %31, !dbg !2335

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 1, !dbg !2336
  %29 = load i8, i8* %28, align 4, !dbg !2338
  %30 = and i8 %29, -16, !dbg !2338
  store i8 %30, i8* %28, align 4, !dbg !2338
  br label %31

31:                                               ; preds = %27, %22
  %32 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !2339
  store i32 2, i32* %32, align 4, !dbg !2340
  %33 = load i8*, i8** %6, align 8, !dbg !2341
  %34 = load i64, i64* %7, align 8, !dbg !2342
  %35 = call i64 @mqtt_pack_fixed_header(i8* %33, i64 %34, %struct.mqtt_fixed_header* %11), !dbg !2343
  store i64 %35, i64* %12, align 8, !dbg !2344
  %36 = load i64, i64* %12, align 8, !dbg !2345
  %37 = icmp sle i64 %36, 0, !dbg !2347
  br i1 %37, label %38, label %40, !dbg !2348

38:                                               ; preds = %31
  %39 = load i64, i64* %12, align 8, !dbg !2349
  store i64 %39, i64* %5, align 8, !dbg !2351
  br label %64, !dbg !2351

40:                                               ; preds = %31
  %41 = load i64, i64* %12, align 8, !dbg !2352
  %42 = load i8*, i8** %6, align 8, !dbg !2353
  %43 = getelementptr inbounds i8, i8* %42, i64 %41, !dbg !2353
  store i8* %43, i8** %6, align 8, !dbg !2353
  %44 = load i64, i64* %12, align 8, !dbg !2354
  %45 = load i64, i64* %7, align 8, !dbg !2355
  %46 = sub i64 %45, %44, !dbg !2355
  store i64 %46, i64* %7, align 8, !dbg !2355
  %47 = load i64, i64* %7, align 8, !dbg !2356
  %48 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !2358
  %49 = load i32, i32* %48, align 4, !dbg !2358
  %50 = zext i32 %49 to i64, !dbg !2359
  %51 = icmp ult i64 %47, %50, !dbg !2360
  br i1 %51, label %52, label %53, !dbg !2361

52:                                               ; preds = %40
  store i64 0, i64* %5, align 8, !dbg !2362
  br label %64, !dbg !2362

53:                                               ; preds = %40
  %54 = load i8*, i8** %6, align 8, !dbg !2364
  %55 = load i16, i16* %9, align 2, !dbg !2365
  %56 = call i64 @__mqtt_pack_uint16(i8* %54, i16 zeroext %55), !dbg !2366
  %57 = load i8*, i8** %6, align 8, !dbg !2367
  %58 = getelementptr inbounds i8, i8* %57, i64 %56, !dbg !2367
  store i8* %58, i8** %6, align 8, !dbg !2367
  %59 = load i8*, i8** %6, align 8, !dbg !2368
  %60 = load i8*, i8** %10, align 8, !dbg !2369
  %61 = ptrtoint i8* %59 to i64, !dbg !2370
  %62 = ptrtoint i8* %60 to i64, !dbg !2370
  %63 = sub i64 %61, %62, !dbg !2370
  store i64 %63, i64* %5, align 8, !dbg !2371
  br label %64, !dbg !2371

64:                                               ; preds = %53, %52, %38, %16
  %65 = load i64, i64* %5, align 8, !dbg !2372
  ret i64 %65, !dbg !2372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_pack_uint16(i8* %0, i16 zeroext %1) #0 !dbg !2373 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2376, metadata !DIExpression()), !dbg !2377
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !2378, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2380, metadata !DIExpression()), !dbg !2381
  %6 = load i16, i16* %4, align 2, !dbg !2382
  %7 = call zeroext i16 @htons(i16 zeroext %6) #12, !dbg !2382
  store i16 %7, i16* %5, align 2, !dbg !2381
  %8 = load i8*, i8** %3, align 8, !dbg !2383
  %9 = bitcast i16* %5 to i8*, !dbg !2384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 2 %9, i64 2, i1 false), !dbg !2384
  ret i64 2, !dbg !2385
}

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_fixed_header(%struct.mqtt_response* %0, i8* %1, i64 %2) #0 !dbg !2386 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_response*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mqtt_fixed_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mqtt_response* %0, %struct.mqtt_response** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %5, metadata !2387, metadata !DIExpression()), !dbg !2388
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2389, metadata !DIExpression()), !dbg !2390
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2391, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header** %8, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2396, metadata !DIExpression()), !dbg !2397
  %12 = load i8*, i8** %6, align 8, !dbg !2398
  store i8* %12, i8** %9, align 8, !dbg !2397
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2399, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2401, metadata !DIExpression()), !dbg !2402
  %13 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2403
  %14 = icmp eq %struct.mqtt_response* %13, null, !dbg !2405
  br i1 %14, label %18, label %15, !dbg !2406

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8, !dbg !2407
  %17 = icmp eq i8* %16, null, !dbg !2408
  br i1 %17, label %18, label %19, !dbg !2409

18:                                               ; preds = %15, %3
  store i64 -2147483647, i64* %4, align 8, !dbg !2410
  br label %102, !dbg !2410

19:                                               ; preds = %15
  %20 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2412
  %21 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %20, i32 0, i32 0, !dbg !2413
  store %struct.mqtt_fixed_header* %21, %struct.mqtt_fixed_header** %8, align 8, !dbg !2414
  %22 = load i64, i64* %7, align 8, !dbg !2415
  %23 = icmp eq i64 %22, 0, !dbg !2417
  br i1 %23, label %24, label %25, !dbg !2418

24:                                               ; preds = %19
  store i64 0, i64* %4, align 8, !dbg !2419
  br label %102, !dbg !2419

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8, !dbg !2420
  %27 = load i8, i8* %26, align 1, !dbg !2421
  %28 = zext i8 %27 to i32, !dbg !2421
  %29 = ashr i32 %28, 4, !dbg !2422
  %30 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2423
  %31 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %30, i32 0, i32 0, !dbg !2424
  store i32 %29, i32* %31, align 4, !dbg !2425
  %32 = load i8*, i8** %6, align 8, !dbg !2426
  %33 = load i8, i8* %32, align 1, !dbg !2427
  %34 = zext i8 %33 to i32, !dbg !2427
  %35 = and i32 %34, 15, !dbg !2428
  %36 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2429
  %37 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %36, i32 0, i32 1, !dbg !2430
  %38 = trunc i32 %35 to i8, !dbg !2431
  %39 = load i8, i8* %37, align 4, !dbg !2431
  %40 = and i8 %38, 15, !dbg !2431
  %41 = and i8 %39, -16, !dbg !2431
  %42 = or i8 %41, %40, !dbg !2431
  store i8 %42, i8* %37, align 4, !dbg !2431
  %43 = zext i8 %40 to i32, !dbg !2431
  %44 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2432
  %45 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %44, i32 0, i32 2, !dbg !2433
  store i32 0, i32* %45, align 4, !dbg !2434
  store i32 0, i32* %10, align 4, !dbg !2435
  br label %46, !dbg !2436

46:                                               ; preds = %71, %25
  %47 = load i32, i32* %10, align 4, !dbg !2437
  %48 = icmp eq i32 %47, 28, !dbg !2440
  br i1 %48, label %49, label %50, !dbg !2441

49:                                               ; preds = %46
  store i64 -2147483622, i64* %4, align 8, !dbg !2442
  br label %102, !dbg !2442

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8, !dbg !2443
  %52 = add i64 %51, -1, !dbg !2443
  store i64 %52, i64* %7, align 8, !dbg !2443
  %53 = load i8*, i8** %6, align 8, !dbg !2444
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !2444
  store i8* %54, i8** %6, align 8, !dbg !2444
  %55 = load i64, i64* %7, align 8, !dbg !2445
  %56 = icmp eq i64 %55, 0, !dbg !2447
  br i1 %56, label %57, label %58, !dbg !2448

57:                                               ; preds = %50
  store i64 0, i64* %4, align 8, !dbg !2449
  br label %102, !dbg !2449

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8, !dbg !2450
  %60 = load i8, i8* %59, align 1, !dbg !2451
  %61 = zext i8 %60 to i32, !dbg !2451
  %62 = and i32 %61, 127, !dbg !2452
  %63 = load i32, i32* %10, align 4, !dbg !2453
  %64 = shl i32 %62, %63, !dbg !2454
  %65 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2455
  %66 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %65, i32 0, i32 2, !dbg !2456
  %67 = load i32, i32* %66, align 4, !dbg !2457
  %68 = add i32 %67, %64, !dbg !2457
  store i32 %68, i32* %66, align 4, !dbg !2457
  %69 = load i32, i32* %10, align 4, !dbg !2458
  %70 = add nsw i32 %69, 7, !dbg !2458
  store i32 %70, i32* %10, align 4, !dbg !2458
  br label %71, !dbg !2459

71:                                               ; preds = %58
  %72 = load i8*, i8** %6, align 8, !dbg !2460
  %73 = load i8, i8* %72, align 1, !dbg !2461
  %74 = zext i8 %73 to i32, !dbg !2461
  %75 = and i32 %74, 128, !dbg !2462
  %76 = icmp ne i32 %75, 0, !dbg !2459
  br i1 %76, label %46, label %77, !dbg !2459, !llvm.loop !2463

77:                                               ; preds = %71
  %78 = load i64, i64* %7, align 8, !dbg !2465
  %79 = add i64 %78, -1, !dbg !2465
  store i64 %79, i64* %7, align 8, !dbg !2465
  %80 = load i8*, i8** %6, align 8, !dbg !2466
  %81 = getelementptr inbounds i8, i8* %80, i32 1, !dbg !2466
  store i8* %81, i8** %6, align 8, !dbg !2466
  %82 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2467
  %83 = call i64 @mqtt_fixed_header_rule_violation(%struct.mqtt_fixed_header* %82), !dbg !2468
  store i64 %83, i64* %11, align 8, !dbg !2469
  %84 = load i64, i64* %11, align 8, !dbg !2470
  %85 = icmp ne i64 %84, 0, !dbg !2470
  br i1 %85, label %86, label %88, !dbg !2472

86:                                               ; preds = %77
  %87 = load i64, i64* %11, align 8, !dbg !2473
  store i64 %87, i64* %4, align 8, !dbg !2475
  br label %102, !dbg !2475

88:                                               ; preds = %77
  %89 = load i64, i64* %7, align 8, !dbg !2476
  %90 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2478
  %91 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %90, i32 0, i32 2, !dbg !2479
  %92 = load i32, i32* %91, align 4, !dbg !2479
  %93 = zext i32 %92 to i64, !dbg !2478
  %94 = icmp ult i64 %89, %93, !dbg !2480
  br i1 %94, label %95, label %96, !dbg !2481

95:                                               ; preds = %88
  store i64 0, i64* %4, align 8, !dbg !2482
  br label %102, !dbg !2482

96:                                               ; preds = %88
  %97 = load i8*, i8** %6, align 8, !dbg !2484
  %98 = load i8*, i8** %9, align 8, !dbg !2485
  %99 = ptrtoint i8* %97 to i64, !dbg !2486
  %100 = ptrtoint i8* %98 to i64, !dbg !2486
  %101 = sub i64 %99, %100, !dbg !2486
  store i64 %101, i64* %4, align 8, !dbg !2487
  br label %102, !dbg !2487

102:                                              ; preds = %96, %95, %86, %57, %49, %24, %18
  %103 = load i64, i64* %4, align 8, !dbg !2488
  ret i64 %103, !dbg !2488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_connack_response(%struct.mqtt_response* %0, i8* %1) #0 !dbg !2489 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mqtt_response_connack*, align 8
  store %struct.mqtt_response* %0, %struct.mqtt_response** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %4, metadata !2492, metadata !DIExpression()), !dbg !2493
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2494, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2496, metadata !DIExpression()), !dbg !2497
  %8 = load i8*, i8** %5, align 8, !dbg !2498
  store i8* %8, i8** %6, align 8, !dbg !2497
  call void @llvm.dbg.declare(metadata %struct.mqtt_response_connack** %7, metadata !2499, metadata !DIExpression()), !dbg !2501
  %9 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2502
  %10 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %9, i32 0, i32 0, !dbg !2504
  %11 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %10, i32 0, i32 2, !dbg !2505
  %12 = load i32, i32* %11, align 8, !dbg !2505
  %13 = icmp ne i32 %12, 2, !dbg !2506
  br i1 %13, label %14, label %15, !dbg !2507

14:                                               ; preds = %2
  store i64 -2147483636, i64* %3, align 8, !dbg !2508
  br label %50, !dbg !2508

15:                                               ; preds = %2
  %16 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2510
  %17 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %16, i32 0, i32 1, !dbg !2511
  %18 = bitcast %union.anon* %17 to %struct.mqtt_response_connack*, !dbg !2512
  store %struct.mqtt_response_connack* %18, %struct.mqtt_response_connack** %7, align 8, !dbg !2513
  %19 = load i8*, i8** %5, align 8, !dbg !2514
  %20 = load i8, i8* %19, align 1, !dbg !2516
  %21 = zext i8 %20 to i32, !dbg !2516
  %22 = and i32 %21, 254, !dbg !2517
  %23 = icmp ne i32 %22, 0, !dbg !2517
  br i1 %23, label %24, label %25, !dbg !2518

24:                                               ; preds = %15
  store i64 -2147483640, i64* %3, align 8, !dbg !2519
  br label %50, !dbg !2519

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8, !dbg !2521
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !2521
  store i8* %27, i8** %5, align 8, !dbg !2521
  %28 = load i8, i8* %26, align 1, !dbg !2523
  %29 = load %struct.mqtt_response_connack*, %struct.mqtt_response_connack** %7, align 8, !dbg !2524
  %30 = getelementptr inbounds %struct.mqtt_response_connack, %struct.mqtt_response_connack* %29, i32 0, i32 0, !dbg !2525
  store i8 %28, i8* %30, align 4, !dbg !2526
  br label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8, !dbg !2527
  %33 = load i8, i8* %32, align 1, !dbg !2529
  %34 = zext i8 %33 to i32, !dbg !2529
  %35 = icmp ugt i32 %34, 5, !dbg !2530
  br i1 %35, label %36, label %37, !dbg !2531

36:                                               ; preds = %31
  store i64 -2147483639, i64* %3, align 8, !dbg !2532
  br label %50, !dbg !2532

37:                                               ; preds = %31
  %38 = load i8*, i8** %5, align 8, !dbg !2534
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !2534
  store i8* %39, i8** %5, align 8, !dbg !2534
  %40 = load i8, i8* %38, align 1, !dbg !2536
  %41 = zext i8 %40 to i32, !dbg !2537
  %42 = load %struct.mqtt_response_connack*, %struct.mqtt_response_connack** %7, align 8, !dbg !2538
  %43 = getelementptr inbounds %struct.mqtt_response_connack, %struct.mqtt_response_connack* %42, i32 0, i32 1, !dbg !2539
  store i32 %41, i32* %43, align 4, !dbg !2540
  br label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** %5, align 8, !dbg !2541
  %46 = load i8*, i8** %6, align 8, !dbg !2542
  %47 = ptrtoint i8* %45 to i64, !dbg !2543
  %48 = ptrtoint i8* %46 to i64, !dbg !2543
  %49 = sub i64 %47, %48, !dbg !2543
  store i64 %49, i64* %3, align 8, !dbg !2544
  br label %50, !dbg !2544

50:                                               ; preds = %44, %36, %24, %14
  %51 = load i64, i64* %3, align 8, !dbg !2545
  ret i64 %51, !dbg !2545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_publish_response(%struct.mqtt_response* %0, i8* %1) #0 !dbg !2546 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mqtt_fixed_header*, align 8
  %8 = alloca %struct.mqtt_response_publish*, align 8
  store %struct.mqtt_response* %0, %struct.mqtt_response** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %4, metadata !2547, metadata !DIExpression()), !dbg !2548
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2551, metadata !DIExpression()), !dbg !2552
  %9 = load i8*, i8** %5, align 8, !dbg !2553
  store i8* %9, i8** %6, align 8, !dbg !2552
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header** %7, metadata !2554, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.declare(metadata %struct.mqtt_response_publish** %8, metadata !2556, metadata !DIExpression()), !dbg !2557
  %10 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2558
  %11 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %10, i32 0, i32 0, !dbg !2559
  store %struct.mqtt_fixed_header* %11, %struct.mqtt_fixed_header** %7, align 8, !dbg !2560
  %12 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2561
  %13 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %12, i32 0, i32 1, !dbg !2562
  %14 = bitcast %union.anon* %13 to %struct.mqtt_response_publish*, !dbg !2563
  store %struct.mqtt_response_publish* %14, %struct.mqtt_response_publish** %8, align 8, !dbg !2564
  %15 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !2565
  %16 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %15, i32 0, i32 1, !dbg !2566
  %17 = load i8, i8* %16, align 4, !dbg !2566
  %18 = and i8 %17, 15, !dbg !2566
  %19 = zext i8 %18 to i32, !dbg !2566
  %20 = and i32 %19, 8, !dbg !2567
  %21 = ashr i32 %20, 3, !dbg !2568
  %22 = trunc i32 %21 to i8, !dbg !2569
  %23 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2570
  %24 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %23, i32 0, i32 0, !dbg !2571
  store i8 %22, i8* %24, align 8, !dbg !2572
  %25 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !2573
  %26 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %25, i32 0, i32 1, !dbg !2574
  %27 = load i8, i8* %26, align 4, !dbg !2574
  %28 = and i8 %27, 15, !dbg !2574
  %29 = zext i8 %28 to i32, !dbg !2574
  %30 = and i32 %29, 6, !dbg !2575
  %31 = ashr i32 %30, 1, !dbg !2576
  %32 = trunc i32 %31 to i8, !dbg !2577
  %33 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2578
  %34 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %33, i32 0, i32 1, !dbg !2579
  store i8 %32, i8* %34, align 1, !dbg !2580
  %35 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !2581
  %36 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %35, i32 0, i32 1, !dbg !2582
  %37 = load i8, i8* %36, align 4, !dbg !2582
  %38 = and i8 %37, 15, !dbg !2582
  %39 = zext i8 %38 to i32, !dbg !2582
  %40 = and i32 %39, 1, !dbg !2583
  %41 = trunc i32 %40 to i8, !dbg !2581
  %42 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2584
  %43 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %42, i32 0, i32 2, !dbg !2585
  store i8 %41, i8* %43, align 2, !dbg !2586
  %44 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2587
  %45 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %44, i32 0, i32 0, !dbg !2589
  %46 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %45, i32 0, i32 2, !dbg !2590
  %47 = load i32, i32* %46, align 8, !dbg !2590
  %48 = icmp ult i32 %47, 4, !dbg !2591
  br i1 %48, label %49, label %50, !dbg !2592

49:                                               ; preds = %2
  store i64 -2147483636, i64* %3, align 8, !dbg !2593
  br label %125, !dbg !2593

50:                                               ; preds = %2
  %51 = load i8*, i8** %5, align 8, !dbg !2595
  %52 = call zeroext i16 @__mqtt_unpack_uint16(i8* %51), !dbg !2596
  %53 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2597
  %54 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %53, i32 0, i32 3, !dbg !2598
  store i16 %52, i16* %54, align 4, !dbg !2599
  %55 = load i8*, i8** %5, align 8, !dbg !2600
  %56 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !2600
  store i8* %56, i8** %5, align 8, !dbg !2600
  %57 = load i8*, i8** %5, align 8, !dbg !2601
  %58 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2602
  %59 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %58, i32 0, i32 4, !dbg !2603
  store i8* %57, i8** %59, align 8, !dbg !2604
  %60 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2605
  %61 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %60, i32 0, i32 3, !dbg !2606
  %62 = load i16, i16* %61, align 4, !dbg !2606
  %63 = zext i16 %62 to i32, !dbg !2605
  %64 = load i8*, i8** %5, align 8, !dbg !2607
  %65 = sext i32 %63 to i64, !dbg !2607
  %66 = getelementptr inbounds i8, i8* %64, i64 %65, !dbg !2607
  store i8* %66, i8** %5, align 8, !dbg !2607
  %67 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2608
  %68 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %67, i32 0, i32 1, !dbg !2610
  %69 = load i8, i8* %68, align 1, !dbg !2610
  %70 = zext i8 %69 to i32, !dbg !2608
  %71 = icmp sgt i32 %70, 0, !dbg !2611
  br i1 %71, label %72, label %79, !dbg !2612

72:                                               ; preds = %50
  %73 = load i8*, i8** %5, align 8, !dbg !2613
  %74 = call zeroext i16 @__mqtt_unpack_uint16(i8* %73), !dbg !2615
  %75 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2616
  %76 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %75, i32 0, i32 5, !dbg !2617
  store i16 %74, i16* %76, align 8, !dbg !2618
  %77 = load i8*, i8** %5, align 8, !dbg !2619
  %78 = getelementptr inbounds i8, i8* %77, i64 2, !dbg !2619
  store i8* %78, i8** %5, align 8, !dbg !2619
  br label %79, !dbg !2620

79:                                               ; preds = %72, %50
  %80 = load i8*, i8** %5, align 8, !dbg !2621
  %81 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2622
  %82 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %81, i32 0, i32 6, !dbg !2623
  store i8* %80, i8** %82, align 8, !dbg !2624
  %83 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2625
  %84 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %83, i32 0, i32 1, !dbg !2627
  %85 = load i8, i8* %84, align 1, !dbg !2627
  %86 = zext i8 %85 to i32, !dbg !2625
  %87 = icmp eq i32 %86, 0, !dbg !2628
  br i1 %87, label %88, label %101, !dbg !2629

88:                                               ; preds = %79
  %89 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !2630
  %90 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %89, i32 0, i32 2, !dbg !2632
  %91 = load i32, i32* %90, align 4, !dbg !2632
  %92 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2633
  %93 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %92, i32 0, i32 3, !dbg !2634
  %94 = load i16, i16* %93, align 4, !dbg !2634
  %95 = zext i16 %94 to i32, !dbg !2633
  %96 = sub i32 %91, %95, !dbg !2635
  %97 = sub i32 %96, 2, !dbg !2636
  %98 = zext i32 %97 to i64, !dbg !2630
  %99 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2637
  %100 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %99, i32 0, i32 7, !dbg !2638
  store i64 %98, i64* %100, align 8, !dbg !2639
  br label %114, !dbg !2640

101:                                              ; preds = %79
  %102 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !2641
  %103 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %102, i32 0, i32 2, !dbg !2643
  %104 = load i32, i32* %103, align 4, !dbg !2643
  %105 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2644
  %106 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %105, i32 0, i32 3, !dbg !2645
  %107 = load i16, i16* %106, align 4, !dbg !2645
  %108 = zext i16 %107 to i32, !dbg !2644
  %109 = sub i32 %104, %108, !dbg !2646
  %110 = sub i32 %109, 4, !dbg !2647
  %111 = zext i32 %110 to i64, !dbg !2641
  %112 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2648
  %113 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %112, i32 0, i32 7, !dbg !2649
  store i64 %111, i64* %113, align 8, !dbg !2650
  br label %114

114:                                              ; preds = %101, %88
  %115 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2651
  %116 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %115, i32 0, i32 7, !dbg !2652
  %117 = load i64, i64* %116, align 8, !dbg !2652
  %118 = load i8*, i8** %5, align 8, !dbg !2653
  %119 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !2653
  store i8* %119, i8** %5, align 8, !dbg !2653
  %120 = load i8*, i8** %5, align 8, !dbg !2654
  %121 = load i8*, i8** %6, align 8, !dbg !2655
  %122 = ptrtoint i8* %120 to i64, !dbg !2656
  %123 = ptrtoint i8* %121 to i64, !dbg !2656
  %124 = sub i64 %122, %123, !dbg !2656
  store i64 %124, i64* %3, align 8, !dbg !2657
  br label %125, !dbg !2657

125:                                              ; preds = %114, %49
  %126 = load i64, i64* %3, align 8, !dbg !2658
  ret i64 %126, !dbg !2658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_pubxxx_response(%struct.mqtt_response* %0, i8* %1) #0 !dbg !2659 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  store %struct.mqtt_response* %0, %struct.mqtt_response** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %4, metadata !2660, metadata !DIExpression()), !dbg !2661
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2664, metadata !DIExpression()), !dbg !2665
  %8 = load i8*, i8** %5, align 8, !dbg !2666
  store i8* %8, i8** %6, align 8, !dbg !2665
  call void @llvm.dbg.declare(metadata i16* %7, metadata !2667, metadata !DIExpression()), !dbg !2668
  %9 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2669
  %10 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %9, i32 0, i32 0, !dbg !2671
  %11 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %10, i32 0, i32 2, !dbg !2672
  %12 = load i32, i32* %11, align 8, !dbg !2672
  %13 = icmp ne i32 %12, 2, !dbg !2673
  br i1 %13, label %14, label %15, !dbg !2674

14:                                               ; preds = %2
  store i64 -2147483636, i64* %3, align 8, !dbg !2675
  br label %69, !dbg !2675

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8, !dbg !2677
  %17 = call zeroext i16 @__mqtt_unpack_uint16(i8* %16), !dbg !2678
  store i16 %17, i16* %7, align 2, !dbg !2679
  %18 = load i8*, i8** %5, align 8, !dbg !2680
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !2680
  store i8* %19, i8** %5, align 8, !dbg !2680
  %20 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2681
  %21 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %20, i32 0, i32 0, !dbg !2683
  %22 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %21, i32 0, i32 0, !dbg !2684
  %23 = load i32, i32* %22, align 8, !dbg !2684
  %24 = icmp eq i32 %23, 4, !dbg !2685
  br i1 %24, label %25, label %31, !dbg !2686

25:                                               ; preds = %15
  %26 = load i16, i16* %7, align 2, !dbg !2687
  %27 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2689
  %28 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %27, i32 0, i32 1, !dbg !2690
  %29 = bitcast %union.anon* %28 to %struct.mqtt_response_puback*, !dbg !2691
  %30 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %29, i32 0, i32 0, !dbg !2692
  store i16 %26, i16* %30, align 8, !dbg !2693
  br label %63, !dbg !2694

31:                                               ; preds = %15
  %32 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2695
  %33 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %32, i32 0, i32 0, !dbg !2697
  %34 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %33, i32 0, i32 0, !dbg !2698
  %35 = load i32, i32* %34, align 8, !dbg !2698
  %36 = icmp eq i32 %35, 5, !dbg !2699
  br i1 %36, label %37, label %43, !dbg !2700

37:                                               ; preds = %31
  %38 = load i16, i16* %7, align 2, !dbg !2701
  %39 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2703
  %40 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %39, i32 0, i32 1, !dbg !2704
  %41 = bitcast %union.anon* %40 to %struct.mqtt_response_puback*, !dbg !2705
  %42 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %41, i32 0, i32 0, !dbg !2706
  store i16 %38, i16* %42, align 8, !dbg !2707
  br label %62, !dbg !2708

43:                                               ; preds = %31
  %44 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2709
  %45 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %44, i32 0, i32 0, !dbg !2711
  %46 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %45, i32 0, i32 0, !dbg !2712
  %47 = load i32, i32* %46, align 8, !dbg !2712
  %48 = icmp eq i32 %47, 6, !dbg !2713
  br i1 %48, label %49, label %55, !dbg !2714

49:                                               ; preds = %43
  %50 = load i16, i16* %7, align 2, !dbg !2715
  %51 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2717
  %52 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %51, i32 0, i32 1, !dbg !2718
  %53 = bitcast %union.anon* %52 to %struct.mqtt_response_puback*, !dbg !2719
  %54 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %53, i32 0, i32 0, !dbg !2720
  store i16 %50, i16* %54, align 8, !dbg !2721
  br label %61, !dbg !2722

55:                                               ; preds = %43
  %56 = load i16, i16* %7, align 2, !dbg !2723
  %57 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2725
  %58 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %57, i32 0, i32 1, !dbg !2726
  %59 = bitcast %union.anon* %58 to %struct.mqtt_response_puback*, !dbg !2727
  %60 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %59, i32 0, i32 0, !dbg !2728
  store i16 %56, i16* %60, align 8, !dbg !2729
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62, %25
  %64 = load i8*, i8** %5, align 8, !dbg !2730
  %65 = load i8*, i8** %6, align 8, !dbg !2731
  %66 = ptrtoint i8* %64 to i64, !dbg !2732
  %67 = ptrtoint i8* %65 to i64, !dbg !2732
  %68 = sub i64 %66, %67, !dbg !2732
  store i64 %68, i64* %3, align 8, !dbg !2733
  br label %69, !dbg !2733

69:                                               ; preds = %63, %14
  %70 = load i64, i64* %3, align 8, !dbg !2734
  ret i64 %70, !dbg !2734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_suback_response(%struct.mqtt_response* %0, i8* %1) #0 !dbg !2735 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.mqtt_response* %0, %struct.mqtt_response** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %4, metadata !2736, metadata !DIExpression()), !dbg !2737
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2738, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2740, metadata !DIExpression()), !dbg !2741
  %8 = load i8*, i8** %5, align 8, !dbg !2742
  store i8* %8, i8** %6, align 8, !dbg !2741
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2743, metadata !DIExpression()), !dbg !2744
  %9 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2745
  %10 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %9, i32 0, i32 0, !dbg !2746
  %11 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %10, i32 0, i32 2, !dbg !2747
  %12 = load i32, i32* %11, align 8, !dbg !2747
  store i32 %12, i32* %7, align 4, !dbg !2744
  %13 = load i32, i32* %7, align 4, !dbg !2748
  %14 = icmp ult i32 %13, 3, !dbg !2750
  br i1 %14, label %15, label %16, !dbg !2751

15:                                               ; preds = %2
  store i64 -2147483636, i64* %3, align 8, !dbg !2752
  br label %47, !dbg !2752

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8, !dbg !2754
  %18 = call zeroext i16 @__mqtt_unpack_uint16(i8* %17), !dbg !2755
  %19 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2756
  %20 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %19, i32 0, i32 1, !dbg !2757
  %21 = bitcast %union.anon* %20 to %struct.mqtt_response_suback*, !dbg !2758
  %22 = getelementptr inbounds %struct.mqtt_response_suback, %struct.mqtt_response_suback* %21, i32 0, i32 0, !dbg !2759
  store i16 %18, i16* %22, align 8, !dbg !2760
  %23 = load i8*, i8** %5, align 8, !dbg !2761
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !2761
  store i8* %24, i8** %5, align 8, !dbg !2761
  %25 = load i32, i32* %7, align 4, !dbg !2762
  %26 = sub i32 %25, 2, !dbg !2762
  store i32 %26, i32* %7, align 4, !dbg !2762
  %27 = load i32, i32* %7, align 4, !dbg !2763
  %28 = zext i32 %27 to i64, !dbg !2764
  %29 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2765
  %30 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %29, i32 0, i32 1, !dbg !2766
  %31 = bitcast %union.anon* %30 to %struct.mqtt_response_suback*, !dbg !2767
  %32 = getelementptr inbounds %struct.mqtt_response_suback, %struct.mqtt_response_suback* %31, i32 0, i32 2, !dbg !2768
  store i64 %28, i64* %32, align 8, !dbg !2769
  %33 = load i8*, i8** %5, align 8, !dbg !2770
  %34 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2771
  %35 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %34, i32 0, i32 1, !dbg !2772
  %36 = bitcast %union.anon* %35 to %struct.mqtt_response_suback*, !dbg !2773
  %37 = getelementptr inbounds %struct.mqtt_response_suback, %struct.mqtt_response_suback* %36, i32 0, i32 1, !dbg !2774
  store i8* %33, i8** %37, align 8, !dbg !2775
  %38 = load i32, i32* %7, align 4, !dbg !2776
  %39 = load i8*, i8** %5, align 8, !dbg !2777
  %40 = zext i32 %38 to i64, !dbg !2777
  %41 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !2777
  store i8* %41, i8** %5, align 8, !dbg !2777
  %42 = load i8*, i8** %5, align 8, !dbg !2778
  %43 = load i8*, i8** %6, align 8, !dbg !2779
  %44 = ptrtoint i8* %42 to i64, !dbg !2780
  %45 = ptrtoint i8* %43 to i64, !dbg !2780
  %46 = sub i64 %44, %45, !dbg !2780
  store i64 %46, i64* %3, align 8, !dbg !2781
  br label %47, !dbg !2781

47:                                               ; preds = %16, %15
  %48 = load i64, i64* %3, align 8, !dbg !2782
  ret i64 %48, !dbg !2782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_unsuback_response(%struct.mqtt_response* %0, i8* %1) #0 !dbg !2783 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.mqtt_response* %0, %struct.mqtt_response** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %4, metadata !2784, metadata !DIExpression()), !dbg !2785
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2788, metadata !DIExpression()), !dbg !2789
  %7 = load i8*, i8** %5, align 8, !dbg !2790
  store i8* %7, i8** %6, align 8, !dbg !2789
  %8 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2791
  %9 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %8, i32 0, i32 0, !dbg !2793
  %10 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %9, i32 0, i32 2, !dbg !2794
  %11 = load i32, i32* %10, align 8, !dbg !2794
  %12 = icmp ne i32 %11, 2, !dbg !2795
  br i1 %12, label %13, label %14, !dbg !2796

13:                                               ; preds = %2
  store i64 -2147483636, i64* %3, align 8, !dbg !2797
  br label %28, !dbg !2797

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8, !dbg !2799
  %16 = call zeroext i16 @__mqtt_unpack_uint16(i8* %15), !dbg !2800
  %17 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2801
  %18 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %17, i32 0, i32 1, !dbg !2802
  %19 = bitcast %union.anon* %18 to %struct.mqtt_response_puback*, !dbg !2803
  %20 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %19, i32 0, i32 0, !dbg !2804
  store i16 %16, i16* %20, align 8, !dbg !2805
  %21 = load i8*, i8** %5, align 8, !dbg !2806
  %22 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !2806
  store i8* %22, i8** %5, align 8, !dbg !2806
  %23 = load i8*, i8** %5, align 8, !dbg !2807
  %24 = load i8*, i8** %6, align 8, !dbg !2808
  %25 = ptrtoint i8* %23 to i64, !dbg !2809
  %26 = ptrtoint i8* %24 to i64, !dbg !2809
  %27 = sub i64 %25, %26, !dbg !2809
  store i64 %27, i64* %3, align 8, !dbg !2810
  br label %28, !dbg !2810

28:                                               ; preds = %14, %13
  %29 = load i64, i64* %3, align 8, !dbg !2811
  ret i64 %29, !dbg !2811
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @__mqtt_unpack_uint16(i8* %0) #0 !dbg !2812 {
  %2 = alloca i8*, align 8
  %3 = alloca i16, align 2
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.declare(metadata i16* %3, metadata !2817, metadata !DIExpression()), !dbg !2818
  %4 = bitcast i16* %3 to i8*, !dbg !2819
  %5 = load i8*, i8** %2, align 8, !dbg !2820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %4, i8* align 1 %5, i64 2, i1 false), !dbg !2819
  %6 = load i16, i16* %3, align 2, !dbg !2821
  %7 = call zeroext i16 @ntohs(i16 zeroext %6) #12, !dbg !2821
  ret i16 %7, !dbg !2822
}

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @ntohs(i16 zeroext) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @__mqtt_next_pid(%struct.mqtt_client.7* %0) #0 !dbg !2823 {
  %2 = alloca %struct.mqtt_client.7*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mqtt_queued_message*, align 8
  %5 = alloca i32, align 4
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %2, metadata !2826, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2828, metadata !DIExpression()), !dbg !2829
  store i32 0, i32* %3, align 4, !dbg !2829
  %6 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2830
  %7 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %6, i32 0, i32 1, !dbg !2832
  %8 = load i16, i16* %7, align 4, !dbg !2832
  %9 = zext i16 %8 to i32, !dbg !2830
  %10 = icmp eq i32 %9, 0, !dbg !2833
  br i1 %10, label %11, label %14, !dbg !2834

11:                                               ; preds = %1
  %12 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2835
  %13 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %12, i32 0, i32 1, !dbg !2837
  store i16 163, i16* %13, align 4, !dbg !2838
  br label %14, !dbg !2839

14:                                               ; preds = %11, %1
  br label %15, !dbg !2840

15:                                               ; preds = %67, %14
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %4, metadata !2841, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2844, metadata !DIExpression()), !dbg !2845
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2846
  %17 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %16, i32 0, i32 1, !dbg !2847
  %18 = load i16, i16* %17, align 4, !dbg !2847
  %19 = zext i16 %18 to i32, !dbg !2846
  %20 = and i32 %19, 1, !dbg !2848
  store i32 %20, i32* %5, align 4, !dbg !2845
  %21 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2849
  %22 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %21, i32 0, i32 1, !dbg !2850
  %23 = load i16, i16* %22, align 4, !dbg !2851
  %24 = zext i16 %23 to i32, !dbg !2851
  %25 = ashr i32 %24, 1, !dbg !2851
  %26 = trunc i32 %25 to i16, !dbg !2851
  store i16 %26, i16* %22, align 4, !dbg !2851
  %27 = load i32, i32* %5, align 4, !dbg !2852
  %28 = icmp ne i32 %27, 0, !dbg !2852
  br i1 %28, label %29, label %36, !dbg !2854

29:                                               ; preds = %15
  %30 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2855
  %31 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %30, i32 0, i32 1, !dbg !2857
  %32 = load i16, i16* %31, align 4, !dbg !2858
  %33 = zext i16 %32 to i32, !dbg !2858
  %34 = xor i32 %33, 46080, !dbg !2858
  %35 = trunc i32 %34 to i16, !dbg !2858
  store i16 %35, i16* %31, align 4, !dbg !2858
  br label %36, !dbg !2859

36:                                               ; preds = %29, %15
  store i32 0, i32* %3, align 4, !dbg !2860
  %37 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2861
  %38 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %37, i32 0, i32 17, !dbg !2861
  %39 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %38, i32 0, i32 1, !dbg !2861
  %40 = load i8*, i8** %39, align 8, !dbg !2861
  %41 = bitcast i8* %40 to %struct.mqtt_queued_message*, !dbg !2861
  %42 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %41, i64 -1, !dbg !2861
  %43 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %42, i64 0, !dbg !2861
  store %struct.mqtt_queued_message* %43, %struct.mqtt_queued_message** %4, align 8, !dbg !2863
  br label %44, !dbg !2864

44:                                               ; preds = %63, %36
  %45 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %4, align 8, !dbg !2865
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2867
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !2868
  %48 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %47, i32 0, i32 4, !dbg !2869
  %49 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %48, align 8, !dbg !2869
  %50 = icmp uge %struct.mqtt_queued_message* %45, %49, !dbg !2870
  br i1 %50, label %51, label %66, !dbg !2871

51:                                               ; preds = %44
  %52 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %4, align 8, !dbg !2872
  %53 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %52, i32 0, i32 5, !dbg !2875
  %54 = load i16, i16* %53, align 4, !dbg !2875
  %55 = zext i16 %54 to i32, !dbg !2872
  %56 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2876
  %57 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %56, i32 0, i32 1, !dbg !2877
  %58 = load i16, i16* %57, align 4, !dbg !2877
  %59 = zext i16 %58 to i32, !dbg !2876
  %60 = icmp eq i32 %55, %59, !dbg !2878
  br i1 %60, label %61, label %62, !dbg !2879

61:                                               ; preds = %51
  store i32 1, i32* %3, align 4, !dbg !2880
  br label %66, !dbg !2882

62:                                               ; preds = %51
  br label %63, !dbg !2883

63:                                               ; preds = %62
  %64 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %4, align 8, !dbg !2884
  %65 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %64, i32 -1, !dbg !2884
  store %struct.mqtt_queued_message* %65, %struct.mqtt_queued_message** %4, align 8, !dbg !2884
  br label %44, !dbg !2885, !llvm.loop !2886

66:                                               ; preds = %61, %44
  br label %67, !dbg !2888

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4, !dbg !2889
  %69 = icmp ne i32 %68, 0, !dbg !2888
  br i1 %69, label %15, label %70, !dbg !2888, !llvm.loop !2890

70:                                               ; preds = %67
  %71 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2892
  %72 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %71, i32 0, i32 1, !dbg !2893
  %73 = load i16, i16* %72, align 4, !dbg !2893
  ret i16 %73, !dbg !2894
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_init(%struct.mqtt_client.7* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5, void (i8**, %struct.mqtt_response_publish*)* %6) #0 !dbg !2895 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mqtt_client.7*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca void (i8**, %struct.mqtt_response_publish*)*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %9, metadata !2898, metadata !DIExpression()), !dbg !2899
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2900, metadata !DIExpression()), !dbg !2901
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2902, metadata !DIExpression()), !dbg !2903
  store i64 %3, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2904, metadata !DIExpression()), !dbg !2905
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2906, metadata !DIExpression()), !dbg !2907
  store i64 %5, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2908, metadata !DIExpression()), !dbg !2909
  store void (i8**, %struct.mqtt_response_publish*)* %6, void (i8**, %struct.mqtt_response_publish*)** %15, align 8
  call void @llvm.dbg.declare(metadata void (i8**, %struct.mqtt_response_publish*)** %15, metadata !2910, metadata !DIExpression()), !dbg !2911
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2912
  %17 = icmp eq %struct.mqtt_client.7* %16, null, !dbg !2914
  br i1 %17, label %24, label %18, !dbg !2915

18:                                               ; preds = %7
  %19 = load i8*, i8** %11, align 8, !dbg !2916
  %20 = icmp eq i8* %19, null, !dbg !2917
  br i1 %20, label %24, label %21, !dbg !2918

21:                                               ; preds = %18
  %22 = load i8*, i8** %13, align 8, !dbg !2919
  %23 = icmp eq i8* %22, null, !dbg !2920
  br i1 %23, label %24, label %25, !dbg !2921

24:                                               ; preds = %21, %18, %7
  store i32 -2147483647, i32* %8, align 4, !dbg !2922
  br label %85, !dbg !2922

25:                                               ; preds = %21
  %26 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2924
  %27 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %26, i32 0, i32 16, !dbg !2924
  %28 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %27, %union.pthread_mutexattr_t* null) #10, !dbg !2924
  %29 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2925
  %30 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %29, i32 0, i32 16, !dbg !2925
  %31 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %30) #10, !dbg !2925
  %32 = load i32, i32* %10, align 4, !dbg !2926
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2927
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 0, !dbg !2928
  store i32 %32, i32* %34, align 8, !dbg !2929
  %35 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2930
  %36 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %35, i32 0, i32 17, !dbg !2931
  %37 = load i8*, i8** %11, align 8, !dbg !2932
  %38 = load i64, i64* %12, align 8, !dbg !2933
  call void @mqtt_mq_init(%struct.mqtt_message_queue* %36, i8* %37, i64 %38), !dbg !2934
  %39 = load i8*, i8** %13, align 8, !dbg !2935
  %40 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2936
  %41 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %40, i32 0, i32 15, !dbg !2937
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0, !dbg !2938
  store i8* %39, i8** %42, align 8, !dbg !2939
  %43 = load i64, i64* %14, align 8, !dbg !2940
  %44 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2941
  %45 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %44, i32 0, i32 15, !dbg !2942
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 1, !dbg !2943
  store i64 %43, i64* %46, align 8, !dbg !2944
  %47 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2945
  %48 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %47, i32 0, i32 15, !dbg !2946
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0, !dbg !2947
  %50 = load i8*, i8** %49, align 8, !dbg !2947
  %51 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2948
  %52 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %51, i32 0, i32 15, !dbg !2949
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 2, !dbg !2950
  store i8* %50, i8** %53, align 8, !dbg !2951
  %54 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2952
  %55 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %54, i32 0, i32 15, !dbg !2953
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 1, !dbg !2954
  %57 = load i64, i64* %56, align 8, !dbg !2954
  %58 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2955
  %59 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %58, i32 0, i32 15, !dbg !2956
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 3, !dbg !2957
  store i64 %57, i64* %60, align 8, !dbg !2958
  %61 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2959
  %62 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %61, i32 0, i32 6, !dbg !2960
  store i32 -2147483633, i32* %62, align 8, !dbg !2961
  %63 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2962
  %64 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %63, i32 0, i32 7, !dbg !2963
  store i32 30, i32* %64, align 4, !dbg !2964
  %65 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2965
  %66 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %65, i32 0, i32 8, !dbg !2966
  store i32 0, i32* %66, align 8, !dbg !2967
  %67 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2968
  %68 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %67, i32 0, i32 3, !dbg !2969
  store i32 0, i32* %68, align 8, !dbg !2970
  %69 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2971
  %70 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %69, i32 0, i32 9, !dbg !2972
  store double -1.000000e+00, double* %70, align 8, !dbg !2973
  %71 = load void (i8**, %struct.mqtt_response_publish*)*, void (i8**, %struct.mqtt_response_publish*)** %15, align 8, !dbg !2974
  %72 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2975
  %73 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %72, i32 0, i32 10, !dbg !2976
  store void (i8**, %struct.mqtt_response_publish*)* %71, void (i8**, %struct.mqtt_response_publish*)** %73, align 8, !dbg !2977
  %74 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2978
  %75 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %74, i32 0, i32 1, !dbg !2979
  store i16 0, i16* %75, align 4, !dbg !2980
  %76 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2981
  %77 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %76, i32 0, i32 4, !dbg !2982
  store i64 0, i64* %77, align 8, !dbg !2983
  %78 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2984
  %79 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %78, i32 0, i32 12, !dbg !2985
  %80 = bitcast {}** %79 to i32 (%struct.mqtt_client.7*)**, !dbg !2985
  store i32 (%struct.mqtt_client.7*)* null, i32 (%struct.mqtt_client.7*)** %80, align 8, !dbg !2986
  %81 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2987
  %82 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %81, i32 0, i32 13, !dbg !2988
  store void (%struct.mqtt_client.7*, i8**)* null, void (%struct.mqtt_client.7*, i8**)** %82, align 8, !dbg !2989
  %83 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2990
  %84 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %83, i32 0, i32 14, !dbg !2991
  store i8* null, i8** %84, align 8, !dbg !2992
  store i32 1, i32* %8, align 4, !dbg !2993
  br label %85, !dbg !2993

85:                                               ; preds = %25, %24
  %86 = load i32, i32* %8, align 4, !dbg !2994
  ret i32 %86, !dbg !2994
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mqtt_mq_init(%struct.mqtt_message_queue* %0, i8* %1, i64 %2) #0 !dbg !2995 {
  %4 = alloca %struct.mqtt_message_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mqtt_message_queue* %0, %struct.mqtt_message_queue** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_message_queue** %4, metadata !2998, metadata !DIExpression()), !dbg !2999
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3000, metadata !DIExpression()), !dbg !3001
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3002, metadata !DIExpression()), !dbg !3003
  %7 = load i8*, i8** %5, align 8, !dbg !3004
  %8 = icmp ne i8* %7, null, !dbg !3006
  br i1 %8, label %9, label %53, !dbg !3007

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8, !dbg !3008
  %11 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3010
  %12 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %11, i32 0, i32 0, !dbg !3011
  store i8* %10, i8** %12, align 8, !dbg !3012
  %13 = load i8*, i8** %5, align 8, !dbg !3013
  %14 = load i64, i64* %6, align 8, !dbg !3014
  %15 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !3015
  %16 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3016
  %17 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %16, i32 0, i32 1, !dbg !3017
  store i8* %15, i8** %17, align 8, !dbg !3018
  %18 = load i8*, i8** %5, align 8, !dbg !3019
  %19 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3020
  %20 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %19, i32 0, i32 2, !dbg !3021
  store i8* %18, i8** %20, align 8, !dbg !3022
  %21 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3023
  %22 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %21, i32 0, i32 1, !dbg !3024
  %23 = load i8*, i8** %22, align 8, !dbg !3024
  %24 = bitcast i8* %23 to %struct.mqtt_queued_message*, !dbg !3023
  %25 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3025
  %26 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %25, i32 0, i32 4, !dbg !3026
  store %struct.mqtt_queued_message* %24, %struct.mqtt_queued_message** %26, align 8, !dbg !3027
  %27 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3028
  %28 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %27, i32 0, i32 2, !dbg !3028
  %29 = load i8*, i8** %28, align 8, !dbg !3028
  %30 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3028
  %31 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %30, i32 0, i32 4, !dbg !3028
  %32 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %31, align 8, !dbg !3028
  %33 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %32, i64 -1, !dbg !3028
  %34 = bitcast %struct.mqtt_queued_message* %33 to i8*, !dbg !3028
  %35 = icmp uge i8* %29, %34, !dbg !3028
  br i1 %35, label %36, label %37, !dbg !3028

36:                                               ; preds = %9
  br label %49, !dbg !3028

37:                                               ; preds = %9
  %38 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3028
  %39 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %38, i32 0, i32 4, !dbg !3028
  %40 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %39, align 8, !dbg !3028
  %41 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %40, i64 -1, !dbg !3028
  %42 = bitcast %struct.mqtt_queued_message* %41 to i8*, !dbg !3028
  %43 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3028
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 2, !dbg !3028
  %45 = load i8*, i8** %44, align 8, !dbg !3028
  %46 = ptrtoint i8* %42 to i64, !dbg !3028
  %47 = ptrtoint i8* %45 to i64, !dbg !3028
  %48 = sub i64 %46, %47, !dbg !3028
  br label %49, !dbg !3028

49:                                               ; preds = %37, %36
  %50 = phi i64 [ 0, %36 ], [ %48, %37 ], !dbg !3028
  %51 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3029
  %52 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %51, i32 0, i32 3, !dbg !3030
  store i64 %50, i64* %52, align 8, !dbg !3031
  br label %53, !dbg !3032

53:                                               ; preds = %49, %3
  ret void, !dbg !3033
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mqtt_init_reconnect(%struct.mqtt_client.7* %0, void (%struct.mqtt_client.7*, i8**)* %1, i8* %2, void (i8**, %struct.mqtt_response_publish*)* %3) #0 !dbg !3034 {
  %5 = alloca %struct.mqtt_client.7*, align 8
  %6 = alloca void (%struct.mqtt_client.7*, i8**)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (i8**, %struct.mqtt_response_publish*)*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %5, metadata !3037, metadata !DIExpression()), !dbg !3038
  store void (%struct.mqtt_client.7*, i8**)* %1, void (%struct.mqtt_client.7*, i8**)** %6, align 8
  call void @llvm.dbg.declare(metadata void (%struct.mqtt_client.7*, i8**)** %6, metadata !3039, metadata !DIExpression()), !dbg !3040
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3041, metadata !DIExpression()), !dbg !3042
  store void (i8**, %struct.mqtt_response_publish*)* %3, void (i8**, %struct.mqtt_response_publish*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8**, %struct.mqtt_response_publish*)** %8, metadata !3043, metadata !DIExpression()), !dbg !3044
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3045
  %10 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %9, i32 0, i32 16, !dbg !3045
  %11 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %10, %union.pthread_mutexattr_t* null) #10, !dbg !3045
  %12 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3046
  %13 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %12, i32 0, i32 0, !dbg !3047
  store i32 -1, i32* %13, align 8, !dbg !3048
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3049
  %15 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %14, i32 0, i32 17, !dbg !3050
  call void @mqtt_mq_init(%struct.mqtt_message_queue* %15, i8* null, i64 0), !dbg !3051
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3052
  %17 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %16, i32 0, i32 15, !dbg !3053
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0, !dbg !3054
  store i8* null, i8** %18, align 8, !dbg !3055
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3056
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 15, !dbg !3057
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1, !dbg !3058
  store i64 0, i64* %21, align 8, !dbg !3059
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3060
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 15, !dbg !3061
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 2, !dbg !3062
  store i8* null, i8** %24, align 8, !dbg !3063
  %25 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3064
  %26 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %25, i32 0, i32 15, !dbg !3065
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 3, !dbg !3066
  store i64 0, i64* %27, align 8, !dbg !3067
  %28 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3068
  %29 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %28, i32 0, i32 6, !dbg !3069
  store i32 -2147483623, i32* %29, align 8, !dbg !3070
  %30 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3071
  %31 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %30, i32 0, i32 7, !dbg !3072
  store i32 30, i32* %31, align 4, !dbg !3073
  %32 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3074
  %33 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %32, i32 0, i32 8, !dbg !3075
  store i32 0, i32* %33, align 8, !dbg !3076
  %34 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3077
  %35 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %34, i32 0, i32 3, !dbg !3078
  store i32 0, i32* %35, align 8, !dbg !3079
  %36 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3080
  %37 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %36, i32 0, i32 9, !dbg !3081
  store double -1.000000e+00, double* %37, align 8, !dbg !3082
  %38 = load void (i8**, %struct.mqtt_response_publish*)*, void (i8**, %struct.mqtt_response_publish*)** %8, align 8, !dbg !3083
  %39 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3084
  %40 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %39, i32 0, i32 10, !dbg !3085
  store void (i8**, %struct.mqtt_response_publish*)* %38, void (i8**, %struct.mqtt_response_publish*)** %40, align 8, !dbg !3086
  %41 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3087
  %42 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %41, i32 0, i32 4, !dbg !3088
  store i64 0, i64* %42, align 8, !dbg !3089
  %43 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3090
  %44 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %43, i32 0, i32 12, !dbg !3091
  %45 = bitcast {}** %44 to i32 (%struct.mqtt_client.7*)**, !dbg !3091
  store i32 (%struct.mqtt_client.7*)* null, i32 (%struct.mqtt_client.7*)** %45, align 8, !dbg !3092
  %46 = load void (%struct.mqtt_client.7*, i8**)*, void (%struct.mqtt_client.7*, i8**)** %6, align 8, !dbg !3093
  %47 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3094
  %48 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %47, i32 0, i32 13, !dbg !3095
  store void (%struct.mqtt_client.7*, i8**)* %46, void (%struct.mqtt_client.7*, i8**)** %48, align 8, !dbg !3096
  %49 = load i8*, i8** %7, align 8, !dbg !3097
  %50 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3098
  %51 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %50, i32 0, i32 14, !dbg !3099
  store i8* %49, i8** %51, align 8, !dbg !3100
  ret void, !dbg !3101
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mqtt_reinit(%struct.mqtt_client.7* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 !dbg !3102 {
  %7 = alloca %struct.mqtt_client.7*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %7, metadata !3105, metadata !DIExpression()), !dbg !3106
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3107, metadata !DIExpression()), !dbg !3108
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3109, metadata !DIExpression()), !dbg !3110
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3111, metadata !DIExpression()), !dbg !3112
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3113, metadata !DIExpression()), !dbg !3114
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3115, metadata !DIExpression()), !dbg !3116
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3117
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 6, !dbg !3118
  store i32 -2147483633, i32* %14, align 8, !dbg !3119
  %15 = load i32, i32* %8, align 4, !dbg !3120
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3121
  %17 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %16, i32 0, i32 0, !dbg !3122
  store i32 %15, i32* %17, align 8, !dbg !3123
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3124
  %19 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %18, i32 0, i32 17, !dbg !3125
  %20 = load i8*, i8** %9, align 8, !dbg !3126
  %21 = load i64, i64* %10, align 8, !dbg !3127
  call void @mqtt_mq_init(%struct.mqtt_message_queue* %19, i8* %20, i64 %21), !dbg !3128
  %22 = load i8*, i8** %11, align 8, !dbg !3129
  %23 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3130
  %24 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %23, i32 0, i32 15, !dbg !3131
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0, !dbg !3132
  store i8* %22, i8** %25, align 8, !dbg !3133
  %26 = load i64, i64* %12, align 8, !dbg !3134
  %27 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3135
  %28 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %27, i32 0, i32 15, !dbg !3136
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 1, !dbg !3137
  store i64 %26, i64* %29, align 8, !dbg !3138
  %30 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3139
  %31 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %30, i32 0, i32 15, !dbg !3140
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0, !dbg !3141
  %33 = load i8*, i8** %32, align 8, !dbg !3141
  %34 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3142
  %35 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %34, i32 0, i32 15, !dbg !3143
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 2, !dbg !3144
  store i8* %33, i8** %36, align 8, !dbg !3145
  %37 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3146
  %38 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %37, i32 0, i32 15, !dbg !3147
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 1, !dbg !3148
  %40 = load i64, i64* %39, align 8, !dbg !3148
  %41 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3149
  %42 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %41, i32 0, i32 15, !dbg !3150
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 3, !dbg !3151
  store i64 %40, i64* %43, align 8, !dbg !3152
  ret void, !dbg !3153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_connect(%struct.mqtt_client.7* %0, i8* %1, i8* %2, i8* %3, i64 %4, i8* %5, i8* %6, i8 zeroext %7, i16 zeroext %8) #0 !dbg !3154 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mqtt_client.7*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i16, align 2
  %20 = alloca i64, align 8
  %21 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %11, metadata !3157, metadata !DIExpression()), !dbg !3158
  store i8* %1, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3159, metadata !DIExpression()), !dbg !3160
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i8* %3, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3163, metadata !DIExpression()), !dbg !3164
  store i64 %4, i64* %15, align 8
  call void @llvm.dbg.declare(metadata i64* %15, metadata !3165, metadata !DIExpression()), !dbg !3166
  store i8* %5, i8** %16, align 8
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3167, metadata !DIExpression()), !dbg !3168
  store i8* %6, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !3169, metadata !DIExpression()), !dbg !3170
  store i8 %7, i8* %18, align 1
  call void @llvm.dbg.declare(metadata i8* %18, metadata !3171, metadata !DIExpression()), !dbg !3172
  store i16 %8, i16* %19, align 2
  call void @llvm.dbg.declare(metadata i16* %19, metadata !3173, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.declare(metadata i64* %20, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %21, metadata !3177, metadata !DIExpression()), !dbg !3178
  %22 = load i16, i16* %19, align 2, !dbg !3179
  %23 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3180
  %24 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %23, i32 0, i32 2, !dbg !3181
  store i16 %22, i16* %24, align 2, !dbg !3182
  %25 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3183
  %26 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %25, i32 0, i32 6, !dbg !3185
  %27 = load i32, i32* %26, align 8, !dbg !3185
  %28 = icmp eq i32 %27, -2147483633, !dbg !3186
  br i1 %28, label %29, label %32, !dbg !3187

29:                                               ; preds = %9
  %30 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3188
  %31 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %30, i32 0, i32 6, !dbg !3190
  store i32 1, i32* %31, align 8, !dbg !3191
  br label %32, !dbg !3192

32:                                               ; preds = %29, %9
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3193
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 6, !dbg !3193
  %35 = load i32, i32* %34, align 8, !dbg !3193
  %36 = icmp slt i32 %35, 0, !dbg !3193
  br i1 %36, label %37, label %44, !dbg !3195

37:                                               ; preds = %32
  %38 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3196
  %39 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %38, i32 0, i32 16, !dbg !3196
  %40 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %39) #10, !dbg !3196
  %41 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3199
  %42 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %41, i32 0, i32 6, !dbg !3199
  %43 = load i32, i32* %42, align 8, !dbg !3199
  store i32 %43, i32* %10, align 4, !dbg !3199
  br label %131, !dbg !3199

44:                                               ; preds = %32
  %45 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3195
  %46 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %45, i32 0, i32 17, !dbg !3195
  %47 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %46, i32 0, i32 2, !dbg !3195
  %48 = load i8*, i8** %47, align 8, !dbg !3195
  %49 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3195
  %50 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %49, i32 0, i32 17, !dbg !3195
  %51 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %50, i32 0, i32 3, !dbg !3195
  %52 = load i64, i64* %51, align 8, !dbg !3195
  %53 = load i8*, i8** %12, align 8, !dbg !3195
  %54 = load i8*, i8** %13, align 8, !dbg !3195
  %55 = load i8*, i8** %14, align 8, !dbg !3195
  %56 = load i64, i64* %15, align 8, !dbg !3195
  %57 = load i8*, i8** %16, align 8, !dbg !3195
  %58 = load i8*, i8** %17, align 8, !dbg !3195
  %59 = load i8, i8* %18, align 1, !dbg !3195
  %60 = load i16, i16* %19, align 2, !dbg !3195
  %61 = call i64 @mqtt_pack_connection_request(i8* %48, i64 %52, i8* %53, i8* %54, i8* %55, i64 %56, i8* %57, i8* %58, i8 zeroext %59, i16 zeroext %60), !dbg !3195
  store i64 %61, i64* %20, align 8, !dbg !3195
  %62 = load i64, i64* %20, align 8, !dbg !3200
  %63 = icmp slt i64 %62, 0, !dbg !3200
  br i1 %63, label %64, label %74, !dbg !3195

64:                                               ; preds = %44
  %65 = load i64, i64* %20, align 8, !dbg !3202
  %66 = trunc i64 %65 to i32, !dbg !3202
  %67 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3202
  %68 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %67, i32 0, i32 6, !dbg !3202
  store i32 %66, i32* %68, align 8, !dbg !3202
  %69 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3204
  %70 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %69, i32 0, i32 16, !dbg !3204
  %71 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %70) #10, !dbg !3204
  %72 = load i64, i64* %20, align 8, !dbg !3202
  %73 = trunc i64 %72 to i32, !dbg !3202
  store i32 %73, i32* %10, align 4, !dbg !3202
  br label %131, !dbg !3202

74:                                               ; preds = %44
  %75 = load i64, i64* %20, align 8, !dbg !3206
  %76 = icmp eq i64 %75, 0, !dbg !3206
  br i1 %76, label %77, label %120, !dbg !3200

77:                                               ; preds = %74
  %78 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3208
  %79 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %78, i32 0, i32 17, !dbg !3208
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %79), !dbg !3208
  %80 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3208
  %81 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %80, i32 0, i32 17, !dbg !3208
  %82 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %81, i32 0, i32 2, !dbg !3208
  %83 = load i8*, i8** %82, align 8, !dbg !3208
  %84 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3208
  %85 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %84, i32 0, i32 17, !dbg !3208
  %86 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %85, i32 0, i32 3, !dbg !3208
  %87 = load i64, i64* %86, align 8, !dbg !3208
  %88 = load i8*, i8** %12, align 8, !dbg !3208
  %89 = load i8*, i8** %13, align 8, !dbg !3208
  %90 = load i8*, i8** %14, align 8, !dbg !3208
  %91 = load i64, i64* %15, align 8, !dbg !3208
  %92 = load i8*, i8** %16, align 8, !dbg !3208
  %93 = load i8*, i8** %17, align 8, !dbg !3208
  %94 = load i8, i8* %18, align 1, !dbg !3208
  %95 = load i16, i16* %19, align 2, !dbg !3208
  %96 = call i64 @mqtt_pack_connection_request(i8* %83, i64 %87, i8* %88, i8* %89, i8* %90, i64 %91, i8* %92, i8* %93, i8 zeroext %94, i16 zeroext %95), !dbg !3208
  store i64 %96, i64* %20, align 8, !dbg !3208
  %97 = load i64, i64* %20, align 8, !dbg !3210
  %98 = icmp slt i64 %97, 0, !dbg !3210
  br i1 %98, label %99, label %109, !dbg !3208

99:                                               ; preds = %77
  %100 = load i64, i64* %20, align 8, !dbg !3212
  %101 = trunc i64 %100 to i32, !dbg !3212
  %102 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3212
  %103 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %102, i32 0, i32 6, !dbg !3212
  store i32 %101, i32* %103, align 8, !dbg !3212
  %104 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3214
  %105 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %104, i32 0, i32 16, !dbg !3214
  %106 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %105) #10, !dbg !3214
  %107 = load i64, i64* %20, align 8, !dbg !3212
  %108 = trunc i64 %107 to i32, !dbg !3212
  store i32 %108, i32* %10, align 4, !dbg !3212
  br label %131, !dbg !3212

109:                                              ; preds = %77
  %110 = load i64, i64* %20, align 8, !dbg !3216
  %111 = icmp eq i64 %110, 0, !dbg !3216
  br i1 %111, label %112, label %118, !dbg !3210

112:                                              ; preds = %109
  %113 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3218
  %114 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %113, i32 0, i32 6, !dbg !3218
  store i32 -2147483632, i32* %114, align 8, !dbg !3218
  %115 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3220
  %116 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %115, i32 0, i32 16, !dbg !3220
  %117 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %116) #10, !dbg !3220
  store i32 -2147483632, i32* %10, align 4, !dbg !3218
  br label %131, !dbg !3218

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  br label %120, !dbg !3208

120:                                              ; preds = %119, %74
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3195
  %123 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %122, i32 0, i32 17, !dbg !3195
  %124 = load i64, i64* %20, align 8, !dbg !3195
  %125 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %123, i64 %124), !dbg !3195
  store %struct.mqtt_queued_message* %125, %struct.mqtt_queued_message** %21, align 8, !dbg !3195
  %126 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %21, align 8, !dbg !3222
  %127 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %126, i32 0, i32 4, !dbg !3223
  store i32 1, i32* %127, align 8, !dbg !3224
  %128 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3225
  %129 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %128, i32 0, i32 16, !dbg !3225
  %130 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %129) #10, !dbg !3225
  store i32 1, i32* %10, align 4, !dbg !3226
  br label %131, !dbg !3226

131:                                              ; preds = %121, %112, %99, %64, %37
  %132 = load i32, i32* %10, align 4, !dbg !3227
  ret i32 %132, !dbg !3227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_connection_request(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i64 %5, i8* %6, i8* %7, i8 zeroext %8, i16 zeroext %9) #0 !dbg !3228 {
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i16, align 2
  %22 = alloca %struct.mqtt_fixed_header, align 4
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8, align 1
  store i8* %0, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3231, metadata !DIExpression()), !dbg !3232
  store i64 %1, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3233, metadata !DIExpression()), !dbg !3234
  store i8* %2, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3235, metadata !DIExpression()), !dbg !3236
  store i8* %3, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3237, metadata !DIExpression()), !dbg !3238
  store i8* %4, i8** %16, align 8
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3239, metadata !DIExpression()), !dbg !3240
  store i64 %5, i64* %17, align 8
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3241, metadata !DIExpression()), !dbg !3242
  store i8* %6, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !3243, metadata !DIExpression()), !dbg !3244
  store i8* %7, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !3245, metadata !DIExpression()), !dbg !3246
  store i8 %8, i8* %20, align 1
  call void @llvm.dbg.declare(metadata i8* %20, metadata !3247, metadata !DIExpression()), !dbg !3248
  store i16 %9, i16* %21, align 2
  call void @llvm.dbg.declare(metadata i16* %21, metadata !3249, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %22, metadata !3251, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.declare(metadata i64* %23, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.declare(metadata i8** %24, metadata !3255, metadata !DIExpression()), !dbg !3256
  %27 = load i8*, i8** %12, align 8, !dbg !3257
  store i8* %27, i8** %24, align 8, !dbg !3256
  call void @llvm.dbg.declare(metadata i64* %25, metadata !3258, metadata !DIExpression()), !dbg !3259
  %28 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %22, i32 0, i32 0, !dbg !3260
  store i32 1, i32* %28, align 4, !dbg !3261
  %29 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %22, i32 0, i32 1, !dbg !3262
  %30 = load i8, i8* %29, align 4, !dbg !3263
  %31 = and i8 %30, -16, !dbg !3263
  store i8 %31, i8* %29, align 4, !dbg !3263
  %32 = load i8, i8* %20, align 1, !dbg !3264
  %33 = zext i8 %32 to i32, !dbg !3264
  %34 = and i32 %33, -2, !dbg !3265
  %35 = trunc i32 %34 to i8, !dbg !3264
  store i8 %35, i8* %20, align 1, !dbg !3266
  store i64 10, i64* %23, align 8, !dbg !3267
  %36 = load i8*, i8** %14, align 8, !dbg !3268
  %37 = icmp eq i8* %36, null, !dbg !3270
  br i1 %37, label %38, label %39, !dbg !3271

38:                                               ; preds = %10
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8** %14, align 8, !dbg !3272
  br label %39, !dbg !3274

39:                                               ; preds = %38, %10
  %40 = load i8*, i8** %14, align 8, !dbg !3275
  %41 = getelementptr inbounds i8, i8* %40, i64 0, !dbg !3275
  %42 = load i8, i8* %41, align 1, !dbg !3275
  %43 = sext i8 %42 to i32, !dbg !3275
  %44 = icmp eq i32 %43, 0, !dbg !3277
  br i1 %44, label %45, label %51, !dbg !3278

45:                                               ; preds = %39
  %46 = load i8, i8* %20, align 1, !dbg !3279
  %47 = zext i8 %46 to i32, !dbg !3279
  %48 = and i32 %47, 2, !dbg !3280
  %49 = icmp ne i32 %48, 0, !dbg !3280
  br i1 %49, label %51, label %50, !dbg !3281

50:                                               ; preds = %45
  store i64 -2147483621, i64* %11, align 8, !dbg !3282
  br label %237, !dbg !3282

51:                                               ; preds = %45, %39
  %52 = load i8*, i8** %14, align 8, !dbg !3284
  %53 = call i64 @strlen(i8* %52) #13, !dbg !3284
  %54 = add i64 2, %53, !dbg !3284
  %55 = load i64, i64* %23, align 8, !dbg !3285
  %56 = add i64 %55, %54, !dbg !3285
  store i64 %56, i64* %23, align 8, !dbg !3285
  %57 = load i8*, i8** %15, align 8, !dbg !3286
  %58 = icmp ne i8* %57, null, !dbg !3288
  br i1 %58, label %59, label %86, !dbg !3289

59:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata i8* %26, metadata !3290, metadata !DIExpression()), !dbg !3292
  %60 = load i8, i8* %20, align 1, !dbg !3293
  %61 = zext i8 %60 to i32, !dbg !3293
  %62 = or i32 %61, 4, !dbg !3293
  %63 = trunc i32 %62 to i8, !dbg !3293
  store i8 %63, i8* %20, align 1, !dbg !3293
  %64 = load i8*, i8** %15, align 8, !dbg !3294
  %65 = call i64 @strlen(i8* %64) #13, !dbg !3294
  %66 = add i64 2, %65, !dbg !3294
  %67 = load i64, i64* %23, align 8, !dbg !3295
  %68 = add i64 %67, %66, !dbg !3295
  store i64 %68, i64* %23, align 8, !dbg !3295
  %69 = load i8*, i8** %16, align 8, !dbg !3296
  %70 = icmp eq i8* %69, null, !dbg !3298
  br i1 %70, label %71, label %72, !dbg !3299

71:                                               ; preds = %59
  store i64 -2147483642, i64* %11, align 8, !dbg !3300
  br label %237, !dbg !3300

72:                                               ; preds = %59
  %73 = load i64, i64* %17, align 8, !dbg !3302
  %74 = add i64 2, %73, !dbg !3303
  %75 = load i64, i64* %23, align 8, !dbg !3304
  %76 = add i64 %75, %74, !dbg !3304
  store i64 %76, i64* %23, align 8, !dbg !3304
  %77 = load i8, i8* %20, align 1, !dbg !3305
  %78 = zext i8 %77 to i32, !dbg !3305
  %79 = and i32 %78, 24, !dbg !3306
  %80 = trunc i32 %79 to i8, !dbg !3305
  store i8 %80, i8* %26, align 1, !dbg !3307
  %81 = load i8, i8* %26, align 1, !dbg !3308
  %82 = zext i8 %81 to i32, !dbg !3308
  %83 = icmp eq i32 %82, 24, !dbg !3310
  br i1 %83, label %84, label %85, !dbg !3311

84:                                               ; preds = %72
  store i64 -2147483641, i64* %11, align 8, !dbg !3312
  br label %237, !dbg !3312

85:                                               ; preds = %72
  br label %99, !dbg !3314

86:                                               ; preds = %51
  %87 = load i8, i8* %20, align 1, !dbg !3315
  %88 = zext i8 %87 to i32, !dbg !3315
  %89 = and i32 %88, -5, !dbg !3315
  %90 = trunc i32 %89 to i8, !dbg !3315
  store i8 %90, i8* %20, align 1, !dbg !3315
  %91 = load i8, i8* %20, align 1, !dbg !3317
  %92 = zext i8 %91 to i32, !dbg !3317
  %93 = and i32 %92, -25, !dbg !3317
  %94 = trunc i32 %93 to i8, !dbg !3317
  store i8 %94, i8* %20, align 1, !dbg !3317
  %95 = load i8, i8* %20, align 1, !dbg !3318
  %96 = zext i8 %95 to i32, !dbg !3318
  %97 = and i32 %96, -33, !dbg !3318
  %98 = trunc i32 %97 to i8, !dbg !3318
  store i8 %98, i8* %20, align 1, !dbg !3318
  br label %99

99:                                               ; preds = %86, %85
  %100 = load i8*, i8** %18, align 8, !dbg !3319
  %101 = icmp ne i8* %100, null, !dbg !3321
  br i1 %101, label %102, label %112, !dbg !3322

102:                                              ; preds = %99
  %103 = load i8, i8* %20, align 1, !dbg !3323
  %104 = zext i8 %103 to i32, !dbg !3323
  %105 = or i32 %104, 128, !dbg !3323
  %106 = trunc i32 %105 to i8, !dbg !3323
  store i8 %106, i8* %20, align 1, !dbg !3323
  %107 = load i8*, i8** %18, align 8, !dbg !3325
  %108 = call i64 @strlen(i8* %107) #13, !dbg !3325
  %109 = add i64 2, %108, !dbg !3325
  %110 = load i64, i64* %23, align 8, !dbg !3326
  %111 = add i64 %110, %109, !dbg !3326
  store i64 %111, i64* %23, align 8, !dbg !3326
  br label %117, !dbg !3327

112:                                              ; preds = %99
  %113 = load i8, i8* %20, align 1, !dbg !3328
  %114 = zext i8 %113 to i32, !dbg !3328
  %115 = and i32 %114, -129, !dbg !3328
  %116 = trunc i32 %115 to i8, !dbg !3328
  store i8 %116, i8* %20, align 1, !dbg !3328
  br label %117

117:                                              ; preds = %112, %102
  %118 = load i8*, i8** %19, align 8, !dbg !3330
  %119 = icmp ne i8* %118, null, !dbg !3332
  br i1 %119, label %120, label %130, !dbg !3333

120:                                              ; preds = %117
  %121 = load i8, i8* %20, align 1, !dbg !3334
  %122 = zext i8 %121 to i32, !dbg !3334
  %123 = or i32 %122, 64, !dbg !3334
  %124 = trunc i32 %123 to i8, !dbg !3334
  store i8 %124, i8* %20, align 1, !dbg !3334
  %125 = load i8*, i8** %19, align 8, !dbg !3336
  %126 = call i64 @strlen(i8* %125) #13, !dbg !3336
  %127 = add i64 2, %126, !dbg !3336
  %128 = load i64, i64* %23, align 8, !dbg !3337
  %129 = add i64 %128, %127, !dbg !3337
  store i64 %129, i64* %23, align 8, !dbg !3337
  br label %135, !dbg !3338

130:                                              ; preds = %117
  %131 = load i8, i8* %20, align 1, !dbg !3339
  %132 = zext i8 %131 to i32, !dbg !3339
  %133 = and i32 %132, -65, !dbg !3339
  %134 = trunc i32 %133 to i8, !dbg !3339
  store i8 %134, i8* %20, align 1, !dbg !3339
  br label %135

135:                                              ; preds = %130, %120
  %136 = load i64, i64* %23, align 8, !dbg !3341
  %137 = trunc i64 %136 to i32, !dbg !3341
  %138 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %22, i32 0, i32 2, !dbg !3342
  store i32 %137, i32* %138, align 4, !dbg !3343
  %139 = load i8*, i8** %12, align 8, !dbg !3344
  %140 = load i64, i64* %13, align 8, !dbg !3345
  %141 = call i64 @mqtt_pack_fixed_header(i8* %139, i64 %140, %struct.mqtt_fixed_header* %22), !dbg !3346
  store i64 %141, i64* %25, align 8, !dbg !3347
  %142 = load i64, i64* %25, align 8, !dbg !3348
  %143 = icmp sle i64 %142, 0, !dbg !3350
  br i1 %143, label %144, label %146, !dbg !3351

144:                                              ; preds = %135
  %145 = load i64, i64* %25, align 8, !dbg !3352
  store i64 %145, i64* %11, align 8, !dbg !3354
  br label %237, !dbg !3354

146:                                              ; preds = %135
  %147 = load i64, i64* %25, align 8, !dbg !3355
  %148 = load i8*, i8** %12, align 8, !dbg !3356
  %149 = getelementptr inbounds i8, i8* %148, i64 %147, !dbg !3356
  store i8* %149, i8** %12, align 8, !dbg !3356
  %150 = load i64, i64* %25, align 8, !dbg !3357
  %151 = load i64, i64* %13, align 8, !dbg !3358
  %152 = sub i64 %151, %150, !dbg !3358
  store i64 %152, i64* %13, align 8, !dbg !3358
  %153 = load i64, i64* %13, align 8, !dbg !3359
  %154 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %22, i32 0, i32 2, !dbg !3361
  %155 = load i32, i32* %154, align 4, !dbg !3361
  %156 = zext i32 %155 to i64, !dbg !3362
  %157 = icmp ult i64 %153, %156, !dbg !3363
  br i1 %157, label %158, label %159, !dbg !3364

158:                                              ; preds = %146
  store i64 0, i64* %11, align 8, !dbg !3365
  br label %237, !dbg !3365

159:                                              ; preds = %146
  %160 = load i8*, i8** %12, align 8, !dbg !3367
  %161 = getelementptr inbounds i8, i8* %160, i32 1, !dbg !3367
  store i8* %161, i8** %12, align 8, !dbg !3367
  store i8 0, i8* %160, align 1, !dbg !3368
  %162 = load i8*, i8** %12, align 8, !dbg !3369
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !3369
  store i8* %163, i8** %12, align 8, !dbg !3369
  store i8 4, i8* %162, align 1, !dbg !3370
  %164 = load i8*, i8** %12, align 8, !dbg !3371
  %165 = getelementptr inbounds i8, i8* %164, i32 1, !dbg !3371
  store i8* %165, i8** %12, align 8, !dbg !3371
  store i8 77, i8* %164, align 1, !dbg !3372
  %166 = load i8*, i8** %12, align 8, !dbg !3373
  %167 = getelementptr inbounds i8, i8* %166, i32 1, !dbg !3373
  store i8* %167, i8** %12, align 8, !dbg !3373
  store i8 81, i8* %166, align 1, !dbg !3374
  %168 = load i8*, i8** %12, align 8, !dbg !3375
  %169 = getelementptr inbounds i8, i8* %168, i32 1, !dbg !3375
  store i8* %169, i8** %12, align 8, !dbg !3375
  store i8 84, i8* %168, align 1, !dbg !3376
  %170 = load i8*, i8** %12, align 8, !dbg !3377
  %171 = getelementptr inbounds i8, i8* %170, i32 1, !dbg !3377
  store i8* %171, i8** %12, align 8, !dbg !3377
  store i8 84, i8* %170, align 1, !dbg !3378
  %172 = load i8*, i8** %12, align 8, !dbg !3379
  %173 = getelementptr inbounds i8, i8* %172, i32 1, !dbg !3379
  store i8* %173, i8** %12, align 8, !dbg !3379
  store i8 4, i8* %172, align 1, !dbg !3380
  %174 = load i8, i8* %20, align 1, !dbg !3381
  %175 = load i8*, i8** %12, align 8, !dbg !3382
  %176 = getelementptr inbounds i8, i8* %175, i32 1, !dbg !3382
  store i8* %176, i8** %12, align 8, !dbg !3382
  store i8 %174, i8* %175, align 1, !dbg !3383
  %177 = load i8*, i8** %12, align 8, !dbg !3384
  %178 = load i16, i16* %21, align 2, !dbg !3385
  %179 = call i64 @__mqtt_pack_uint16(i8* %177, i16 zeroext %178), !dbg !3386
  %180 = load i8*, i8** %12, align 8, !dbg !3387
  %181 = getelementptr inbounds i8, i8* %180, i64 %179, !dbg !3387
  store i8* %181, i8** %12, align 8, !dbg !3387
  %182 = load i8*, i8** %12, align 8, !dbg !3388
  %183 = load i8*, i8** %14, align 8, !dbg !3389
  %184 = call i64 @__mqtt_pack_str(i8* %182, i8* %183), !dbg !3390
  %185 = load i8*, i8** %12, align 8, !dbg !3391
  %186 = getelementptr inbounds i8, i8* %185, i64 %184, !dbg !3391
  store i8* %186, i8** %12, align 8, !dbg !3391
  %187 = load i8, i8* %20, align 1, !dbg !3392
  %188 = zext i8 %187 to i32, !dbg !3392
  %189 = and i32 %188, 4, !dbg !3394
  %190 = icmp ne i32 %189, 0, !dbg !3394
  br i1 %190, label %191, label %209, !dbg !3395

191:                                              ; preds = %159
  %192 = load i8*, i8** %12, align 8, !dbg !3396
  %193 = load i8*, i8** %15, align 8, !dbg !3398
  %194 = call i64 @__mqtt_pack_str(i8* %192, i8* %193), !dbg !3399
  %195 = load i8*, i8** %12, align 8, !dbg !3400
  %196 = getelementptr inbounds i8, i8* %195, i64 %194, !dbg !3400
  store i8* %196, i8** %12, align 8, !dbg !3400
  %197 = load i8*, i8** %12, align 8, !dbg !3401
  %198 = load i64, i64* %17, align 8, !dbg !3402
  %199 = trunc i64 %198 to i16, !dbg !3403
  %200 = call i64 @__mqtt_pack_uint16(i8* %197, i16 zeroext %199), !dbg !3404
  %201 = load i8*, i8** %12, align 8, !dbg !3405
  %202 = getelementptr inbounds i8, i8* %201, i64 %200, !dbg !3405
  store i8* %202, i8** %12, align 8, !dbg !3405
  %203 = load i8*, i8** %12, align 8, !dbg !3406
  %204 = load i8*, i8** %16, align 8, !dbg !3407
  %205 = load i64, i64* %17, align 8, !dbg !3408
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %203, i8* align 1 %204, i64 %205, i1 false), !dbg !3409
  %206 = load i64, i64* %17, align 8, !dbg !3410
  %207 = load i8*, i8** %12, align 8, !dbg !3411
  %208 = getelementptr inbounds i8, i8* %207, i64 %206, !dbg !3411
  store i8* %208, i8** %12, align 8, !dbg !3411
  br label %209, !dbg !3412

209:                                              ; preds = %191, %159
  %210 = load i8, i8* %20, align 1, !dbg !3413
  %211 = zext i8 %210 to i32, !dbg !3413
  %212 = and i32 %211, 128, !dbg !3415
  %213 = icmp ne i32 %212, 0, !dbg !3415
  br i1 %213, label %214, label %220, !dbg !3416

214:                                              ; preds = %209
  %215 = load i8*, i8** %12, align 8, !dbg !3417
  %216 = load i8*, i8** %18, align 8, !dbg !3419
  %217 = call i64 @__mqtt_pack_str(i8* %215, i8* %216), !dbg !3420
  %218 = load i8*, i8** %12, align 8, !dbg !3421
  %219 = getelementptr inbounds i8, i8* %218, i64 %217, !dbg !3421
  store i8* %219, i8** %12, align 8, !dbg !3421
  br label %220, !dbg !3422

220:                                              ; preds = %214, %209
  %221 = load i8, i8* %20, align 1, !dbg !3423
  %222 = zext i8 %221 to i32, !dbg !3423
  %223 = and i32 %222, 64, !dbg !3425
  %224 = icmp ne i32 %223, 0, !dbg !3425
  br i1 %224, label %225, label %231, !dbg !3426

225:                                              ; preds = %220
  %226 = load i8*, i8** %12, align 8, !dbg !3427
  %227 = load i8*, i8** %19, align 8, !dbg !3429
  %228 = call i64 @__mqtt_pack_str(i8* %226, i8* %227), !dbg !3430
  %229 = load i8*, i8** %12, align 8, !dbg !3431
  %230 = getelementptr inbounds i8, i8* %229, i64 %228, !dbg !3431
  store i8* %230, i8** %12, align 8, !dbg !3431
  br label %231, !dbg !3432

231:                                              ; preds = %225, %220
  %232 = load i8*, i8** %12, align 8, !dbg !3433
  %233 = load i8*, i8** %24, align 8, !dbg !3434
  %234 = ptrtoint i8* %232 to i64, !dbg !3435
  %235 = ptrtoint i8* %233 to i64, !dbg !3435
  %236 = sub i64 %234, %235, !dbg !3435
  store i64 %236, i64* %11, align 8, !dbg !3436
  br label %237, !dbg !3436

237:                                              ; preds = %231, %158, %144, %84, %71, %50
  %238 = load i64, i64* %11, align 8, !dbg !3437
  ret i64 %238, !dbg !3437
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_pack_str(i8* %0, i8* %1) #0 !dbg !3438 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3441, metadata !DIExpression()), !dbg !3442
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.declare(metadata i16* %5, metadata !3445, metadata !DIExpression()), !dbg !3446
  %7 = load i8*, i8** %4, align 8, !dbg !3447
  %8 = call i64 @strlen(i8* %7) #13, !dbg !3448
  %9 = trunc i64 %8 to i16, !dbg !3449
  store i16 %9, i16* %5, align 2, !dbg !3446
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3450, metadata !DIExpression()), !dbg !3451
  store i32 0, i32* %6, align 4, !dbg !3451
  %10 = load i8*, i8** %3, align 8, !dbg !3452
  %11 = load i16, i16* %5, align 2, !dbg !3453
  %12 = call i64 @__mqtt_pack_uint16(i8* %10, i16 zeroext %11), !dbg !3454
  %13 = load i8*, i8** %3, align 8, !dbg !3455
  %14 = getelementptr inbounds i8, i8* %13, i64 %12, !dbg !3455
  store i8* %14, i8** %3, align 8, !dbg !3455
  br label %15, !dbg !3456

15:                                               ; preds = %28, %2
  %16 = load i32, i32* %6, align 4, !dbg !3457
  %17 = load i16, i16* %5, align 2, !dbg !3460
  %18 = zext i16 %17 to i32, !dbg !3460
  %19 = icmp slt i32 %16, %18, !dbg !3461
  br i1 %19, label %20, label %31, !dbg !3462

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8, !dbg !3463
  %22 = load i32, i32* %6, align 4, !dbg !3465
  %23 = sext i32 %22 to i64, !dbg !3463
  %24 = getelementptr inbounds i8, i8* %21, i64 %23, !dbg !3463
  %25 = load i8, i8* %24, align 1, !dbg !3463
  %26 = load i8*, i8** %3, align 8, !dbg !3466
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !3466
  store i8* %27, i8** %3, align 8, !dbg !3466
  store i8 %25, i8* %26, align 1, !dbg !3467
  br label %28, !dbg !3468

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4, !dbg !3469
  %30 = add nsw i32 %29, 1, !dbg !3469
  store i32 %30, i32* %6, align 4, !dbg !3469
  br label %15, !dbg !3470, !llvm.loop !3471

31:                                               ; preds = %15
  %32 = load i16, i16* %5, align 2, !dbg !3473
  %33 = zext i16 %32 to i32, !dbg !3473
  %34 = add nsw i32 %33, 2, !dbg !3474
  %35 = sext i32 %34 to i64, !dbg !3473
  ret i64 %35, !dbg !3475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_publish(%struct.mqtt_client.7* %0, i8* %1, i8* %2, i64 %3, i8 zeroext %4) #0 !dbg !3476 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mqtt_client.7*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.mqtt_queued_message*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i16, align 2
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %7, metadata !3479, metadata !DIExpression()), !dbg !3480
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3481, metadata !DIExpression()), !dbg !3482
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3483, metadata !DIExpression()), !dbg !3484
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3485, metadata !DIExpression()), !dbg !3486
  store i8 %4, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !3487, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %12, metadata !3489, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3491, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.declare(metadata i16* %14, metadata !3493, metadata !DIExpression()), !dbg !3494
  %15 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3495
  %16 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %15, i32 0, i32 16, !dbg !3495
  %17 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %16) #10, !dbg !3495
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3496
  %19 = call zeroext i16 @__mqtt_next_pid(%struct.mqtt_client.7* %18), !dbg !3497
  store i16 %19, i16* %14, align 2, !dbg !3498
  %20 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3499
  %21 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %20, i32 0, i32 6, !dbg !3499
  %22 = load i32, i32* %21, align 8, !dbg !3499
  %23 = icmp slt i32 %22, 0, !dbg !3499
  br i1 %23, label %24, label %31, !dbg !3501

24:                                               ; preds = %5
  %25 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3502
  %26 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %25, i32 0, i32 16, !dbg !3502
  %27 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %26) #10, !dbg !3502
  %28 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3505
  %29 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %28, i32 0, i32 6, !dbg !3505
  %30 = load i32, i32* %29, align 8, !dbg !3505
  store i32 %30, i32* %6, align 4, !dbg !3505
  br label %115, !dbg !3505

31:                                               ; preds = %5
  %32 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3501
  %33 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %32, i32 0, i32 17, !dbg !3501
  %34 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %33, i32 0, i32 2, !dbg !3501
  %35 = load i8*, i8** %34, align 8, !dbg !3501
  %36 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3501
  %37 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %36, i32 0, i32 17, !dbg !3501
  %38 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %37, i32 0, i32 3, !dbg !3501
  %39 = load i64, i64* %38, align 8, !dbg !3501
  %40 = load i8*, i8** %8, align 8, !dbg !3501
  %41 = load i16, i16* %14, align 2, !dbg !3501
  %42 = load i8*, i8** %9, align 8, !dbg !3501
  %43 = load i64, i64* %10, align 8, !dbg !3501
  %44 = load i8, i8* %11, align 1, !dbg !3501
  %45 = call i64 @mqtt_pack_publish_request(i8* %35, i64 %39, i8* %40, i16 zeroext %41, i8* %42, i64 %43, i8 zeroext %44), !dbg !3501
  store i64 %45, i64* %13, align 8, !dbg !3501
  %46 = load i64, i64* %13, align 8, !dbg !3506
  %47 = icmp slt i64 %46, 0, !dbg !3506
  br i1 %47, label %48, label %58, !dbg !3501

48:                                               ; preds = %31
  %49 = load i64, i64* %13, align 8, !dbg !3508
  %50 = trunc i64 %49 to i32, !dbg !3508
  %51 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3508
  %52 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %51, i32 0, i32 6, !dbg !3508
  store i32 %50, i32* %52, align 8, !dbg !3508
  %53 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3510
  %54 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %53, i32 0, i32 16, !dbg !3510
  %55 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %54) #10, !dbg !3510
  %56 = load i64, i64* %13, align 8, !dbg !3508
  %57 = trunc i64 %56 to i32, !dbg !3508
  store i32 %57, i32* %6, align 4, !dbg !3508
  br label %115, !dbg !3508

58:                                               ; preds = %31
  %59 = load i64, i64* %13, align 8, !dbg !3512
  %60 = icmp eq i64 %59, 0, !dbg !3512
  br i1 %60, label %61, label %101, !dbg !3506

61:                                               ; preds = %58
  %62 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3514
  %63 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %62, i32 0, i32 17, !dbg !3514
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %63), !dbg !3514
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3514
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 17, !dbg !3514
  %66 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %65, i32 0, i32 2, !dbg !3514
  %67 = load i8*, i8** %66, align 8, !dbg !3514
  %68 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3514
  %69 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %68, i32 0, i32 17, !dbg !3514
  %70 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %69, i32 0, i32 3, !dbg !3514
  %71 = load i64, i64* %70, align 8, !dbg !3514
  %72 = load i8*, i8** %8, align 8, !dbg !3514
  %73 = load i16, i16* %14, align 2, !dbg !3514
  %74 = load i8*, i8** %9, align 8, !dbg !3514
  %75 = load i64, i64* %10, align 8, !dbg !3514
  %76 = load i8, i8* %11, align 1, !dbg !3514
  %77 = call i64 @mqtt_pack_publish_request(i8* %67, i64 %71, i8* %72, i16 zeroext %73, i8* %74, i64 %75, i8 zeroext %76), !dbg !3514
  store i64 %77, i64* %13, align 8, !dbg !3514
  %78 = load i64, i64* %13, align 8, !dbg !3516
  %79 = icmp slt i64 %78, 0, !dbg !3516
  br i1 %79, label %80, label %90, !dbg !3514

80:                                               ; preds = %61
  %81 = load i64, i64* %13, align 8, !dbg !3518
  %82 = trunc i64 %81 to i32, !dbg !3518
  %83 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3518
  %84 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %83, i32 0, i32 6, !dbg !3518
  store i32 %82, i32* %84, align 8, !dbg !3518
  %85 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3520
  %86 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %85, i32 0, i32 16, !dbg !3520
  %87 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %86) #10, !dbg !3520
  %88 = load i64, i64* %13, align 8, !dbg !3518
  %89 = trunc i64 %88 to i32, !dbg !3518
  store i32 %89, i32* %6, align 4, !dbg !3518
  br label %115, !dbg !3518

90:                                               ; preds = %61
  %91 = load i64, i64* %13, align 8, !dbg !3522
  %92 = icmp eq i64 %91, 0, !dbg !3522
  br i1 %92, label %93, label %99, !dbg !3516

93:                                               ; preds = %90
  %94 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3524
  %95 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %94, i32 0, i32 6, !dbg !3524
  store i32 -2147483632, i32* %95, align 8, !dbg !3524
  %96 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3526
  %97 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %96, i32 0, i32 16, !dbg !3526
  %98 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %97) #10, !dbg !3526
  store i32 -2147483632, i32* %6, align 4, !dbg !3524
  br label %115, !dbg !3524

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99
  br label %101, !dbg !3514

101:                                              ; preds = %100, %58
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3501
  %104 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %103, i32 0, i32 17, !dbg !3501
  %105 = load i64, i64* %13, align 8, !dbg !3501
  %106 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %104, i64 %105), !dbg !3501
  store %struct.mqtt_queued_message* %106, %struct.mqtt_queued_message** %12, align 8, !dbg !3501
  %107 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %12, align 8, !dbg !3528
  %108 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %107, i32 0, i32 4, !dbg !3529
  store i32 3, i32* %108, align 8, !dbg !3530
  %109 = load i16, i16* %14, align 2, !dbg !3531
  %110 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %12, align 8, !dbg !3532
  %111 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %110, i32 0, i32 5, !dbg !3533
  store i16 %109, i16* %111, align 4, !dbg !3534
  %112 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3535
  %113 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %112, i32 0, i32 16, !dbg !3535
  %114 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %113) #10, !dbg !3535
  store i32 1, i32* %6, align 4, !dbg !3536
  br label %115, !dbg !3536

115:                                              ; preds = %102, %93, %80, %48, %24
  %116 = load i32, i32* %6, align 4, !dbg !3537
  ret i32 %116, !dbg !3537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_publish_request(i8* %0, i64 %1, i8* %2, i16 zeroext %3, i8* %4, i64 %5, i8 zeroext %6) #0 !dbg !3538 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.mqtt_fixed_header, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3541, metadata !DIExpression()), !dbg !3542
  store i64 %1, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3543, metadata !DIExpression()), !dbg !3544
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3545, metadata !DIExpression()), !dbg !3546
  store i16 %3, i16* %12, align 2
  call void @llvm.dbg.declare(metadata i16* %12, metadata !3547, metadata !DIExpression()), !dbg !3548
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3549, metadata !DIExpression()), !dbg !3550
  store i64 %5, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3551, metadata !DIExpression()), !dbg !3552
  store i8 %6, i8* %15, align 1
  call void @llvm.dbg.declare(metadata i8* %15, metadata !3553, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3555, metadata !DIExpression()), !dbg !3556
  %21 = load i8*, i8** %9, align 8, !dbg !3557
  store i8* %21, i8** %16, align 8, !dbg !3556
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3558, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %18, metadata !3560, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.declare(metadata i32* %19, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.declare(metadata i8* %20, metadata !3564, metadata !DIExpression()), !dbg !3565
  %22 = load i8*, i8** %9, align 8, !dbg !3566
  %23 = icmp eq i8* %22, null, !dbg !3568
  br i1 %23, label %27, label %24, !dbg !3569

24:                                               ; preds = %7
  %25 = load i8*, i8** %11, align 8, !dbg !3570
  %26 = icmp eq i8* %25, null, !dbg !3571
  br i1 %26, label %27, label %28, !dbg !3572

27:                                               ; preds = %24, %7
  store i64 -2147483647, i64* %8, align 8, !dbg !3573
  br label %121, !dbg !3573

28:                                               ; preds = %24
  %29 = load i8, i8* %15, align 1, !dbg !3575
  %30 = zext i8 %29 to i32, !dbg !3575
  %31 = and i32 %30, 6, !dbg !3576
  %32 = ashr i32 %31, 1, !dbg !3577
  %33 = trunc i32 %32 to i8, !dbg !3578
  store i8 %33, i8* %20, align 1, !dbg !3579
  %34 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %18, i32 0, i32 0, !dbg !3580
  store i32 3, i32* %34, align 4, !dbg !3581
  %35 = load i8*, i8** %11, align 8, !dbg !3582
  %36 = call i64 @strlen(i8* %35) #13, !dbg !3582
  %37 = add i64 2, %36, !dbg !3582
  %38 = trunc i64 %37 to i32, !dbg !3583
  store i32 %38, i32* %19, align 4, !dbg !3584
  %39 = load i8, i8* %20, align 1, !dbg !3585
  %40 = zext i8 %39 to i32, !dbg !3585
  %41 = icmp sgt i32 %40, 0, !dbg !3587
  br i1 %41, label %42, label %45, !dbg !3588

42:                                               ; preds = %28
  %43 = load i32, i32* %19, align 4, !dbg !3589
  %44 = add i32 %43, 2, !dbg !3589
  store i32 %44, i32* %19, align 4, !dbg !3589
  br label %45, !dbg !3591

45:                                               ; preds = %42, %28
  %46 = load i64, i64* %14, align 8, !dbg !3592
  %47 = trunc i64 %46 to i32, !dbg !3593
  %48 = load i32, i32* %19, align 4, !dbg !3594
  %49 = add i32 %48, %47, !dbg !3594
  store i32 %49, i32* %19, align 4, !dbg !3594
  %50 = load i32, i32* %19, align 4, !dbg !3595
  %51 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %18, i32 0, i32 2, !dbg !3596
  store i32 %50, i32* %51, align 4, !dbg !3597
  %52 = load i8, i8* %20, align 1, !dbg !3598
  %53 = zext i8 %52 to i32, !dbg !3598
  %54 = icmp eq i32 %53, 0, !dbg !3600
  br i1 %54, label %55, label %60, !dbg !3601

55:                                               ; preds = %45
  %56 = load i8, i8* %15, align 1, !dbg !3602
  %57 = zext i8 %56 to i32, !dbg !3602
  %58 = and i32 %57, -9, !dbg !3602
  %59 = trunc i32 %58 to i8, !dbg !3602
  store i8 %59, i8* %15, align 1, !dbg !3602
  br label %60, !dbg !3604

60:                                               ; preds = %55, %45
  %61 = load i8, i8* %20, align 1, !dbg !3605
  %62 = zext i8 %61 to i32, !dbg !3605
  %63 = icmp eq i32 %62, 3, !dbg !3607
  br i1 %63, label %64, label %65, !dbg !3608

64:                                               ; preds = %60
  store i64 -2147483638, i64* %8, align 8, !dbg !3609
  br label %121, !dbg !3609

65:                                               ; preds = %60
  %66 = load i8, i8* %15, align 1, !dbg !3611
  %67 = zext i8 %66 to i32, !dbg !3611
  %68 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %18, i32 0, i32 1, !dbg !3612
  %69 = trunc i32 %67 to i8, !dbg !3613
  %70 = load i8, i8* %68, align 4, !dbg !3613
  %71 = and i8 %69, 15, !dbg !3613
  %72 = and i8 %70, -16, !dbg !3613
  %73 = or i8 %72, %71, !dbg !3613
  store i8 %73, i8* %68, align 4, !dbg !3613
  %74 = zext i8 %71 to i32, !dbg !3613
  %75 = load i8*, i8** %9, align 8, !dbg !3614
  %76 = load i64, i64* %10, align 8, !dbg !3615
  %77 = call i64 @mqtt_pack_fixed_header(i8* %75, i64 %76, %struct.mqtt_fixed_header* %18), !dbg !3616
  store i64 %77, i64* %17, align 8, !dbg !3617
  %78 = load i64, i64* %17, align 8, !dbg !3618
  %79 = icmp sle i64 %78, 0, !dbg !3620
  br i1 %79, label %80, label %82, !dbg !3621

80:                                               ; preds = %65
  %81 = load i64, i64* %17, align 8, !dbg !3622
  store i64 %81, i64* %8, align 8, !dbg !3624
  br label %121, !dbg !3624

82:                                               ; preds = %65
  %83 = load i64, i64* %17, align 8, !dbg !3625
  %84 = load i8*, i8** %9, align 8, !dbg !3626
  %85 = getelementptr inbounds i8, i8* %84, i64 %83, !dbg !3626
  store i8* %85, i8** %9, align 8, !dbg !3626
  %86 = load i64, i64* %17, align 8, !dbg !3627
  %87 = load i64, i64* %10, align 8, !dbg !3628
  %88 = sub i64 %87, %86, !dbg !3628
  store i64 %88, i64* %10, align 8, !dbg !3628
  %89 = load i64, i64* %10, align 8, !dbg !3629
  %90 = load i32, i32* %19, align 4, !dbg !3631
  %91 = zext i32 %90 to i64, !dbg !3631
  %92 = icmp ult i64 %89, %91, !dbg !3632
  br i1 %92, label %93, label %94, !dbg !3633

93:                                               ; preds = %82
  store i64 0, i64* %8, align 8, !dbg !3634
  br label %121, !dbg !3634

94:                                               ; preds = %82
  %95 = load i8*, i8** %9, align 8, !dbg !3636
  %96 = load i8*, i8** %11, align 8, !dbg !3637
  %97 = call i64 @__mqtt_pack_str(i8* %95, i8* %96), !dbg !3638
  %98 = load i8*, i8** %9, align 8, !dbg !3639
  %99 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3639
  store i8* %99, i8** %9, align 8, !dbg !3639
  %100 = load i8, i8* %20, align 1, !dbg !3640
  %101 = zext i8 %100 to i32, !dbg !3640
  %102 = icmp sgt i32 %101, 0, !dbg !3642
  br i1 %102, label %103, label %109, !dbg !3643

103:                                              ; preds = %94
  %104 = load i8*, i8** %9, align 8, !dbg !3644
  %105 = load i16, i16* %12, align 2, !dbg !3646
  %106 = call i64 @__mqtt_pack_uint16(i8* %104, i16 zeroext %105), !dbg !3647
  %107 = load i8*, i8** %9, align 8, !dbg !3648
  %108 = getelementptr inbounds i8, i8* %107, i64 %106, !dbg !3648
  store i8* %108, i8** %9, align 8, !dbg !3648
  br label %109, !dbg !3649

109:                                              ; preds = %103, %94
  %110 = load i8*, i8** %9, align 8, !dbg !3650
  %111 = load i8*, i8** %13, align 8, !dbg !3651
  %112 = load i64, i64* %14, align 8, !dbg !3652
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %110, i8* align 1 %111, i64 %112, i1 false), !dbg !3653
  %113 = load i64, i64* %14, align 8, !dbg !3654
  %114 = load i8*, i8** %9, align 8, !dbg !3655
  %115 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3655
  store i8* %115, i8** %9, align 8, !dbg !3655
  %116 = load i8*, i8** %9, align 8, !dbg !3656
  %117 = load i8*, i8** %16, align 8, !dbg !3657
  %118 = ptrtoint i8* %116 to i64, !dbg !3658
  %119 = ptrtoint i8* %117 to i64, !dbg !3658
  %120 = sub i64 %118, %119, !dbg !3658
  store i64 %120, i64* %8, align 8, !dbg !3659
  br label %121, !dbg !3659

121:                                              ; preds = %109, %93, %80, %64, %27
  %122 = load i64, i64* %8, align 8, !dbg !3660
  ret i64 %122, !dbg !3660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_subscribe(%struct.mqtt_client.7* %0, i8* %1, i32 %2) #0 !dbg !3661 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mqtt_client.7*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %5, metadata !3664, metadata !DIExpression()), !dbg !3665
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3666, metadata !DIExpression()), !dbg !3667
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3668, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3670, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.declare(metadata i16* %9, metadata !3672, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %10, metadata !3674, metadata !DIExpression()), !dbg !3675
  %11 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3676
  %12 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %11, i32 0, i32 16, !dbg !3676
  %13 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %12) #10, !dbg !3676
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3677
  %15 = call zeroext i16 @__mqtt_next_pid(%struct.mqtt_client.7* %14), !dbg !3678
  store i16 %15, i16* %9, align 2, !dbg !3679
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3680
  %17 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %16, i32 0, i32 6, !dbg !3680
  %18 = load i32, i32* %17, align 8, !dbg !3680
  %19 = icmp slt i32 %18, 0, !dbg !3680
  br i1 %19, label %20, label %27, !dbg !3682

20:                                               ; preds = %3
  %21 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3683
  %22 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %21, i32 0, i32 16, !dbg !3683
  %23 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %22) #10, !dbg !3683
  %24 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3686
  %25 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %24, i32 0, i32 6, !dbg !3686
  %26 = load i32, i32* %25, align 8, !dbg !3686
  store i32 %26, i32* %4, align 4, !dbg !3686
  br label %109, !dbg !3686

27:                                               ; preds = %3
  %28 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3682
  %29 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %28, i32 0, i32 17, !dbg !3682
  %30 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %29, i32 0, i32 2, !dbg !3682
  %31 = load i8*, i8** %30, align 8, !dbg !3682
  %32 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3682
  %33 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %32, i32 0, i32 17, !dbg !3682
  %34 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %33, i32 0, i32 3, !dbg !3682
  %35 = load i64, i64* %34, align 8, !dbg !3682
  %36 = load i16, i16* %9, align 2, !dbg !3682
  %37 = zext i16 %36 to i32, !dbg !3682
  %38 = load i8*, i8** %6, align 8, !dbg !3682
  %39 = load i32, i32* %7, align 4, !dbg !3682
  %40 = call i64 (i8*, i64, i32, ...) @mqtt_pack_subscribe_request(i8* %31, i64 %35, i32 %37, i8* %38, i32 %39, i8* null), !dbg !3682
  store i64 %40, i64* %8, align 8, !dbg !3682
  %41 = load i64, i64* %8, align 8, !dbg !3687
  %42 = icmp slt i64 %41, 0, !dbg !3687
  br i1 %42, label %43, label %53, !dbg !3682

43:                                               ; preds = %27
  %44 = load i64, i64* %8, align 8, !dbg !3689
  %45 = trunc i64 %44 to i32, !dbg !3689
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3689
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 6, !dbg !3689
  store i32 %45, i32* %47, align 8, !dbg !3689
  %48 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3691
  %49 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %48, i32 0, i32 16, !dbg !3691
  %50 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %49) #10, !dbg !3691
  %51 = load i64, i64* %8, align 8, !dbg !3689
  %52 = trunc i64 %51 to i32, !dbg !3689
  store i32 %52, i32* %4, align 4, !dbg !3689
  br label %109, !dbg !3689

53:                                               ; preds = %27
  %54 = load i64, i64* %8, align 8, !dbg !3693
  %55 = icmp eq i64 %54, 0, !dbg !3693
  br i1 %55, label %56, label %95, !dbg !3687

56:                                               ; preds = %53
  %57 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3695
  %58 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %57, i32 0, i32 17, !dbg !3695
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %58), !dbg !3695
  %59 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3695
  %60 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %59, i32 0, i32 17, !dbg !3695
  %61 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %60, i32 0, i32 2, !dbg !3695
  %62 = load i8*, i8** %61, align 8, !dbg !3695
  %63 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3695
  %64 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %63, i32 0, i32 17, !dbg !3695
  %65 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %64, i32 0, i32 3, !dbg !3695
  %66 = load i64, i64* %65, align 8, !dbg !3695
  %67 = load i16, i16* %9, align 2, !dbg !3695
  %68 = zext i16 %67 to i32, !dbg !3695
  %69 = load i8*, i8** %6, align 8, !dbg !3695
  %70 = load i32, i32* %7, align 4, !dbg !3695
  %71 = call i64 (i8*, i64, i32, ...) @mqtt_pack_subscribe_request(i8* %62, i64 %66, i32 %68, i8* %69, i32 %70, i8* null), !dbg !3695
  store i64 %71, i64* %8, align 8, !dbg !3695
  %72 = load i64, i64* %8, align 8, !dbg !3697
  %73 = icmp slt i64 %72, 0, !dbg !3697
  br i1 %73, label %74, label %84, !dbg !3695

74:                                               ; preds = %56
  %75 = load i64, i64* %8, align 8, !dbg !3699
  %76 = trunc i64 %75 to i32, !dbg !3699
  %77 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3699
  %78 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %77, i32 0, i32 6, !dbg !3699
  store i32 %76, i32* %78, align 8, !dbg !3699
  %79 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3701
  %80 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %79, i32 0, i32 16, !dbg !3701
  %81 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %80) #10, !dbg !3701
  %82 = load i64, i64* %8, align 8, !dbg !3699
  %83 = trunc i64 %82 to i32, !dbg !3699
  store i32 %83, i32* %4, align 4, !dbg !3699
  br label %109, !dbg !3699

84:                                               ; preds = %56
  %85 = load i64, i64* %8, align 8, !dbg !3703
  %86 = icmp eq i64 %85, 0, !dbg !3703
  br i1 %86, label %87, label %93, !dbg !3697

87:                                               ; preds = %84
  %88 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3705
  %89 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %88, i32 0, i32 6, !dbg !3705
  store i32 -2147483632, i32* %89, align 8, !dbg !3705
  %90 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3707
  %91 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %90, i32 0, i32 16, !dbg !3707
  %92 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %91) #10, !dbg !3707
  store i32 -2147483632, i32* %4, align 4, !dbg !3705
  br label %109, !dbg !3705

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93
  br label %95, !dbg !3695

95:                                               ; preds = %94, %53
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3682
  %98 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %97, i32 0, i32 17, !dbg !3682
  %99 = load i64, i64* %8, align 8, !dbg !3682
  %100 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %98, i64 %99), !dbg !3682
  store %struct.mqtt_queued_message* %100, %struct.mqtt_queued_message** %10, align 8, !dbg !3682
  %101 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %10, align 8, !dbg !3709
  %102 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %101, i32 0, i32 4, !dbg !3710
  store i32 8, i32* %102, align 8, !dbg !3711
  %103 = load i16, i16* %9, align 2, !dbg !3712
  %104 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %10, align 8, !dbg !3713
  %105 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %104, i32 0, i32 5, !dbg !3714
  store i16 %103, i16* %105, align 4, !dbg !3715
  %106 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3716
  %107 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %106, i32 0, i32 16, !dbg !3716
  %108 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %107) #10, !dbg !3716
  store i32 1, i32* %4, align 4, !dbg !3717
  br label %109, !dbg !3717

109:                                              ; preds = %96, %87, %74, %43, %20
  %110 = load i32, i32* %4, align 4, !dbg !3718
  ret i32 %110, !dbg !3718
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_subscribe_request(i8* %0, i64 %1, i32 %2, ...) #0 !dbg !3719 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mqtt_fixed_header, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i8*], align 16
  %15 = alloca [8 x i8], align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3722, metadata !DIExpression()), !dbg !3723
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3724, metadata !DIExpression()), !dbg !3725
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3726, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !3728, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3742, metadata !DIExpression()), !dbg !3743
  %16 = load i8*, i8** %5, align 8, !dbg !3744
  store i8* %16, i8** %9, align 8, !dbg !3743
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3745, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %11, metadata !3747, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3749, metadata !DIExpression()), !dbg !3750
  store i32 0, i32* %12, align 4, !dbg !3750
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3751, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.declare(metadata [8 x i8*]* %14, metadata !3753, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.declare(metadata [8 x i8]* %15, metadata !3758, metadata !DIExpression()), !dbg !3760
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3761
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !3761
  call void @llvm.va_start(i8* %18), !dbg !3761
  br label %19, !dbg !3762

19:                                               ; preds = %3, %77
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3763
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 0, !dbg !3763
  %22 = load i32, i32* %21, align 16, !dbg !3763
  %23 = icmp ule i32 %22, 40, !dbg !3763
  br i1 %23, label %24, label %30, !dbg !3763

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 3, !dbg !3763
  %26 = load i8*, i8** %25, align 16, !dbg !3763
  %27 = getelementptr i8, i8* %26, i32 %22, !dbg !3763
  %28 = bitcast i8* %27 to i8**, !dbg !3763
  %29 = add i32 %22, 8, !dbg !3763
  store i32 %29, i32* %21, align 16, !dbg !3763
  br label %35, !dbg !3763

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 2, !dbg !3763
  %32 = load i8*, i8** %31, align 8, !dbg !3763
  %33 = bitcast i8* %32 to i8**, !dbg !3763
  %34 = getelementptr i8, i8* %32, i32 8, !dbg !3763
  store i8* %34, i8** %31, align 8, !dbg !3763
  br label %35, !dbg !3763

35:                                               ; preds = %30, %24
  %36 = phi i8** [ %28, %24 ], [ %33, %30 ], !dbg !3763
  %37 = load i8*, i8** %36, align 8, !dbg !3763
  %38 = load i32, i32* %12, align 4, !dbg !3765
  %39 = zext i32 %38 to i64, !dbg !3766
  %40 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %39, !dbg !3766
  store i8* %37, i8** %40, align 8, !dbg !3767
  %41 = load i32, i32* %12, align 4, !dbg !3768
  %42 = zext i32 %41 to i64, !dbg !3770
  %43 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %42, !dbg !3770
  %44 = load i8*, i8** %43, align 8, !dbg !3770
  %45 = icmp eq i8* %44, null, !dbg !3771
  br i1 %45, label %46, label %47, !dbg !3772

46:                                               ; preds = %35
  br label %78, !dbg !3773

47:                                               ; preds = %35
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3775
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 0, !dbg !3775
  %50 = load i32, i32* %49, align 16, !dbg !3775
  %51 = icmp ule i32 %50, 40, !dbg !3775
  br i1 %51, label %52, label %58, !dbg !3775

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 3, !dbg !3775
  %54 = load i8*, i8** %53, align 16, !dbg !3775
  %55 = getelementptr i8, i8* %54, i32 %50, !dbg !3775
  %56 = bitcast i8* %55 to i32*, !dbg !3775
  %57 = add i32 %50, 8, !dbg !3775
  store i32 %57, i32* %49, align 16, !dbg !3775
  br label %63, !dbg !3775

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 2, !dbg !3775
  %60 = load i8*, i8** %59, align 8, !dbg !3775
  %61 = bitcast i8* %60 to i32*, !dbg !3775
  %62 = getelementptr i8, i8* %60, i32 8, !dbg !3775
  store i8* %62, i8** %59, align 8, !dbg !3775
  br label %63, !dbg !3775

63:                                               ; preds = %58, %52
  %64 = phi i32* [ %56, %52 ], [ %61, %58 ], !dbg !3775
  %65 = load i32, i32* %64, align 4, !dbg !3775
  %66 = trunc i32 %65 to i8, !dbg !3776
  %67 = load i32, i32* %12, align 4, !dbg !3777
  %68 = zext i32 %67 to i64, !dbg !3778
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 %68, !dbg !3778
  store i8 %66, i8* %69, align 1, !dbg !3779
  %70 = load i32, i32* %12, align 4, !dbg !3780
  %71 = add i32 %70, 1, !dbg !3780
  store i32 %71, i32* %12, align 4, !dbg !3780
  %72 = load i32, i32* %12, align 4, !dbg !3781
  %73 = icmp uge i32 %72, 8, !dbg !3783
  br i1 %73, label %74, label %77, !dbg !3784

74:                                               ; preds = %63
  %75 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3785
  %76 = bitcast %struct.__va_list_tag* %75 to i8*, !dbg !3785
  call void @llvm.va_end(i8* %76), !dbg !3785
  store i64 -2147483637, i64* %4, align 8, !dbg !3787
  br label %163, !dbg !3787

77:                                               ; preds = %63
  br label %19, !dbg !3762, !llvm.loop !3788

78:                                               ; preds = %46
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3790
  %80 = bitcast %struct.__va_list_tag* %79 to i8*, !dbg !3790
  call void @llvm.va_end(i8* %80), !dbg !3790
  %81 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 0, !dbg !3791
  store i32 8, i32* %81, align 4, !dbg !3792
  %82 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 1, !dbg !3793
  %83 = load i8, i8* %82, align 4, !dbg !3794
  %84 = and i8 %83, -16, !dbg !3794
  %85 = or i8 %84, 2, !dbg !3794
  store i8 %85, i8* %82, align 4, !dbg !3794
  %86 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !3795
  store i32 2, i32* %86, align 4, !dbg !3796
  store i32 0, i32* %13, align 4, !dbg !3797
  br label %87, !dbg !3799

87:                                               ; preds = %104, %78
  %88 = load i32, i32* %13, align 4, !dbg !3800
  %89 = load i32, i32* %12, align 4, !dbg !3802
  %90 = icmp ult i32 %88, %89, !dbg !3803
  br i1 %90, label %91, label %107, !dbg !3804

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4, !dbg !3805
  %93 = zext i32 %92 to i64, !dbg !3805
  %94 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %93, !dbg !3805
  %95 = load i8*, i8** %94, align 8, !dbg !3805
  %96 = call i64 @strlen(i8* %95) #13, !dbg !3805
  %97 = add i64 2, %96, !dbg !3805
  %98 = add i64 %97, 1, !dbg !3807
  %99 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !3808
  %100 = load i32, i32* %99, align 4, !dbg !3809
  %101 = zext i32 %100 to i64, !dbg !3809
  %102 = add i64 %101, %98, !dbg !3809
  %103 = trunc i64 %102 to i32, !dbg !3809
  store i32 %103, i32* %99, align 4, !dbg !3809
  br label %104, !dbg !3810

104:                                              ; preds = %91
  %105 = load i32, i32* %13, align 4, !dbg !3811
  %106 = add i32 %105, 1, !dbg !3811
  store i32 %106, i32* %13, align 4, !dbg !3811
  br label %87, !dbg !3812, !llvm.loop !3813

107:                                              ; preds = %87
  %108 = load i8*, i8** %5, align 8, !dbg !3815
  %109 = load i64, i64* %6, align 8, !dbg !3816
  %110 = call i64 @mqtt_pack_fixed_header(i8* %108, i64 %109, %struct.mqtt_fixed_header* %11), !dbg !3817
  store i64 %110, i64* %10, align 8, !dbg !3818
  %111 = load i64, i64* %10, align 8, !dbg !3819
  %112 = icmp sle i64 %111, 0, !dbg !3821
  br i1 %112, label %113, label %115, !dbg !3822

113:                                              ; preds = %107
  %114 = load i64, i64* %10, align 8, !dbg !3823
  store i64 %114, i64* %4, align 8, !dbg !3825
  br label %163, !dbg !3825

115:                                              ; preds = %107
  %116 = load i64, i64* %10, align 8, !dbg !3826
  %117 = load i8*, i8** %5, align 8, !dbg !3827
  %118 = getelementptr inbounds i8, i8* %117, i64 %116, !dbg !3827
  store i8* %118, i8** %5, align 8, !dbg !3827
  %119 = load i64, i64* %10, align 8, !dbg !3828
  %120 = load i64, i64* %6, align 8, !dbg !3829
  %121 = sub i64 %120, %119, !dbg !3829
  store i64 %121, i64* %6, align 8, !dbg !3829
  %122 = load i64, i64* %6, align 8, !dbg !3830
  %123 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !3832
  %124 = load i32, i32* %123, align 4, !dbg !3832
  %125 = zext i32 %124 to i64, !dbg !3833
  %126 = icmp ult i64 %122, %125, !dbg !3834
  br i1 %126, label %127, label %128, !dbg !3835

127:                                              ; preds = %115
  store i64 0, i64* %4, align 8, !dbg !3836
  br label %163, !dbg !3836

128:                                              ; preds = %115
  %129 = load i8*, i8** %5, align 8, !dbg !3838
  %130 = load i32, i32* %7, align 4, !dbg !3839
  %131 = trunc i32 %130 to i16, !dbg !3839
  %132 = call i64 @__mqtt_pack_uint16(i8* %129, i16 zeroext %131), !dbg !3840
  %133 = load i8*, i8** %5, align 8, !dbg !3841
  %134 = getelementptr inbounds i8, i8* %133, i64 %132, !dbg !3841
  store i8* %134, i8** %5, align 8, !dbg !3841
  store i32 0, i32* %13, align 4, !dbg !3842
  br label %135, !dbg !3844

135:                                              ; preds = %154, %128
  %136 = load i32, i32* %13, align 4, !dbg !3845
  %137 = load i32, i32* %12, align 4, !dbg !3847
  %138 = icmp ult i32 %136, %137, !dbg !3848
  br i1 %138, label %139, label %157, !dbg !3849

139:                                              ; preds = %135
  %140 = load i8*, i8** %5, align 8, !dbg !3850
  %141 = load i32, i32* %13, align 4, !dbg !3852
  %142 = zext i32 %141 to i64, !dbg !3853
  %143 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %142, !dbg !3853
  %144 = load i8*, i8** %143, align 8, !dbg !3853
  %145 = call i64 @__mqtt_pack_str(i8* %140, i8* %144), !dbg !3854
  %146 = load i8*, i8** %5, align 8, !dbg !3855
  %147 = getelementptr inbounds i8, i8* %146, i64 %145, !dbg !3855
  store i8* %147, i8** %5, align 8, !dbg !3855
  %148 = load i32, i32* %13, align 4, !dbg !3856
  %149 = zext i32 %148 to i64, !dbg !3857
  %150 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 %149, !dbg !3857
  %151 = load i8, i8* %150, align 1, !dbg !3857
  %152 = load i8*, i8** %5, align 8, !dbg !3858
  %153 = getelementptr inbounds i8, i8* %152, i32 1, !dbg !3858
  store i8* %153, i8** %5, align 8, !dbg !3858
  store i8 %151, i8* %152, align 1, !dbg !3859
  br label %154, !dbg !3860

154:                                              ; preds = %139
  %155 = load i32, i32* %13, align 4, !dbg !3861
  %156 = add i32 %155, 1, !dbg !3861
  store i32 %156, i32* %13, align 4, !dbg !3861
  br label %135, !dbg !3862, !llvm.loop !3863

157:                                              ; preds = %135
  %158 = load i8*, i8** %5, align 8, !dbg !3865
  %159 = load i8*, i8** %9, align 8, !dbg !3866
  %160 = ptrtoint i8* %158 to i64, !dbg !3867
  %161 = ptrtoint i8* %159 to i64, !dbg !3867
  %162 = sub i64 %160, %161, !dbg !3867
  store i64 %162, i64* %4, align 8, !dbg !3868
  br label %163, !dbg !3868

163:                                              ; preds = %157, %127, %113, %74
  %164 = load i64, i64* %4, align 8, !dbg !3869
  ret i64 %164, !dbg !3869
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_unsubscribe(%struct.mqtt_client.7* %0, i8* %1) #0 !dbg !3870 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mqtt_client.7*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %4, metadata !3873, metadata !DIExpression()), !dbg !3874
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3875, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.declare(metadata i16* %6, metadata !3877, metadata !DIExpression()), !dbg !3878
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3879
  %10 = call zeroext i16 @__mqtt_next_pid(%struct.mqtt_client.7* %9), !dbg !3880
  store i16 %10, i16* %6, align 2, !dbg !3878
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3881, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %8, metadata !3883, metadata !DIExpression()), !dbg !3884
  %11 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3885
  %12 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %11, i32 0, i32 16, !dbg !3885
  %13 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %12) #10, !dbg !3885
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3886
  %15 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %14, i32 0, i32 6, !dbg !3886
  %16 = load i32, i32* %15, align 8, !dbg !3886
  %17 = icmp slt i32 %16, 0, !dbg !3886
  br i1 %17, label %18, label %25, !dbg !3888

18:                                               ; preds = %2
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3889
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 16, !dbg !3889
  %21 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %20) #10, !dbg !3889
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3892
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 6, !dbg !3892
  %24 = load i32, i32* %23, align 8, !dbg !3892
  store i32 %24, i32* %3, align 4, !dbg !3892
  br label %105, !dbg !3892

25:                                               ; preds = %2
  %26 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3888
  %27 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %26, i32 0, i32 17, !dbg !3888
  %28 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %27, i32 0, i32 2, !dbg !3888
  %29 = load i8*, i8** %28, align 8, !dbg !3888
  %30 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3888
  %31 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %30, i32 0, i32 17, !dbg !3888
  %32 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %31, i32 0, i32 3, !dbg !3888
  %33 = load i64, i64* %32, align 8, !dbg !3888
  %34 = load i16, i16* %6, align 2, !dbg !3888
  %35 = zext i16 %34 to i32, !dbg !3888
  %36 = load i8*, i8** %5, align 8, !dbg !3888
  %37 = call i64 (i8*, i64, i32, ...) @mqtt_pack_unsubscribe_request(i8* %29, i64 %33, i32 %35, i8* %36, i8* null), !dbg !3888
  store i64 %37, i64* %7, align 8, !dbg !3888
  %38 = load i64, i64* %7, align 8, !dbg !3893
  %39 = icmp slt i64 %38, 0, !dbg !3893
  br i1 %39, label %40, label %50, !dbg !3888

40:                                               ; preds = %25
  %41 = load i64, i64* %7, align 8, !dbg !3895
  %42 = trunc i64 %41 to i32, !dbg !3895
  %43 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3895
  %44 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %43, i32 0, i32 6, !dbg !3895
  store i32 %42, i32* %44, align 8, !dbg !3895
  %45 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3897
  %46 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %45, i32 0, i32 16, !dbg !3897
  %47 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %46) #10, !dbg !3897
  %48 = load i64, i64* %7, align 8, !dbg !3895
  %49 = trunc i64 %48 to i32, !dbg !3895
  store i32 %49, i32* %3, align 4, !dbg !3895
  br label %105, !dbg !3895

50:                                               ; preds = %25
  %51 = load i64, i64* %7, align 8, !dbg !3899
  %52 = icmp eq i64 %51, 0, !dbg !3899
  br i1 %52, label %53, label %91, !dbg !3893

53:                                               ; preds = %50
  %54 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3901
  %55 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %54, i32 0, i32 17, !dbg !3901
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %55), !dbg !3901
  %56 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3901
  %57 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %56, i32 0, i32 17, !dbg !3901
  %58 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %57, i32 0, i32 2, !dbg !3901
  %59 = load i8*, i8** %58, align 8, !dbg !3901
  %60 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3901
  %61 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %60, i32 0, i32 17, !dbg !3901
  %62 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %61, i32 0, i32 3, !dbg !3901
  %63 = load i64, i64* %62, align 8, !dbg !3901
  %64 = load i16, i16* %6, align 2, !dbg !3901
  %65 = zext i16 %64 to i32, !dbg !3901
  %66 = load i8*, i8** %5, align 8, !dbg !3901
  %67 = call i64 (i8*, i64, i32, ...) @mqtt_pack_unsubscribe_request(i8* %59, i64 %63, i32 %65, i8* %66, i8* null), !dbg !3901
  store i64 %67, i64* %7, align 8, !dbg !3901
  %68 = load i64, i64* %7, align 8, !dbg !3903
  %69 = icmp slt i64 %68, 0, !dbg !3903
  br i1 %69, label %70, label %80, !dbg !3901

70:                                               ; preds = %53
  %71 = load i64, i64* %7, align 8, !dbg !3905
  %72 = trunc i64 %71 to i32, !dbg !3905
  %73 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3905
  %74 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %73, i32 0, i32 6, !dbg !3905
  store i32 %72, i32* %74, align 8, !dbg !3905
  %75 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3907
  %76 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %75, i32 0, i32 16, !dbg !3907
  %77 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %76) #10, !dbg !3907
  %78 = load i64, i64* %7, align 8, !dbg !3905
  %79 = trunc i64 %78 to i32, !dbg !3905
  store i32 %79, i32* %3, align 4, !dbg !3905
  br label %105, !dbg !3905

80:                                               ; preds = %53
  %81 = load i64, i64* %7, align 8, !dbg !3909
  %82 = icmp eq i64 %81, 0, !dbg !3909
  br i1 %82, label %83, label %89, !dbg !3903

83:                                               ; preds = %80
  %84 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3911
  %85 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %84, i32 0, i32 6, !dbg !3911
  store i32 -2147483632, i32* %85, align 8, !dbg !3911
  %86 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3913
  %87 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %86, i32 0, i32 16, !dbg !3913
  %88 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %87) #10, !dbg !3913
  store i32 -2147483632, i32* %3, align 4, !dbg !3911
  br label %105, !dbg !3911

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  br label %91, !dbg !3901

91:                                               ; preds = %90, %50
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3888
  %94 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %93, i32 0, i32 17, !dbg !3888
  %95 = load i64, i64* %7, align 8, !dbg !3888
  %96 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %94, i64 %95), !dbg !3888
  store %struct.mqtt_queued_message* %96, %struct.mqtt_queued_message** %8, align 8, !dbg !3888
  %97 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !3915
  %98 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %97, i32 0, i32 4, !dbg !3916
  store i32 10, i32* %98, align 8, !dbg !3917
  %99 = load i16, i16* %6, align 2, !dbg !3918
  %100 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !3919
  %101 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %100, i32 0, i32 5, !dbg !3920
  store i16 %99, i16* %101, align 4, !dbg !3921
  %102 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3922
  %103 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %102, i32 0, i32 16, !dbg !3922
  %104 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %103) #10, !dbg !3922
  store i32 1, i32* %3, align 4, !dbg !3923
  br label %105, !dbg !3923

105:                                              ; preds = %92, %83, %70, %40, %18
  %106 = load i32, i32* %3, align 4, !dbg !3924
  ret i32 %106, !dbg !3924
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_unsubscribe_request(i8* %0, i64 %1, i32 %2, ...) #0 !dbg !3925 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mqtt_fixed_header, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i8*], align 16
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3926, metadata !DIExpression()), !dbg !3927
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3928, metadata !DIExpression()), !dbg !3929
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !3932, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3934, metadata !DIExpression()), !dbg !3935
  %15 = load i8*, i8** %5, align 8, !dbg !3936
  store i8* %15, i8** %9, align 8, !dbg !3935
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3937, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %11, metadata !3939, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3941, metadata !DIExpression()), !dbg !3942
  store i32 0, i32* %12, align 4, !dbg !3942
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3943, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.declare(metadata [8 x i8*]* %14, metadata !3945, metadata !DIExpression()), !dbg !3946
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3947
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !3947
  call void @llvm.va_start(i8* %17), !dbg !3947
  br label %18, !dbg !3948

18:                                               ; preds = %3, %54
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3949
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %19, i32 0, i32 0, !dbg !3949
  %21 = load i32, i32* %20, align 16, !dbg !3949
  %22 = icmp ule i32 %21, 40, !dbg !3949
  br i1 %22, label %23, label %29, !dbg !3949

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %19, i32 0, i32 3, !dbg !3949
  %25 = load i8*, i8** %24, align 16, !dbg !3949
  %26 = getelementptr i8, i8* %25, i32 %21, !dbg !3949
  %27 = bitcast i8* %26 to i8**, !dbg !3949
  %28 = add i32 %21, 8, !dbg !3949
  store i32 %28, i32* %20, align 16, !dbg !3949
  br label %34, !dbg !3949

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %19, i32 0, i32 2, !dbg !3949
  %31 = load i8*, i8** %30, align 8, !dbg !3949
  %32 = bitcast i8* %31 to i8**, !dbg !3949
  %33 = getelementptr i8, i8* %31, i32 8, !dbg !3949
  store i8* %33, i8** %30, align 8, !dbg !3949
  br label %34, !dbg !3949

34:                                               ; preds = %29, %23
  %35 = phi i8** [ %27, %23 ], [ %32, %29 ], !dbg !3949
  %36 = load i8*, i8** %35, align 8, !dbg !3949
  %37 = load i32, i32* %12, align 4, !dbg !3951
  %38 = zext i32 %37 to i64, !dbg !3952
  %39 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %38, !dbg !3952
  store i8* %36, i8** %39, align 8, !dbg !3953
  %40 = load i32, i32* %12, align 4, !dbg !3954
  %41 = zext i32 %40 to i64, !dbg !3956
  %42 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %41, !dbg !3956
  %43 = load i8*, i8** %42, align 8, !dbg !3956
  %44 = icmp eq i8* %43, null, !dbg !3957
  br i1 %44, label %45, label %46, !dbg !3958

45:                                               ; preds = %34
  br label %55, !dbg !3959

46:                                               ; preds = %34
  %47 = load i32, i32* %12, align 4, !dbg !3961
  %48 = add i32 %47, 1, !dbg !3961
  store i32 %48, i32* %12, align 4, !dbg !3961
  %49 = load i32, i32* %12, align 4, !dbg !3962
  %50 = icmp uge i32 %49, 8, !dbg !3964
  br i1 %50, label %51, label %54, !dbg !3965

51:                                               ; preds = %46
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3966
  %53 = bitcast %struct.__va_list_tag* %52 to i8*, !dbg !3966
  call void @llvm.va_end(i8* %53), !dbg !3966
  store i64 -2147483635, i64* %4, align 8, !dbg !3968
  br label %133, !dbg !3968

54:                                               ; preds = %46
  br label %18, !dbg !3948, !llvm.loop !3969

55:                                               ; preds = %45
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3971
  %57 = bitcast %struct.__va_list_tag* %56 to i8*, !dbg !3971
  call void @llvm.va_end(i8* %57), !dbg !3971
  %58 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 0, !dbg !3972
  store i32 10, i32* %58, align 4, !dbg !3973
  %59 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 1, !dbg !3974
  %60 = load i8, i8* %59, align 4, !dbg !3975
  %61 = and i8 %60, -16, !dbg !3975
  %62 = or i8 %61, 2, !dbg !3975
  store i8 %62, i8* %59, align 4, !dbg !3975
  %63 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !3976
  store i32 2, i32* %63, align 4, !dbg !3977
  store i32 0, i32* %13, align 4, !dbg !3978
  br label %64, !dbg !3980

64:                                               ; preds = %80, %55
  %65 = load i32, i32* %13, align 4, !dbg !3981
  %66 = load i32, i32* %12, align 4, !dbg !3983
  %67 = icmp ult i32 %65, %66, !dbg !3984
  br i1 %67, label %68, label %83, !dbg !3985

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4, !dbg !3986
  %70 = zext i32 %69 to i64, !dbg !3986
  %71 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %70, !dbg !3986
  %72 = load i8*, i8** %71, align 8, !dbg !3986
  %73 = call i64 @strlen(i8* %72) #13, !dbg !3986
  %74 = add i64 2, %73, !dbg !3986
  %75 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !3988
  %76 = load i32, i32* %75, align 4, !dbg !3989
  %77 = zext i32 %76 to i64, !dbg !3989
  %78 = add i64 %77, %74, !dbg !3989
  %79 = trunc i64 %78 to i32, !dbg !3989
  store i32 %79, i32* %75, align 4, !dbg !3989
  br label %80, !dbg !3990

80:                                               ; preds = %68
  %81 = load i32, i32* %13, align 4, !dbg !3991
  %82 = add i32 %81, 1, !dbg !3991
  store i32 %82, i32* %13, align 4, !dbg !3991
  br label %64, !dbg !3992, !llvm.loop !3993

83:                                               ; preds = %64
  %84 = load i8*, i8** %5, align 8, !dbg !3995
  %85 = load i64, i64* %6, align 8, !dbg !3996
  %86 = call i64 @mqtt_pack_fixed_header(i8* %84, i64 %85, %struct.mqtt_fixed_header* %11), !dbg !3997
  store i64 %86, i64* %10, align 8, !dbg !3998
  %87 = load i64, i64* %10, align 8, !dbg !3999
  %88 = icmp sle i64 %87, 0, !dbg !4001
  br i1 %88, label %89, label %91, !dbg !4002

89:                                               ; preds = %83
  %90 = load i64, i64* %10, align 8, !dbg !4003
  store i64 %90, i64* %4, align 8, !dbg !4005
  br label %133, !dbg !4005

91:                                               ; preds = %83
  %92 = load i64, i64* %10, align 8, !dbg !4006
  %93 = load i8*, i8** %5, align 8, !dbg !4007
  %94 = getelementptr inbounds i8, i8* %93, i64 %92, !dbg !4007
  store i8* %94, i8** %5, align 8, !dbg !4007
  %95 = load i64, i64* %10, align 8, !dbg !4008
  %96 = load i64, i64* %6, align 8, !dbg !4009
  %97 = sub i64 %96, %95, !dbg !4009
  store i64 %97, i64* %6, align 8, !dbg !4009
  %98 = load i64, i64* %6, align 8, !dbg !4010
  %99 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !4012
  %100 = load i32, i32* %99, align 4, !dbg !4012
  %101 = zext i32 %100 to i64, !dbg !4013
  %102 = icmp ult i64 %98, %101, !dbg !4014
  br i1 %102, label %103, label %104, !dbg !4015

103:                                              ; preds = %91
  store i64 0, i64* %4, align 8, !dbg !4016
  br label %133, !dbg !4016

104:                                              ; preds = %91
  %105 = load i8*, i8** %5, align 8, !dbg !4018
  %106 = load i32, i32* %7, align 4, !dbg !4019
  %107 = trunc i32 %106 to i16, !dbg !4019
  %108 = call i64 @__mqtt_pack_uint16(i8* %105, i16 zeroext %107), !dbg !4020
  %109 = load i8*, i8** %5, align 8, !dbg !4021
  %110 = getelementptr inbounds i8, i8* %109, i64 %108, !dbg !4021
  store i8* %110, i8** %5, align 8, !dbg !4021
  store i32 0, i32* %13, align 4, !dbg !4022
  br label %111, !dbg !4024

111:                                              ; preds = %124, %104
  %112 = load i32, i32* %13, align 4, !dbg !4025
  %113 = load i32, i32* %12, align 4, !dbg !4027
  %114 = icmp ult i32 %112, %113, !dbg !4028
  br i1 %114, label %115, label %127, !dbg !4029

115:                                              ; preds = %111
  %116 = load i8*, i8** %5, align 8, !dbg !4030
  %117 = load i32, i32* %13, align 4, !dbg !4032
  %118 = zext i32 %117 to i64, !dbg !4033
  %119 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %118, !dbg !4033
  %120 = load i8*, i8** %119, align 8, !dbg !4033
  %121 = call i64 @__mqtt_pack_str(i8* %116, i8* %120), !dbg !4034
  %122 = load i8*, i8** %5, align 8, !dbg !4035
  %123 = getelementptr inbounds i8, i8* %122, i64 %121, !dbg !4035
  store i8* %123, i8** %5, align 8, !dbg !4035
  br label %124, !dbg !4036

124:                                              ; preds = %115
  %125 = load i32, i32* %13, align 4, !dbg !4037
  %126 = add i32 %125, 1, !dbg !4037
  store i32 %126, i32* %13, align 4, !dbg !4037
  br label %111, !dbg !4038, !llvm.loop !4039

127:                                              ; preds = %111
  %128 = load i8*, i8** %5, align 8, !dbg !4041
  %129 = load i8*, i8** %9, align 8, !dbg !4042
  %130 = ptrtoint i8* %128 to i64, !dbg !4043
  %131 = ptrtoint i8* %129 to i64, !dbg !4043
  %132 = sub i64 %130, %131, !dbg !4043
  store i64 %132, i64* %4, align 8, !dbg !4044
  br label %133, !dbg !4044

133:                                              ; preds = %127, %103, %89, %51
  %134 = load i64, i64* %4, align 8, !dbg !4045
  ret i64 %134, !dbg !4045
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_ping(%struct.mqtt_client.7* %0) #0 !dbg !4046 {
  %2 = alloca %struct.mqtt_client.7*, align 8
  %3 = alloca i32, align 4
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %2, metadata !4047, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4049, metadata !DIExpression()), !dbg !4050
  %4 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4051
  %5 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %4, i32 0, i32 16, !dbg !4051
  %6 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %5) #10, !dbg !4051
  %7 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4052
  %8 = call i32 @__mqtt_ping(%struct.mqtt_client.7* %7), !dbg !4053
  store i32 %8, i32* %3, align 4, !dbg !4054
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4055
  %10 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %9, i32 0, i32 16, !dbg !4055
  %11 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %10) #10, !dbg !4055
  %12 = load i32, i32* %3, align 4, !dbg !4056
  ret i32 %12, !dbg !4057
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_reconnect(%struct.mqtt_client.7* %0) #0 !dbg !4058 {
  %2 = alloca %struct.mqtt_client.7*, align 8
  %3 = alloca i32, align 4
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %2, metadata !4059, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4061, metadata !DIExpression()), !dbg !4062
  %4 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4063
  %5 = call i32 @mqtt_disconnect(%struct.mqtt_client.7* %4), !dbg !4064
  store i32 %5, i32* %3, align 4, !dbg !4062
  %6 = load i32, i32* %3, align 4, !dbg !4065
  %7 = icmp eq i32 %6, 1, !dbg !4067
  br i1 %7, label %8, label %17, !dbg !4068

8:                                                ; preds = %1
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4069
  %10 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %9, i32 0, i32 16, !dbg !4069
  %11 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %10) #10, !dbg !4069
  %12 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4071
  %13 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %12, i32 0, i32 6, !dbg !4072
  store i32 -2147483620, i32* %13, align 8, !dbg !4073
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4074
  %15 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %14, i32 0, i32 16, !dbg !4074
  %16 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %15) #10, !dbg !4074
  br label %17, !dbg !4075

17:                                               ; preds = %8, %1
  %18 = load i32, i32* %3, align 4, !dbg !4076
  ret i32 %18, !dbg !4077
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_disconnect(%struct.mqtt_client.7* %0) #0 !dbg !4078 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mqtt_client.7*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %3, metadata !4079, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4081, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %5, metadata !4083, metadata !DIExpression()), !dbg !4084
  %6 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4085
  %7 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %6, i32 0, i32 16, !dbg !4085
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %7) #10, !dbg !4085
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4086
  %10 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %9, i32 0, i32 6, !dbg !4086
  %11 = load i32, i32* %10, align 8, !dbg !4086
  %12 = icmp slt i32 %11, 0, !dbg !4086
  br i1 %12, label %13, label %20, !dbg !4088

13:                                               ; preds = %1
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4089
  %15 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %14, i32 0, i32 16, !dbg !4089
  %16 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %15) #10, !dbg !4089
  %17 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4092
  %18 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %17, i32 0, i32 6, !dbg !4092
  %19 = load i32, i32* %18, align 8, !dbg !4092
  store i32 %19, i32* %2, align 4, !dbg !4092
  br label %91, !dbg !4092

20:                                               ; preds = %1
  %21 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4088
  %22 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %21, i32 0, i32 17, !dbg !4088
  %23 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %22, i32 0, i32 2, !dbg !4088
  %24 = load i8*, i8** %23, align 8, !dbg !4088
  %25 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4088
  %26 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %25, i32 0, i32 17, !dbg !4088
  %27 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %26, i32 0, i32 3, !dbg !4088
  %28 = load i64, i64* %27, align 8, !dbg !4088
  %29 = call i64 @mqtt_pack_disconnect(i8* %24, i64 %28), !dbg !4088
  store i64 %29, i64* %4, align 8, !dbg !4088
  %30 = load i64, i64* %4, align 8, !dbg !4093
  %31 = icmp slt i64 %30, 0, !dbg !4093
  br i1 %31, label %32, label %42, !dbg !4088

32:                                               ; preds = %20
  %33 = load i64, i64* %4, align 8, !dbg !4095
  %34 = trunc i64 %33 to i32, !dbg !4095
  %35 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4095
  %36 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %35, i32 0, i32 6, !dbg !4095
  store i32 %34, i32* %36, align 8, !dbg !4095
  %37 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4097
  %38 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %37, i32 0, i32 16, !dbg !4097
  %39 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %38) #10, !dbg !4097
  %40 = load i64, i64* %4, align 8, !dbg !4095
  %41 = trunc i64 %40 to i32, !dbg !4095
  store i32 %41, i32* %2, align 4, !dbg !4095
  br label %91, !dbg !4095

42:                                               ; preds = %20
  %43 = load i64, i64* %4, align 8, !dbg !4099
  %44 = icmp eq i64 %43, 0, !dbg !4099
  br i1 %44, label %45, label %80, !dbg !4093

45:                                               ; preds = %42
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4101
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !4101
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %47), !dbg !4101
  %48 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4101
  %49 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %48, i32 0, i32 17, !dbg !4101
  %50 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %49, i32 0, i32 2, !dbg !4101
  %51 = load i8*, i8** %50, align 8, !dbg !4101
  %52 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4101
  %53 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %52, i32 0, i32 17, !dbg !4101
  %54 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %53, i32 0, i32 3, !dbg !4101
  %55 = load i64, i64* %54, align 8, !dbg !4101
  %56 = call i64 @mqtt_pack_disconnect(i8* %51, i64 %55), !dbg !4101
  store i64 %56, i64* %4, align 8, !dbg !4101
  %57 = load i64, i64* %4, align 8, !dbg !4103
  %58 = icmp slt i64 %57, 0, !dbg !4103
  br i1 %58, label %59, label %69, !dbg !4101

59:                                               ; preds = %45
  %60 = load i64, i64* %4, align 8, !dbg !4105
  %61 = trunc i64 %60 to i32, !dbg !4105
  %62 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4105
  %63 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %62, i32 0, i32 6, !dbg !4105
  store i32 %61, i32* %63, align 8, !dbg !4105
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4107
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 16, !dbg !4107
  %66 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %65) #10, !dbg !4107
  %67 = load i64, i64* %4, align 8, !dbg !4105
  %68 = trunc i64 %67 to i32, !dbg !4105
  store i32 %68, i32* %2, align 4, !dbg !4105
  br label %91, !dbg !4105

69:                                               ; preds = %45
  %70 = load i64, i64* %4, align 8, !dbg !4109
  %71 = icmp eq i64 %70, 0, !dbg !4109
  br i1 %71, label %72, label %78, !dbg !4103

72:                                               ; preds = %69
  %73 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4111
  %74 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %73, i32 0, i32 6, !dbg !4111
  store i32 -2147483632, i32* %74, align 8, !dbg !4111
  %75 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4113
  %76 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %75, i32 0, i32 16, !dbg !4113
  %77 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %76) #10, !dbg !4113
  store i32 -2147483632, i32* %2, align 4, !dbg !4111
  br label %91, !dbg !4111

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78
  br label %80, !dbg !4101

80:                                               ; preds = %79, %42
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4088
  %83 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %82, i32 0, i32 17, !dbg !4088
  %84 = load i64, i64* %4, align 8, !dbg !4088
  %85 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %83, i64 %84), !dbg !4088
  store %struct.mqtt_queued_message* %85, %struct.mqtt_queued_message** %5, align 8, !dbg !4088
  %86 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %5, align 8, !dbg !4115
  %87 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %86, i32 0, i32 4, !dbg !4116
  store i32 14, i32* %87, align 8, !dbg !4117
  %88 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4118
  %89 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %88, i32 0, i32 16, !dbg !4118
  %90 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %89) #10, !dbg !4118
  store i32 1, i32* %2, align 4, !dbg !4119
  br label %91, !dbg !4119

91:                                               ; preds = %81, %72, %59, %32, %13
  %92 = load i32, i32* %2, align 4, !dbg !4120
  ret i32 %92, !dbg !4120
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_disconnect(i8* %0, i64 %1) #0 !dbg !4121 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_fixed_header, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4122, metadata !DIExpression()), !dbg !4123
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %5, metadata !4126, metadata !DIExpression()), !dbg !4127
  %6 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 0, !dbg !4128
  store i32 14, i32* %6, align 4, !dbg !4129
  %7 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 1, !dbg !4130
  %8 = load i8, i8* %7, align 4, !dbg !4131
  %9 = and i8 %8, -16, !dbg !4131
  store i8 %9, i8* %7, align 4, !dbg !4131
  %10 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 2, !dbg !4132
  store i32 0, i32* %10, align 4, !dbg !4133
  %11 = load i8*, i8** %3, align 8, !dbg !4134
  %12 = load i64, i64* %4, align 8, !dbg !4135
  %13 = call i64 @mqtt_pack_fixed_header(i8* %11, i64 %12, %struct.mqtt_fixed_header* %5), !dbg !4136
  ret i64 %13, !dbg !4137
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mqtt_error_str(i32 %0) #0 !dbg !4138 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4141, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4143, metadata !DIExpression()), !dbg !4144
  %5 = load i32, i32* %3, align 4, !dbg !4145
  %6 = sub nsw i32 %5, -2147483648, !dbg !4146
  store i32 %6, i32* %4, align 4, !dbg !4144
  %7 = load i32, i32* %4, align 4, !dbg !4147
  %8 = icmp sge i32 %7, 0, !dbg !4149
  br i1 %8, label %9, label %14, !dbg !4150

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !4151
  %11 = sext i32 %10 to i64, !dbg !4153
  %12 = getelementptr inbounds [29 x i8*], [29 x i8*]* @MQTT_ERRORS_STR, i64 0, i64 %11, !dbg !4153
  %13 = load i8*, i8** %12, align 8, !dbg !4153
  store i8* %13, i8** %2, align 8, !dbg !4154
  br label %24, !dbg !4154

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4, !dbg !4155
  %16 = icmp eq i32 %15, 0, !dbg !4157
  br i1 %16, label %17, label %18, !dbg !4158

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.16, i64 0, i64 0), i8** %2, align 8, !dbg !4159
  br label %24, !dbg !4159

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4, !dbg !4161
  %20 = icmp sgt i32 %19, 0, !dbg !4163
  br i1 %20, label %21, label %22, !dbg !4164

21:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.17, i64 0, i64 0), i8** %2, align 8, !dbg !4165
  br label %24, !dbg !4165

22:                                               ; preds = %18
  %23 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @MQTT_ERRORS_STR, i64 0, i64 0), align 16, !dbg !4167
  store i8* %23, i8** %2, align 8, !dbg !4169
  br label %24, !dbg !4169

24:                                               ; preds = %22, %21, %17, %9
  %25 = load i8*, i8** %2, align 8, !dbg !4170
  ret i8* %25, !dbg !4170
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pal_sendall(i32 %0, i8* %1, i64 %2, i32 %3) #0 !dbg !4171 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4175, metadata !DIExpression()), !dbg !4176
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4177, metadata !DIExpression()), !dbg !4178
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4179, metadata !DIExpression()), !dbg !4180
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4181, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4183, metadata !DIExpression()), !dbg !4184
  store i64 0, i64* %10, align 8, !dbg !4184
  br label %12, !dbg !4185

12:                                               ; preds = %38, %4
  %13 = load i64, i64* %10, align 8, !dbg !4186
  %14 = load i64, i64* %8, align 8, !dbg !4187
  %15 = icmp ult i64 %13, %14, !dbg !4188
  br i1 %15, label %16, label %39, !dbg !4185

16:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4189, metadata !DIExpression()), !dbg !4191
  %17 = load i32, i32* %6, align 4, !dbg !4192
  %18 = load i8*, i8** %7, align 8, !dbg !4193
  %19 = load i64, i64* %10, align 8, !dbg !4194
  %20 = getelementptr i8, i8* %18, i64 %19, !dbg !4195
  %21 = load i64, i64* %8, align 8, !dbg !4196
  %22 = load i64, i64* %10, align 8, !dbg !4197
  %23 = sub i64 %21, %22, !dbg !4198
  %24 = load i32, i32* %9, align 4, !dbg !4199
  %25 = call i64 @send(i32 %17, i8* %20, i64 %23, i32 %24), !dbg !4200
  store i64 %25, i64* %11, align 8, !dbg !4191
  %26 = load i64, i64* %11, align 8, !dbg !4201
  %27 = icmp slt i64 %26, 1, !dbg !4203
  br i1 %27, label %28, label %34, !dbg !4204

28:                                               ; preds = %16
  %29 = call i32* @__errno_location() #12, !dbg !4205
  %30 = load i32, i32* %29, align 4, !dbg !4205
  %31 = icmp ne i32 %30, 11, !dbg !4208
  br i1 %31, label %32, label %33, !dbg !4209

32:                                               ; preds = %28
  store i64 -2147483631, i64* %5, align 8, !dbg !4210
  br label %41, !dbg !4210

33:                                               ; preds = %28
  br label %38, !dbg !4212

34:                                               ; preds = %16
  %35 = load i64, i64* %11, align 8, !dbg !4213
  %36 = load i64, i64* %10, align 8, !dbg !4215
  %37 = add i64 %36, %35, !dbg !4215
  store i64 %37, i64* %10, align 8, !dbg !4215
  br label %38

38:                                               ; preds = %34, %33
  br label %12, !dbg !4185, !llvm.loop !4216

39:                                               ; preds = %12
  %40 = load i64, i64* %10, align 8, !dbg !4218
  store i64 %40, i64* %5, align 8, !dbg !4219
  br label %41, !dbg !4219

41:                                               ; preds = %39, %32
  %42 = load i64, i64* %5, align 8, !dbg !4220
  ret i64 %42, !dbg !4220
}

declare dso_local i64 @send(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pal_recvall(i32 %0, i8* %1, i64 %2, i32 %3) #0 !dbg !4221 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4224, metadata !DIExpression()), !dbg !4225
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4226, metadata !DIExpression()), !dbg !4227
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4228, metadata !DIExpression()), !dbg !4229
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4230, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4232, metadata !DIExpression()), !dbg !4234
  %12 = load i8*, i8** %7, align 8, !dbg !4235
  store i8* %12, i8** %10, align 8, !dbg !4234
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4236, metadata !DIExpression()), !dbg !4237
  br label %13, !dbg !4238

13:                                               ; preds = %51, %4
  %14 = load i32, i32* %6, align 4, !dbg !4239
  %15 = load i8*, i8** %7, align 8, !dbg !4241
  %16 = load i64, i64* %8, align 8, !dbg !4242
  %17 = load i32, i32* %9, align 4, !dbg !4243
  %18 = call i64 @recv(i32 %14, i8* %15, i64 %16, i32 %17), !dbg !4244
  store i64 %18, i64* %11, align 8, !dbg !4245
  %19 = load i64, i64* %11, align 8, !dbg !4246
  %20 = icmp sgt i64 %19, 0, !dbg !4248
  br i1 %20, label %21, label %28, !dbg !4249

21:                                               ; preds = %13
  %22 = load i64, i64* %11, align 8, !dbg !4250
  %23 = load i8*, i8** %7, align 8, !dbg !4252
  %24 = getelementptr i8, i8* %23, i64 %22, !dbg !4252
  store i8* %24, i8** %7, align 8, !dbg !4252
  %25 = load i64, i64* %11, align 8, !dbg !4253
  %26 = load i64, i64* %8, align 8, !dbg !4254
  %27 = sub i64 %26, %25, !dbg !4254
  store i64 %27, i64* %8, align 8, !dbg !4254
  br label %44, !dbg !4255

28:                                               ; preds = %13
  %29 = load i64, i64* %11, align 8, !dbg !4256
  %30 = icmp eq i64 %29, 0, !dbg !4258
  br i1 %30, label %42, label %31, !dbg !4259

31:                                               ; preds = %28
  %32 = load i64, i64* %11, align 8, !dbg !4260
  %33 = icmp slt i64 %32, 0, !dbg !4261
  br i1 %33, label %34, label %43, !dbg !4262

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #12, !dbg !4263
  %36 = load i32, i32* %35, align 4, !dbg !4263
  %37 = icmp ne i32 %36, 11, !dbg !4264
  br i1 %37, label %38, label %43, !dbg !4265

38:                                               ; preds = %34
  %39 = call i32* @__errno_location() #12, !dbg !4266
  %40 = load i32, i32* %39, align 4, !dbg !4266
  %41 = icmp ne i32 %40, 11, !dbg !4267
  br i1 %41, label %42, label %43, !dbg !4268

42:                                               ; preds = %38, %28
  store i64 -2147483631, i64* %5, align 8, !dbg !4269
  br label %59, !dbg !4269

43:                                               ; preds = %38, %34, %31
  br label %44

44:                                               ; preds = %43, %21
  br label %45, !dbg !4271

45:                                               ; preds = %44
  %46 = load i64, i64* %11, align 8, !dbg !4272
  %47 = icmp sgt i64 %46, 0, !dbg !4273
  br i1 %47, label %48, label %51, !dbg !4274

48:                                               ; preds = %45
  %49 = load i64, i64* %8, align 8, !dbg !4275
  %50 = icmp ugt i64 %49, 0, !dbg !4276
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ], !dbg !4277
  br i1 %52, label %13, label %53, !dbg !4271, !llvm.loop !4278

53:                                               ; preds = %51
  %54 = load i8*, i8** %7, align 8, !dbg !4280
  %55 = load i8*, i8** %10, align 8, !dbg !4281
  %56 = ptrtoint i8* %54 to i64, !dbg !4282
  %57 = ptrtoint i8* %55 to i64, !dbg !4282
  %58 = sub i64 %56, %57, !dbg !4282
  store i64 %58, i64* %5, align 8, !dbg !4283
  br label %59, !dbg !4283

59:                                               ; preds = %53, %42
  %60 = load i64, i64* %5, align 8, !dbg !4284
  ret i64 %60, !dbg !4284
}

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!148, !2, !261}
!llvm.ident = !{!265, !265, !265}
!llvm.module.flags = !{!266, !267, !268}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mqtt_fixed_header_rules", scope: !2, file: !135, line: 899, type: !139, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.0-3ubuntu1~21.04.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !94, globals: !132, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/ryan/git/MQTT-C/src/mqtt.c", directory: "/home/ryan/git/MQTT-C/build")
!4 = !{!5, !39, !45, !61, !69, !77, !83}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MQTTErrors", file: !6, line: 234, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "include/mqtt.h", directory: "/home/ryan/git/MQTT-C")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!9 = !DIEnumerator(name: "MQTT_ERROR_UNKNOWN", value: -2147483648)
!10 = !DIEnumerator(name: "MQTT_ERROR_NULLPTR", value: -2147483647)
!11 = !DIEnumerator(name: "MQTT_ERROR_CONTROL_FORBIDDEN_TYPE", value: -2147483646)
!12 = !DIEnumerator(name: "MQTT_ERROR_CONTROL_INVALID_FLAGS", value: -2147483645)
!13 = !DIEnumerator(name: "MQTT_ERROR_CONTROL_WRONG_TYPE", value: -2147483644)
!14 = !DIEnumerator(name: "MQTT_ERROR_CONNECT_CLIENT_ID_REFUSED", value: -2147483643)
!15 = !DIEnumerator(name: "MQTT_ERROR_CONNECT_NULL_WILL_MESSAGE", value: -2147483642)
!16 = !DIEnumerator(name: "MQTT_ERROR_CONNECT_FORBIDDEN_WILL_QOS", value: -2147483641)
!17 = !DIEnumerator(name: "MQTT_ERROR_CONNACK_FORBIDDEN_FLAGS", value: -2147483640)
!18 = !DIEnumerator(name: "MQTT_ERROR_CONNACK_FORBIDDEN_CODE", value: -2147483639)
!19 = !DIEnumerator(name: "MQTT_ERROR_PUBLISH_FORBIDDEN_QOS", value: -2147483638)
!20 = !DIEnumerator(name: "MQTT_ERROR_SUBSCRIBE_TOO_MANY_TOPICS", value: -2147483637)
!21 = !DIEnumerator(name: "MQTT_ERROR_MALFORMED_RESPONSE", value: -2147483636)
!22 = !DIEnumerator(name: "MQTT_ERROR_UNSUBSCRIBE_TOO_MANY_TOPICS", value: -2147483635)
!23 = !DIEnumerator(name: "MQTT_ERROR_RESPONSE_INVALID_CONTROL_TYPE", value: -2147483634)
!24 = !DIEnumerator(name: "MQTT_ERROR_CONNECT_NOT_CALLED", value: -2147483633)
!25 = !DIEnumerator(name: "MQTT_ERROR_SEND_BUFFER_IS_FULL", value: -2147483632)
!26 = !DIEnumerator(name: "MQTT_ERROR_SOCKET_ERROR", value: -2147483631)
!27 = !DIEnumerator(name: "MQTT_ERROR_MALFORMED_REQUEST", value: -2147483630)
!28 = !DIEnumerator(name: "MQTT_ERROR_RECV_BUFFER_TOO_SMALL", value: -2147483629)
!29 = !DIEnumerator(name: "MQTT_ERROR_ACK_OF_UNKNOWN", value: -2147483628)
!30 = !DIEnumerator(name: "MQTT_ERROR_NOT_IMPLEMENTED", value: -2147483627)
!31 = !DIEnumerator(name: "MQTT_ERROR_CONNECTION_REFUSED", value: -2147483626)
!32 = !DIEnumerator(name: "MQTT_ERROR_SUBSCRIBE_FAILED", value: -2147483625)
!33 = !DIEnumerator(name: "MQTT_ERROR_CONNECTION_CLOSED", value: -2147483624)
!34 = !DIEnumerator(name: "MQTT_ERROR_INITIAL_RECONNECT", value: -2147483623)
!35 = !DIEnumerator(name: "MQTT_ERROR_INVALID_REMAINING_LENGTH", value: -2147483622)
!36 = !DIEnumerator(name: "MQTT_ERROR_CLEAN_SESSION_IS_REQUIRED", value: -2147483621)
!37 = !DIEnumerator(name: "MQTT_ERROR_RECONNECTING", value: -2147483620)
!38 = !DIEnumerator(name: "MQTT_OK", value: 1)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MQTTQueuedMessageState", file: !6, line: 919, baseType: !40, size: 32, elements: !41)
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "MQTT_QUEUED_UNSENT", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "MQTT_QUEUED_AWAITING_ACK", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "MQTT_QUEUED_COMPLETE", value: 2, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MQTTControlPacketType", file: !6, line: 131, baseType: !40, size: 32, elements: !46)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!47 = !DIEnumerator(name: "MQTT_CONTROL_CONNECT", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "MQTT_CONTROL_CONNACK", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "MQTT_CONTROL_PUBLISH", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "MQTT_CONTROL_PUBACK", value: 4, isUnsigned: true)
!51 = !DIEnumerator(name: "MQTT_CONTROL_PUBREC", value: 5, isUnsigned: true)
!52 = !DIEnumerator(name: "MQTT_CONTROL_PUBREL", value: 6, isUnsigned: true)
!53 = !DIEnumerator(name: "MQTT_CONTROL_PUBCOMP", value: 7, isUnsigned: true)
!54 = !DIEnumerator(name: "MQTT_CONTROL_SUBSCRIBE", value: 8, isUnsigned: true)
!55 = !DIEnumerator(name: "MQTT_CONTROL_SUBACK", value: 9, isUnsigned: true)
!56 = !DIEnumerator(name: "MQTT_CONTROL_UNSUBSCRIBE", value: 10, isUnsigned: true)
!57 = !DIEnumerator(name: "MQTT_CONTROL_UNSUBACK", value: 11, isUnsigned: true)
!58 = !DIEnumerator(name: "MQTT_CONTROL_PINGREQ", value: 12, isUnsigned: true)
!59 = !DIEnumerator(name: "MQTT_CONTROL_PINGRESP", value: 13, isUnsigned: true)
!60 = !DIEnumerator(name: "MQTT_CONTROL_DISCONNECT", value: 14, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MQTTPublishFlags", file: !6, line: 742, baseType: !40, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68}
!63 = !DIEnumerator(name: "MQTT_PUBLISH_DUP", value: 8, isUnsigned: true)
!64 = !DIEnumerator(name: "MQTT_PUBLISH_QOS_0", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "MQTT_PUBLISH_QOS_1", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "MQTT_PUBLISH_QOS_2", value: 4, isUnsigned: true)
!67 = !DIEnumerator(name: "MQTT_PUBLISH_QOS_MASK", value: 6, isUnsigned: true)
!68 = !DIEnumerator(name: "MQTT_PUBLISH_RETAIN", value: 1, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MQTTConnackReturnCode", file: !6, line: 298, baseType: !40, size: 32, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76}
!71 = !DIEnumerator(name: "MQTT_CONNACK_ACCEPTED", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "MQTT_CONNACK_REFUSED_PROTOCOL_VERSION", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "MQTT_CONNACK_REFUSED_IDENTIFIER_REJECTED", value: 2, isUnsigned: true)
!74 = !DIEnumerator(name: "MQTT_CONNACK_REFUSED_SERVER_UNAVAILABLE", value: 3, isUnsigned: true)
!75 = !DIEnumerator(name: "MQTT_CONNACK_REFUSED_BAD_USER_NAME_OR_PASSWORD", value: 4, isUnsigned: true)
!76 = !DIEnumerator(name: "MQTT_CONNACK_REFUSED_NOT_AUTHORIZED", value: 5, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MQTTSubackReturnCodes", file: !6, line: 444, baseType: !40, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82}
!79 = !DIEnumerator(name: "MQTT_SUBACK_SUCCESS_MAX_QOS_0", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "MQTT_SUBACK_SUCCESS_MAX_QOS_1", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "MQTT_SUBACK_SUCCESS_MAX_QOS_2", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "MQTT_SUBACK_FAILURE", value: 128, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MQTTConnectFlags", file: !6, line: 674, baseType: !40, size: 32, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93}
!85 = !DIEnumerator(name: "MQTT_CONNECT_RESERVED", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "MQTT_CONNECT_CLEAN_SESSION", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "MQTT_CONNECT_WILL_FLAG", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "MQTT_CONNECT_WILL_QOS_0", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "MQTT_CONNECT_WILL_QOS_1", value: 8, isUnsigned: true)
!90 = !DIEnumerator(name: "MQTT_CONNECT_WILL_QOS_2", value: 16, isUnsigned: true)
!91 = !DIEnumerator(name: "MQTT_CONNECT_WILL_RETAIN", value: 32, isUnsigned: true)
!92 = !DIEnumerator(name: "MQTT_CONNECT_PASSWORD", value: 64, isUnsigned: true)
!93 = !DIEnumerator(name: "MQTT_CONNECT_USER_NAME", value: 128, isUnsigned: true)
!94 = !{!95, !96, !123, !124, !112, !127, !128, !129, !101, !120, !69, !130, !107, !100}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_queued_message", file: !6, line: 929, size: 320, elements: !98)
!98 = !{!99, !106, !110, !111, !118, !119}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !97, file: !6, line: 931, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !102, line: 24, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !104, line: 38, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!105 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !97, file: !6, line: 934, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 46, baseType: !109)
!108 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.0/include/stddef.h", directory: "")
!109 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !97, file: !6, line: 938, baseType: !39, size: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "time_sent", scope: !97, file: !6, line: 946, baseType: !112, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "mqtt_pal_time_t", file: !113, line: 85, baseType: !114)
!113 = !DIFile(filename: "include/mqtt_pal.h", directory: "/home/ryan/git/MQTT-C")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !115, line: 7, baseType: !116)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !104, line: 160, baseType: !117)
!117 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "control_type", scope: !97, file: !6, line: 951, baseType: !45, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !97, file: !6, line: 959, baseType: !120, size: 16, offset: 288)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !102, line: 25, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !104, line: 40, baseType: !122)
!122 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "mqtt_pal_socket_handle", file: !113, line: 118, baseType: !7)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!127 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!128 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !102, line: 26, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !104, line: 42, baseType: !40)
!132 = !{!0, !133}
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "MQTT_ERRORS_STR", scope: !2, file: !135, line: 1765, type: !136, isLocal: true, isDefinition: true)
!135 = !DIFile(filename: "src/mqtt.c", directory: "/home/ryan/git/MQTT-C")
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 1856, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 29)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 895, size: 384, elements: !140)
!140 = !{!141, !146, !147}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "control_type_is_valid", scope: !139, file: !135, line: 896, baseType: !142, size: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!144 = !{!145}
!145 = !DISubrange(count: 16)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "required_flags", scope: !139, file: !135, line: 897, baseType: !142, size: 128, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mask_required_flags", scope: !139, file: !135, line: 898, baseType: !142, size: 128, offset: 256)
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "Ubuntu clang version 12.0.0-3ubuntu1~21.04.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !150, retainedTypes: !163, splitDebugInlining: false, nameTableKind: None)
!149 = !DIFile(filename: "/home/ryan/git/MQTT-C/examples/simple_subscriber.c", directory: "/home/ryan/git/MQTT-C/build")
!150 = !{!151, !5, !39, !45, !83}
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !152, line: 24, baseType: !40, size: 32, elements: !153)
!152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162}
!154 = !DIEnumerator(name: "SOCK_STREAM", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "SOCK_DGRAM", value: 2, isUnsigned: true)
!156 = !DIEnumerator(name: "SOCK_RAW", value: 3, isUnsigned: true)
!157 = !DIEnumerator(name: "SOCK_RDM", value: 4, isUnsigned: true)
!158 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5, isUnsigned: true)
!159 = !DIEnumerator(name: "SOCK_DCCP", value: 6, isUnsigned: true)
!160 = !DIEnumerator(name: "SOCK_PACKET", value: 10, isUnsigned: true)
!161 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288, isUnsigned: true)
!162 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048, isUnsigned: true)
!163 = !{!95, !164, !124, !165}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_client", file: !6, line: 1093, size: 1664, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !196, !197, !201, !205, !206, !213, !244}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "socketfd", scope: !166, file: !6, line: 1095, baseType: !123, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pid_lfsr", scope: !166, file: !6, line: 1098, baseType: !120, size: 16, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !166, file: !6, line: 1101, baseType: !120, size: 16, offset: 48)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_keep_alives", scope: !166, file: !6, line: 1107, baseType: !7, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "send_offset", scope: !166, file: !6, line: 1114, baseType: !107, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "time_of_last_send", scope: !166, file: !6, line: 1123, baseType: !112, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !166, file: !6, line: 1133, baseType: !5, size: 32, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "response_timeout", scope: !166, file: !6, line: 1143, baseType: !7, size: 32, offset: 288)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_timeouts", scope: !166, file: !6, line: 1146, baseType: !7, size: 32, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "typical_response_time", scope: !166, file: !6, line: 1154, baseType: !128, size: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "publish_response_callback", scope: !166, file: !6, line: 1167, baseType: !179, size: 64, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182, !183}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_publish", file: !6, line: 341, size: 320, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !193, !194, !195}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dup_flag", scope: !184, file: !6, line: 346, baseType: !101, size: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "qos_level", scope: !184, file: !6, line: 355, baseType: !101, size: 8, offset: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "retain_flag", scope: !184, file: !6, line: 358, baseType: !101, size: 8, offset: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "topic_name_size", scope: !184, file: !6, line: 361, baseType: !120, size: 16, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "topic_name", scope: !184, file: !6, line: 368, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !184, file: !6, line: 371, baseType: !120, size: 16, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "application_message", scope: !184, file: !6, line: 374, baseType: !191, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "application_message_size", scope: !184, file: !6, line: 377, baseType: !107, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "publish_response_callback_state", scope: !166, file: !6, line: 1175, baseType: !95, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "inspector_callback", scope: !166, file: !6, line: 1192, baseType: !198, size: 64, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!5, !165}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_callback", scope: !166, file: !6, line: 1201, baseType: !202, size: 64, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !165, !182}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_state", scope: !166, file: !6, line: 1207, baseType: !95, size: 64, offset: 704)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer", scope: !166, file: !6, line: 1224, baseType: !207, size: 256, offset: 768)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !6, line: 1212, size: 256, elements: !208)
!208 = !{!209, !210, !211, !212}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !207, file: !6, line: 1214, baseType: !100, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mem_size", scope: !207, file: !6, line: 1217, baseType: !107, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !207, file: !6, line: 1220, baseType: !100, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "curr_sz", scope: !207, file: !6, line: 1223, baseType: !107, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !166, file: !6, line: 1232, baseType: !214, size: 320, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "mqtt_pal_mutex_t", file: !113, line: 86, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !216, line: 72, baseType: !217)
!216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "")
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !216, line: 67, size: 320, elements: !218)
!218 = !{!219, !239, !243}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !217, file: !216, line: 69, baseType: !220, size: 320)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !221, line: 22, size: 320, elements: !222)
!221 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "")
!222 = !{!223, !224, !225, !226, !227, !228, !230, !231}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !220, file: !221, line: 24, baseType: !7, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !220, file: !221, line: 25, baseType: !40, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !220, file: !221, line: 26, baseType: !7, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !220, file: !221, line: 28, baseType: !40, size: 32, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !220, file: !221, line: 32, baseType: !7, size: 32, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !220, file: !221, line: 34, baseType: !229, size: 16, offset: 160)
!229 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !220, file: !221, line: 35, baseType: !229, size: 16, offset: 176)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !220, file: !221, line: 36, baseType: !232, size: 128, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !233, line: 53, baseType: !234)
!233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !233, line: 49, size: 128, elements: !235)
!235 = !{!236, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !234, file: !233, line: 51, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !234, file: !233, line: 52, baseType: !237, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !217, file: !216, line: 70, baseType: !240, size: 320)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 320, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 40)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !217, file: !216, line: 71, baseType: !117, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mq", scope: !166, file: !6, line: 1235, baseType: !245, size: 320, offset: 1344)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_message_queue", file: !6, line: 969, size: 320, elements: !246)
!246 = !{!247, !248, !249, !250, !251}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !245, file: !6, line: 975, baseType: !95, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !245, file: !6, line: 978, baseType: !95, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !245, file: !6, line: 986, baseType: !100, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "curr_sz", scope: !245, file: !6, line: 996, baseType: !107, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "queue_tail", scope: !245, file: !6, line: 1003, baseType: !252, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_queued_message", file: !6, line: 929, size: 320, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !253, file: !6, line: 931, baseType: !100, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !253, file: !6, line: 934, baseType: !107, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !253, file: !6, line: 938, baseType: !39, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "time_sent", scope: !253, file: !6, line: 946, baseType: !112, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "control_type", scope: !253, file: !6, line: 951, baseType: !45, size: 32, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !253, file: !6, line: 959, baseType: !120, size: 16, offset: 288)
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "Ubuntu clang version 12.0.0-3ubuntu1~21.04.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !263, retainedTypes: !264, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "/home/ryan/git/MQTT-C/src/mqtt_pal.c", directory: "/home/ryan/git/MQTT-C/build")
!263 = !{!5}
!264 = !{!107}
!265 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~21.04.1"}
!266 = !{i32 7, !"Dwarf Version", i32 4}
!267 = !{i32 2, !"Debug Info Version", i32 3}
!268 = !{i32 1, !"wchar_size", i32 4}
!269 = distinct !DISubprogram(name: "open_nb_socket", scope: !270, file: !270, line: 18, type: !271, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !148, retainedNodes: !273)
!270 = !DIFile(filename: "examples/templates/posix_sockets.h", directory: "/home/ryan/git/MQTT-C")
!271 = !DISubroutineType(types: !272)
!272 = !{!7, !124, !124}
!273 = !{}
!274 = !DILocalVariable(name: "addr", arg: 1, scope: !269, file: !270, line: 18, type: !124)
!275 = !DILocation(line: 18, column: 32, scope: !269)
!276 = !DILocalVariable(name: "port", arg: 2, scope: !269, file: !270, line: 18, type: !124)
!277 = !DILocation(line: 18, column: 50, scope: !269)
!278 = !DILocalVariable(name: "hints", scope: !269, file: !270, line: 19, type: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !280, line: 565, size: 384, elements: !281)
!280 = !DIFile(filename: "/usr/include/netdb.h", directory: "")
!281 = !{!282, !283, !284, !285, !286, !290, !302, !303}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !279, file: !280, line: 567, baseType: !7, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !279, file: !280, line: 568, baseType: !7, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !279, file: !280, line: 569, baseType: !7, size: 32, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !279, file: !280, line: 570, baseType: !7, size: 32, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !279, file: !280, line: 571, baseType: !287, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !288, line: 274, baseType: !289)
!288 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !104, line: 210, baseType: !40)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !279, file: !280, line: 572, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !293, line: 178, size: 128, elements: !294)
!293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!294 = !{!295, !298}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !292, file: !293, line: 180, baseType: !296, size: 16)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !297, line: 28, baseType: !122)
!297 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !292, file: !293, line: 181, baseType: !299, size: 112, offset: 16)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 112, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 14)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !279, file: !280, line: 573, baseType: !164, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !279, file: !280, line: 574, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!305 = !DILocation(line: 19, column: 21, scope: !269)
!306 = !DILocation(line: 21, column: 11, scope: !269)
!307 = !DILocation(line: 21, column: 21, scope: !269)
!308 = !DILocation(line: 22, column: 11, scope: !269)
!309 = !DILocation(line: 22, column: 23, scope: !269)
!310 = !DILocalVariable(name: "sockfd", scope: !269, file: !270, line: 23, type: !7)
!311 = !DILocation(line: 23, column: 9, scope: !269)
!312 = !DILocalVariable(name: "rv", scope: !269, file: !270, line: 24, type: !7)
!313 = !DILocation(line: 24, column: 9, scope: !269)
!314 = !DILocalVariable(name: "p", scope: !269, file: !270, line: 25, type: !304)
!315 = !DILocation(line: 25, column: 22, scope: !269)
!316 = !DILocalVariable(name: "servinfo", scope: !269, file: !270, line: 25, type: !304)
!317 = !DILocation(line: 25, column: 26, scope: !269)
!318 = !DILocation(line: 28, column: 22, scope: !269)
!319 = !DILocation(line: 28, column: 28, scope: !269)
!320 = !DILocation(line: 28, column: 10, scope: !269)
!321 = !DILocation(line: 28, column: 8, scope: !269)
!322 = !DILocation(line: 29, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !269, file: !270, line: 29, column: 8)
!324 = !DILocation(line: 29, column: 11, scope: !323)
!325 = !DILocation(line: 29, column: 8, scope: !269)
!326 = !DILocation(line: 30, column: 17, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !270, line: 29, column: 17)
!328 = !DILocation(line: 30, column: 83, scope: !327)
!329 = !DILocation(line: 30, column: 70, scope: !327)
!330 = !DILocation(line: 30, column: 9, scope: !327)
!331 = !DILocation(line: 31, column: 9, scope: !327)
!332 = !DILocation(line: 35, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !269, file: !270, line: 35, column: 5)
!334 = !DILocation(line: 35, column: 11, scope: !333)
!335 = !DILocation(line: 35, column: 9, scope: !333)
!336 = !DILocation(line: 35, column: 23, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !270, line: 35, column: 5)
!338 = !DILocation(line: 35, column: 25, scope: !337)
!339 = !DILocation(line: 35, column: 5, scope: !333)
!340 = !DILocation(line: 36, column: 25, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !270, line: 35, column: 50)
!342 = !DILocation(line: 36, column: 28, scope: !341)
!343 = !DILocation(line: 36, column: 39, scope: !341)
!344 = !DILocation(line: 36, column: 42, scope: !341)
!345 = !DILocation(line: 36, column: 55, scope: !341)
!346 = !DILocation(line: 36, column: 58, scope: !341)
!347 = !DILocation(line: 36, column: 18, scope: !341)
!348 = !DILocation(line: 36, column: 16, scope: !341)
!349 = !DILocation(line: 37, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !341, file: !270, line: 37, column: 13)
!351 = !DILocation(line: 37, column: 20, scope: !350)
!352 = !DILocation(line: 37, column: 13, scope: !341)
!353 = !DILocation(line: 37, column: 27, scope: !350)
!354 = !DILocation(line: 40, column: 22, scope: !341)
!355 = !DILocation(line: 40, column: 30, scope: !341)
!356 = !DILocation(line: 40, column: 33, scope: !341)
!357 = !DILocation(line: 40, column: 42, scope: !341)
!358 = !DILocation(line: 40, column: 45, scope: !341)
!359 = !DILocation(line: 40, column: 14, scope: !341)
!360 = !DILocation(line: 40, column: 12, scope: !341)
!361 = !DILocation(line: 41, column: 12, scope: !362)
!362 = distinct !DILexicalBlock(scope: !341, file: !270, line: 41, column: 12)
!363 = !DILocation(line: 41, column: 15, scope: !362)
!364 = !DILocation(line: 41, column: 12, scope: !341)
!365 = !DILocation(line: 42, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !270, line: 41, column: 22)
!367 = !DILocation(line: 42, column: 11, scope: !366)
!368 = !DILocation(line: 43, column: 18, scope: !366)
!369 = !DILocation(line: 44, column: 11, scope: !366)
!370 = !DILocation(line: 46, column: 9, scope: !341)
!371 = !DILocation(line: 35, column: 38, scope: !337)
!372 = !DILocation(line: 35, column: 41, scope: !337)
!373 = !DILocation(line: 35, column: 36, scope: !337)
!374 = !DILocation(line: 35, column: 5, scope: !337)
!375 = distinct !{!375, !339, !376, !377}
!376 = !DILocation(line: 47, column: 5, scope: !333)
!377 = !{!"llvm.loop.mustprogress"}
!378 = !DILocation(line: 50, column: 18, scope: !269)
!379 = !DILocation(line: 50, column: 5, scope: !269)
!380 = !DILocation(line: 54, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !269, file: !270, line: 54, column: 9)
!382 = !DILocation(line: 54, column: 16, scope: !381)
!383 = !DILocation(line: 54, column: 9, scope: !269)
!384 = !DILocation(line: 54, column: 29, scope: !381)
!385 = !DILocation(line: 54, column: 52, scope: !381)
!386 = !DILocation(line: 54, column: 46, scope: !381)
!387 = !DILocation(line: 54, column: 69, scope: !381)
!388 = !DILocation(line: 54, column: 23, scope: !381)
!389 = !DILocation(line: 72, column: 12, scope: !269)
!390 = !DILocation(line: 72, column: 5, scope: !269)
!391 = !DILocation(line: 73, column: 1, scope: !269)
!392 = distinct !DISubprogram(name: "main", scope: !393, file: !393, line: 34, type: !394, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !148, retainedNodes: !273)
!393 = !DIFile(filename: "examples/simple_subscriber.c", directory: "/home/ryan/git/MQTT-C")
!394 = !DISubroutineType(types: !395)
!395 = !{!7, !7, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!397 = !DILocalVariable(name: "argc", arg: 1, scope: !392, file: !393, line: 34, type: !7)
!398 = !DILocation(line: 34, column: 14, scope: !392)
!399 = !DILocalVariable(name: "argv", arg: 2, scope: !392, file: !393, line: 34, type: !396)
!400 = !DILocation(line: 34, column: 32, scope: !392)
!401 = !DILocalVariable(name: "addr", scope: !392, file: !393, line: 36, type: !124)
!402 = !DILocation(line: 36, column: 17, scope: !392)
!403 = !DILocalVariable(name: "port", scope: !392, file: !393, line: 37, type: !124)
!404 = !DILocation(line: 37, column: 17, scope: !392)
!405 = !DILocalVariable(name: "topic", scope: !392, file: !393, line: 38, type: !124)
!406 = !DILocation(line: 38, column: 17, scope: !392)
!407 = !DILocation(line: 41, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !392, file: !393, line: 41, column: 9)
!409 = !DILocation(line: 41, column: 14, scope: !408)
!410 = !DILocation(line: 41, column: 9, scope: !392)
!411 = !DILocation(line: 42, column: 16, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !393, line: 41, column: 19)
!413 = !DILocation(line: 42, column: 14, scope: !412)
!414 = !DILocation(line: 43, column: 5, scope: !412)
!415 = !DILocation(line: 44, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !408, file: !393, line: 43, column: 12)
!417 = !DILocation(line: 48, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !392, file: !393, line: 48, column: 9)
!419 = !DILocation(line: 48, column: 14, scope: !418)
!420 = !DILocation(line: 48, column: 9, scope: !392)
!421 = !DILocation(line: 49, column: 16, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !393, line: 48, column: 19)
!423 = !DILocation(line: 49, column: 14, scope: !422)
!424 = !DILocation(line: 50, column: 5, scope: !422)
!425 = !DILocation(line: 51, column: 14, scope: !426)
!426 = distinct !DILexicalBlock(scope: !418, file: !393, line: 50, column: 12)
!427 = !DILocation(line: 55, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !392, file: !393, line: 55, column: 9)
!429 = !DILocation(line: 55, column: 14, scope: !428)
!430 = !DILocation(line: 55, column: 9, scope: !392)
!431 = !DILocation(line: 56, column: 17, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !393, line: 55, column: 19)
!433 = !DILocation(line: 56, column: 15, scope: !432)
!434 = !DILocation(line: 57, column: 5, scope: !432)
!435 = !DILocation(line: 58, column: 15, scope: !436)
!436 = distinct !DILexicalBlock(scope: !428, file: !393, line: 57, column: 12)
!437 = !DILocalVariable(name: "sockfd", scope: !392, file: !393, line: 62, type: !7)
!438 = !DILocation(line: 62, column: 9, scope: !392)
!439 = !DILocation(line: 62, column: 33, scope: !392)
!440 = !DILocation(line: 62, column: 39, scope: !392)
!441 = !DILocation(line: 62, column: 18, scope: !392)
!442 = !DILocation(line: 64, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !392, file: !393, line: 64, column: 9)
!444 = !DILocation(line: 64, column: 16, scope: !443)
!445 = !DILocation(line: 64, column: 9, scope: !392)
!446 = !DILocation(line: 65, column: 9, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !393, line: 64, column: 23)
!448 = !DILocation(line: 66, column: 36, scope: !447)
!449 = !DILocation(line: 66, column: 9, scope: !447)
!450 = !DILocation(line: 67, column: 5, scope: !447)
!451 = !DILocalVariable(name: "client", scope: !392, file: !393, line: 70, type: !166)
!452 = !DILocation(line: 70, column: 24, scope: !392)
!453 = !DILocalVariable(name: "sendbuf", scope: !392, file: !393, line: 71, type: !454)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 16384, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 2048)
!457 = !DILocation(line: 71, column: 13, scope: !392)
!458 = !DILocalVariable(name: "recvbuf", scope: !392, file: !393, line: 72, type: !459)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 8192, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 1024)
!462 = !DILocation(line: 72, column: 13, scope: !392)
!463 = !DILocation(line: 73, column: 24, scope: !392)
!464 = !DILocation(line: 73, column: 32, scope: !392)
!465 = !DILocation(line: 73, column: 58, scope: !392)
!466 = !DILocation(line: 73, column: 5, scope: !392)
!467 = !DILocalVariable(name: "client_id", scope: !392, file: !393, line: 75, type: !124)
!468 = !DILocation(line: 75, column: 17, scope: !392)
!469 = !DILocalVariable(name: "connect_flags", scope: !392, file: !393, line: 77, type: !101)
!470 = !DILocation(line: 77, column: 13, scope: !392)
!471 = !DILocation(line: 79, column: 27, scope: !392)
!472 = !DILocation(line: 79, column: 65, scope: !392)
!473 = !DILocation(line: 79, column: 5, scope: !392)
!474 = !DILocation(line: 82, column: 16, scope: !475)
!475 = distinct !DILexicalBlock(scope: !392, file: !393, line: 82, column: 9)
!476 = !DILocation(line: 82, column: 22, scope: !475)
!477 = !DILocation(line: 82, column: 9, scope: !392)
!478 = !DILocation(line: 83, column: 17, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !393, line: 82, column: 34)
!480 = !DILocation(line: 83, column: 62, scope: !479)
!481 = !DILocation(line: 83, column: 40, scope: !479)
!482 = !DILocation(line: 83, column: 9, scope: !479)
!483 = !DILocation(line: 84, column: 36, scope: !479)
!484 = !DILocation(line: 84, column: 9, scope: !479)
!485 = !DILocation(line: 85, column: 5, scope: !479)
!486 = !DILocalVariable(name: "client_daemon", scope: !392, file: !393, line: 88, type: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !216, line: 27, baseType: !109)
!488 = !DILocation(line: 88, column: 15, scope: !392)
!489 = !DILocation(line: 89, column: 63, scope: !490)
!490 = distinct !DILexicalBlock(scope: !392, file: !393, line: 89, column: 8)
!491 = !DILocation(line: 89, column: 8, scope: !490)
!492 = !DILocation(line: 89, column: 8, scope: !392)
!493 = !DILocation(line: 90, column: 17, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !393, line: 89, column: 73)
!495 = !DILocation(line: 90, column: 9, scope: !494)
!496 = !DILocation(line: 91, column: 36, scope: !494)
!497 = !DILocation(line: 91, column: 9, scope: !494)
!498 = !DILocation(line: 93, column: 5, scope: !494)
!499 = !DILocation(line: 96, column: 29, scope: !392)
!500 = !DILocation(line: 96, column: 5, scope: !392)
!501 = !DILocation(line: 99, column: 49, scope: !392)
!502 = !DILocation(line: 99, column: 58, scope: !392)
!503 = !DILocation(line: 99, column: 5, scope: !392)
!504 = !DILocation(line: 100, column: 5, scope: !392)
!505 = !DILocation(line: 103, column: 5, scope: !392)
!506 = !DILocation(line: 103, column: 17, scope: !392)
!507 = !DILocation(line: 103, column: 11, scope: !392)
!508 = !DILocation(line: 103, column: 24, scope: !392)
!509 = distinct !{!509, !505, !510, !377}
!510 = !DILocation(line: 103, column: 31, scope: !392)
!511 = !DILocation(line: 106, column: 44, scope: !392)
!512 = !DILocation(line: 106, column: 53, scope: !392)
!513 = !DILocation(line: 106, column: 5, scope: !392)
!514 = !DILocation(line: 107, column: 5, scope: !392)
!515 = !DILocation(line: 110, column: 32, scope: !392)
!516 = !DILocation(line: 110, column: 5, scope: !392)
!517 = !DILocation(line: 111, column: 1, scope: !392)
!518 = distinct !DISubprogram(name: "exit_example", scope: !393, file: !393, line: 113, type: !519, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !148, retainedNodes: !273)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !7, !7, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!522 = !DILocalVariable(name: "status", arg: 1, scope: !518, file: !393, line: 113, type: !7)
!523 = !DILocation(line: 113, column: 23, scope: !518)
!524 = !DILocalVariable(name: "sockfd", arg: 2, scope: !518, file: !393, line: 113, type: !7)
!525 = !DILocation(line: 113, column: 35, scope: !518)
!526 = !DILocalVariable(name: "client_daemon", arg: 3, scope: !518, file: !393, line: 113, type: !521)
!527 = !DILocation(line: 113, column: 54, scope: !518)
!528 = !DILocation(line: 115, column: 9, scope: !529)
!529 = distinct !DILexicalBlock(scope: !518, file: !393, line: 115, column: 9)
!530 = !DILocation(line: 115, column: 16, scope: !529)
!531 = !DILocation(line: 115, column: 9, scope: !518)
!532 = !DILocation(line: 115, column: 29, scope: !529)
!533 = !DILocation(line: 115, column: 23, scope: !529)
!534 = !DILocation(line: 116, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !518, file: !393, line: 116, column: 9)
!536 = !DILocation(line: 116, column: 23, scope: !535)
!537 = !DILocation(line: 116, column: 9, scope: !518)
!538 = !DILocation(line: 116, column: 48, scope: !535)
!539 = !DILocation(line: 116, column: 47, scope: !535)
!540 = !DILocation(line: 116, column: 32, scope: !535)
!541 = !DILocation(line: 117, column: 10, scope: !518)
!542 = !DILocation(line: 117, column: 5, scope: !518)
!543 = distinct !DISubprogram(name: "publish_callback", scope: !393, file: !393, line: 122, type: !180, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !148, retainedNodes: !273)
!544 = !DILocalVariable(name: "unused", arg: 1, scope: !543, file: !393, line: 122, type: !182)
!545 = !DILocation(line: 122, column: 30, scope: !543)
!546 = !DILocalVariable(name: "published", arg: 2, scope: !543, file: !393, line: 122, type: !183)
!547 = !DILocation(line: 122, column: 68, scope: !543)
!548 = !DILocalVariable(name: "topic_name", scope: !543, file: !393, line: 125, type: !164)
!549 = !DILocation(line: 125, column: 11, scope: !543)
!550 = !DILocation(line: 125, column: 39, scope: !543)
!551 = !DILocation(line: 125, column: 50, scope: !543)
!552 = !DILocation(line: 125, column: 66, scope: !543)
!553 = !DILocation(line: 125, column: 32, scope: !543)
!554 = !DILocation(line: 126, column: 12, scope: !543)
!555 = !DILocation(line: 126, column: 24, scope: !543)
!556 = !DILocation(line: 126, column: 35, scope: !543)
!557 = !DILocation(line: 126, column: 47, scope: !543)
!558 = !DILocation(line: 126, column: 58, scope: !543)
!559 = !DILocation(line: 126, column: 5, scope: !543)
!560 = !DILocation(line: 127, column: 5, scope: !543)
!561 = !DILocation(line: 127, column: 16, scope: !543)
!562 = !DILocation(line: 127, column: 27, scope: !543)
!563 = !DILocation(line: 127, column: 44, scope: !543)
!564 = !DILocation(line: 129, column: 44, scope: !543)
!565 = !DILocation(line: 129, column: 70, scope: !543)
!566 = !DILocation(line: 129, column: 81, scope: !543)
!567 = !DILocation(line: 129, column: 5, scope: !543)
!568 = !DILocation(line: 131, column: 10, scope: !543)
!569 = !DILocation(line: 131, column: 5, scope: !543)
!570 = !DILocation(line: 132, column: 1, scope: !543)
!571 = distinct !DISubprogram(name: "client_refresher", scope: !393, file: !393, line: 134, type: !572, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !148, retainedNodes: !273)
!572 = !DISubroutineType(types: !573)
!573 = !{!95, !95}
!574 = !DILocalVariable(name: "client", arg: 1, scope: !571, file: !393, line: 134, type: !95)
!575 = !DILocation(line: 134, column: 30, scope: !571)
!576 = !DILocation(line: 136, column: 5, scope: !571)
!577 = !DILocation(line: 138, column: 41, scope: !578)
!578 = distinct !DILexicalBlock(scope: !571, file: !393, line: 137, column: 5)
!579 = !DILocation(line: 138, column: 19, scope: !578)
!580 = !DILocation(line: 138, column: 9, scope: !578)
!581 = !DILocation(line: 139, column: 9, scope: !578)
!582 = distinct !{!582, !576, !583}
!583 = !DILocation(line: 140, column: 5, scope: !571)
!584 = distinct !DISubprogram(name: "mqtt_sync", scope: !135, file: !135, line: 35, type: !585, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!585 = !DISubroutineType(types: !586)
!586 = !{!5, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_client", file: !6, line: 1093, size: 1664, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !615, !616, !618, !622, !623, !630, !654}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "socketfd", scope: !588, file: !6, line: 1095, baseType: !123, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pid_lfsr", scope: !588, file: !6, line: 1098, baseType: !120, size: 16, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !588, file: !6, line: 1101, baseType: !120, size: 16, offset: 48)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_keep_alives", scope: !588, file: !6, line: 1107, baseType: !7, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "send_offset", scope: !588, file: !6, line: 1114, baseType: !107, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "time_of_last_send", scope: !588, file: !6, line: 1123, baseType: !112, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !588, file: !6, line: 1133, baseType: !5, size: 32, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "response_timeout", scope: !588, file: !6, line: 1143, baseType: !7, size: 32, offset: 288)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_timeouts", scope: !588, file: !6, line: 1146, baseType: !7, size: 32, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "typical_response_time", scope: !588, file: !6, line: 1154, baseType: !128, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "publish_response_callback", scope: !588, file: !6, line: 1167, baseType: !601, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !182, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_publish", file: !6, line: 341, size: 320, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dup_flag", scope: !605, file: !6, line: 346, baseType: !101, size: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "qos_level", scope: !605, file: !6, line: 355, baseType: !101, size: 8, offset: 8)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "retain_flag", scope: !605, file: !6, line: 358, baseType: !101, size: 8, offset: 16)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "topic_name_size", scope: !605, file: !6, line: 361, baseType: !120, size: 16, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "topic_name", scope: !605, file: !6, line: 368, baseType: !191, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !605, file: !6, line: 371, baseType: !120, size: 16, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "application_message", scope: !605, file: !6, line: 374, baseType: !191, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "application_message_size", scope: !605, file: !6, line: 377, baseType: !107, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "publish_response_callback_state", scope: !588, file: !6, line: 1175, baseType: !95, size: 64, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "inspector_callback", scope: !588, file: !6, line: 1192, baseType: !617, size: 64, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_callback", scope: !588, file: !6, line: 1201, baseType: !619, size: 64, offset: 640)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !587, !182}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_state", scope: !588, file: !6, line: 1207, baseType: !95, size: 64, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer", scope: !588, file: !6, line: 1224, baseType: !624, size: 256, offset: 768)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !6, line: 1212, size: 256, elements: !625)
!625 = !{!626, !627, !628, !629}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !624, file: !6, line: 1214, baseType: !100, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mem_size", scope: !624, file: !6, line: 1217, baseType: !107, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !624, file: !6, line: 1220, baseType: !100, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "curr_sz", scope: !624, file: !6, line: 1223, baseType: !107, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !588, file: !6, line: 1232, baseType: !631, size: 320, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "mqtt_pal_mutex_t", file: !113, line: 86, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !216, line: 72, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !216, line: 67, size: 320, elements: !634)
!634 = !{!635, !652, !653}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !633, file: !216, line: 69, baseType: !636, size: 320)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !221, line: 22, size: 320, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !636, file: !221, line: 24, baseType: !7, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !636, file: !221, line: 25, baseType: !40, size: 32, offset: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !636, file: !221, line: 26, baseType: !7, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !636, file: !221, line: 28, baseType: !40, size: 32, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !636, file: !221, line: 32, baseType: !7, size: 32, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !636, file: !221, line: 34, baseType: !229, size: 16, offset: 160)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !636, file: !221, line: 35, baseType: !229, size: 16, offset: 176)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !636, file: !221, line: 36, baseType: !646, size: 128, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !233, line: 53, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !233, line: 49, size: 128, elements: !648)
!648 = !{!649, !651}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !647, file: !233, line: 51, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !647, file: !233, line: 52, baseType: !650, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !633, file: !216, line: 70, baseType: !240, size: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !633, file: !216, line: 71, baseType: !117, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "mq", scope: !588, file: !6, line: 1235, baseType: !655, size: 320, offset: 1344)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_message_queue", file: !6, line: 969, size: 320, elements: !656)
!656 = !{!657, !658, !659, !660, !661}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !655, file: !6, line: 975, baseType: !95, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !655, file: !6, line: 978, baseType: !95, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !655, file: !6, line: 986, baseType: !100, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "curr_sz", scope: !655, file: !6, line: 996, baseType: !107, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "queue_tail", scope: !655, file: !6, line: 1003, baseType: !96, size: 64, offset: 256)
!662 = !DILocalVariable(name: "client", arg: 1, scope: !584, file: !135, line: 35, type: !587)
!663 = !DILocation(line: 35, column: 47, scope: !584)
!664 = !DILocalVariable(name: "err", scope: !584, file: !135, line: 37, type: !5)
!665 = !DILocation(line: 37, column: 21, scope: !584)
!666 = !DILocalVariable(name: "reconnecting", scope: !584, file: !135, line: 38, type: !7)
!667 = !DILocation(line: 38, column: 9, scope: !584)
!668 = !DILocation(line: 39, column: 5, scope: !584)
!669 = !DILocation(line: 40, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !584, file: !135, line: 40, column: 9)
!671 = !DILocation(line: 40, column: 17, scope: !670)
!672 = !DILocation(line: 40, column: 23, scope: !670)
!673 = !DILocation(line: 40, column: 50, scope: !670)
!674 = !DILocation(line: 40, column: 53, scope: !670)
!675 = !DILocation(line: 40, column: 61, scope: !670)
!676 = !DILocation(line: 40, column: 67, scope: !670)
!677 = !DILocation(line: 40, column: 78, scope: !670)
!678 = !DILocation(line: 40, column: 81, scope: !670)
!679 = !DILocation(line: 40, column: 89, scope: !670)
!680 = !DILocation(line: 40, column: 108, scope: !670)
!681 = !DILocation(line: 40, column: 9, scope: !584)
!682 = !DILocation(line: 41, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !670, file: !135, line: 40, column: 117)
!684 = !DILocation(line: 41, column: 17, scope: !683)
!685 = !DILocation(line: 41, column: 36, scope: !683)
!686 = !DILocation(line: 41, column: 45, scope: !683)
!687 = !DILocation(line: 41, column: 53, scope: !683)
!688 = !DILocation(line: 43, column: 5, scope: !683)
!689 = !DILocation(line: 45, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !135, line: 45, column: 13)
!691 = distinct !DILexicalBlock(scope: !670, file: !135, line: 43, column: 12)
!692 = !DILocation(line: 45, column: 21, scope: !690)
!693 = !DILocation(line: 45, column: 27, scope: !690)
!694 = !DILocation(line: 45, column: 13, scope: !691)
!695 = !DILocation(line: 46, column: 26, scope: !696)
!696 = distinct !DILexicalBlock(scope: !690, file: !135, line: 45, column: 55)
!697 = !DILocation(line: 47, column: 13, scope: !696)
!698 = !DILocation(line: 47, column: 21, scope: !696)
!699 = !DILocation(line: 47, column: 27, scope: !696)
!700 = !DILocation(line: 48, column: 9, scope: !696)
!701 = !DILocation(line: 49, column: 9, scope: !691)
!702 = !DILocation(line: 54, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !584, file: !135, line: 54, column: 9)
!704 = !DILocation(line: 54, column: 17, scope: !703)
!705 = !DILocation(line: 54, column: 36, scope: !703)
!706 = !DILocation(line: 54, column: 9, scope: !584)
!707 = !DILocation(line: 55, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !703, file: !135, line: 54, column: 45)
!709 = !DILocation(line: 56, column: 15, scope: !708)
!710 = !DILocation(line: 56, column: 23, scope: !708)
!711 = !DILocation(line: 56, column: 42, scope: !708)
!712 = !DILocation(line: 56, column: 13, scope: !708)
!713 = !DILocation(line: 57, column: 9, scope: !708)
!714 = !DILocation(line: 58, column: 13, scope: !715)
!715 = distinct !DILexicalBlock(scope: !708, file: !135, line: 58, column: 13)
!716 = !DILocation(line: 58, column: 17, scope: !715)
!717 = !DILocation(line: 58, column: 13, scope: !708)
!718 = !DILocation(line: 58, column: 36, scope: !715)
!719 = !DILocation(line: 58, column: 29, scope: !715)
!720 = !DILocation(line: 59, column: 5, scope: !708)
!721 = !DILocation(line: 62, column: 23, scope: !584)
!722 = !DILocation(line: 62, column: 11, scope: !584)
!723 = !DILocation(line: 62, column: 9, scope: !584)
!724 = !DILocation(line: 63, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !584, file: !135, line: 63, column: 9)
!726 = !DILocation(line: 63, column: 13, scope: !725)
!727 = !DILocation(line: 63, column: 9, scope: !584)
!728 = !DILocation(line: 63, column: 32, scope: !725)
!729 = !DILocation(line: 63, column: 25, scope: !725)
!730 = !DILocation(line: 66, column: 23, scope: !584)
!731 = !DILocation(line: 66, column: 11, scope: !584)
!732 = !DILocation(line: 66, column: 9, scope: !584)
!733 = !DILocation(line: 69, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !584, file: !135, line: 69, column: 9)
!735 = !DILocation(line: 69, column: 22, scope: !734)
!736 = !DILocation(line: 69, column: 25, scope: !734)
!737 = !DILocation(line: 69, column: 33, scope: !734)
!738 = !DILocation(line: 69, column: 52, scope: !734)
!739 = !DILocation(line: 69, column: 9, scope: !584)
!740 = !DILocation(line: 70, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !734, file: !135, line: 69, column: 61)
!742 = !DILocation(line: 71, column: 9, scope: !741)
!743 = !DILocation(line: 71, column: 17, scope: !741)
!744 = !DILocation(line: 71, column: 36, scope: !741)
!745 = !DILocation(line: 71, column: 45, scope: !741)
!746 = !DILocation(line: 71, column: 53, scope: !741)
!747 = !DILocation(line: 72, column: 5, scope: !741)
!748 = !DILocation(line: 74, column: 12, scope: !584)
!749 = !DILocation(line: 74, column: 5, scope: !584)
!750 = !DILocation(line: 75, column: 1, scope: !584)
!751 = distinct !DISubprogram(name: "__mqtt_recv", scope: !135, file: !135, line: 640, type: !752, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!752 = !DISubroutineType(types: !753)
!753 = !{!754, !587}
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !755, line: 108, baseType: !756)
!755 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !104, line: 194, baseType: !117)
!757 = !DILocalVariable(name: "client", arg: 1, scope: !751, file: !135, line: 640, type: !587)
!758 = !DILocation(line: 640, column: 41, scope: !751)
!759 = !DILocalVariable(name: "response", scope: !751, file: !135, line: 642, type: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response", file: !6, line: 505, size: 448, elements: !761)
!761 = !{!762, !768}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_header", scope: !760, file: !6, line: 507, baseType: !763, size: 96)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_fixed_header", file: !6, line: 156, size: 96, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "control_type", scope: !763, file: !6, line: 158, baseType: !45, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "control_flags", scope: !763, file: !6, line: 161, baseType: !130, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_length", scope: !763, file: !6, line: 164, baseType: !130, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "decoded", scope: !760, file: !6, line: 527, baseType: !769, size: 320, offset: 128)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !6, line: 517, size: 320, elements: !770)
!770 = !{!771, !776, !777, !781, !785, !789, !793, !800, !804}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "connack", scope: !769, file: !6, line: 518, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_connack", file: !6, line: 315, size: 64, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "session_present_flag", scope: !772, file: !6, line: 320, baseType: !101, size: 8)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "return_code", scope: !772, file: !6, line: 327, baseType: !69, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "publish", scope: !769, file: !6, line: 519, baseType: !605, size: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "puback", scope: !769, file: !6, line: 520, baseType: !778, size: 16)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_puback", file: !6, line: 389, size: 16, elements: !779)
!779 = !{!780}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !778, file: !6, line: 391, baseType: !120, size: 16)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "pubrec", scope: !769, file: !6, line: 521, baseType: !782, size: 16)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_pubrec", file: !6, line: 403, size: 16, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !782, file: !6, line: 405, baseType: !120, size: 16)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pubrel", scope: !769, file: !6, line: 522, baseType: !786, size: 16)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_pubrel", file: !6, line: 417, size: 16, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !786, file: !6, line: 419, baseType: !120, size: 16)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pubcomp", scope: !769, file: !6, line: 523, baseType: !790, size: 16)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_pubcomp", file: !6, line: 431, size: 16, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !790, file: !6, line: 433, baseType: !120, size: 16)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "suback", scope: !769, file: !6, line: 524, baseType: !794, size: 192)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_suback", file: !6, line: 459, size: 192, elements: !795)
!795 = !{!796, !797, !799}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !794, file: !6, line: 461, baseType: !120, size: 16)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "return_codes", scope: !794, file: !6, line: 468, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "num_return_codes", scope: !794, file: !6, line: 471, baseType: !107, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "unsuback", scope: !769, file: !6, line: 525, baseType: !801, size: 16)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_unsuback", file: !6, line: 482, size: 16, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !801, file: !6, line: 484, baseType: !120, size: 16)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pingresp", scope: !769, file: !6, line: 526, baseType: !805, size: 32)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_pingresp", file: !6, line: 497, size: 32, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !805, file: !6, line: 498, baseType: !7, size: 32)
!808 = !DILocation(line: 642, column: 26, scope: !751)
!809 = !DILocalVariable(name: "mqtt_recv_ret", scope: !751, file: !135, line: 643, type: !754)
!810 = !DILocation(line: 643, column: 13, scope: !751)
!811 = !DILocation(line: 644, column: 5, scope: !751)
!812 = !DILocation(line: 647, column: 5, scope: !751)
!813 = !DILocation(line: 647, column: 11, scope: !751)
!814 = !DILocation(line: 647, column: 25, scope: !751)
!815 = !DILocalVariable(name: "rv", scope: !816, file: !135, line: 649, type: !754)
!816 = distinct !DILexicalBlock(scope: !751, file: !135, line: 647, column: 37)
!817 = !DILocation(line: 649, column: 17, scope: !816)
!818 = !DILocalVariable(name: "consumed", scope: !816, file: !135, line: 649, type: !754)
!819 = !DILocation(line: 649, column: 21, scope: !816)
!820 = !DILocalVariable(name: "msg", scope: !816, file: !135, line: 650, type: !96)
!821 = !DILocation(line: 650, column: 37, scope: !816)
!822 = !DILocation(line: 652, column: 31, scope: !816)
!823 = !DILocation(line: 652, column: 39, scope: !816)
!824 = !DILocation(line: 652, column: 49, scope: !816)
!825 = !DILocation(line: 652, column: 57, scope: !816)
!826 = !DILocation(line: 652, column: 69, scope: !816)
!827 = !DILocation(line: 652, column: 75, scope: !816)
!828 = !DILocation(line: 652, column: 83, scope: !816)
!829 = !DILocation(line: 652, column: 95, scope: !816)
!830 = !DILocation(line: 652, column: 14, scope: !816)
!831 = !DILocation(line: 652, column: 12, scope: !816)
!832 = !DILocation(line: 653, column: 13, scope: !833)
!833 = distinct !DILexicalBlock(scope: !816, file: !135, line: 653, column: 13)
!834 = !DILocation(line: 653, column: 16, scope: !833)
!835 = !DILocation(line: 653, column: 13, scope: !816)
!836 = !DILocation(line: 655, column: 29, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !135, line: 653, column: 21)
!838 = !DILocation(line: 655, column: 13, scope: !837)
!839 = !DILocation(line: 655, column: 21, scope: !837)
!840 = !DILocation(line: 655, column: 27, scope: !837)
!841 = !DILocation(line: 656, column: 13, scope: !837)
!842 = !DILocation(line: 657, column: 20, scope: !837)
!843 = !DILocation(line: 657, column: 13, scope: !837)
!844 = !DILocation(line: 659, column: 41, scope: !845)
!845 = distinct !DILexicalBlock(scope: !833, file: !135, line: 658, column: 16)
!846 = !DILocation(line: 659, column: 13, scope: !845)
!847 = !DILocation(line: 659, column: 21, scope: !845)
!848 = !DILocation(line: 659, column: 33, scope: !845)
!849 = !DILocation(line: 659, column: 38, scope: !845)
!850 = !DILocation(line: 660, column: 44, scope: !845)
!851 = !DILocation(line: 660, column: 13, scope: !845)
!852 = !DILocation(line: 660, column: 21, scope: !845)
!853 = !DILocation(line: 660, column: 33, scope: !845)
!854 = !DILocation(line: 660, column: 41, scope: !845)
!855 = !DILocation(line: 664, column: 52, scope: !816)
!856 = !DILocation(line: 664, column: 60, scope: !816)
!857 = !DILocation(line: 664, column: 72, scope: !816)
!858 = !DILocation(line: 664, column: 83, scope: !816)
!859 = !DILocation(line: 664, column: 91, scope: !816)
!860 = !DILocation(line: 664, column: 103, scope: !816)
!861 = !DILocation(line: 664, column: 110, scope: !816)
!862 = !DILocation(line: 664, column: 118, scope: !816)
!863 = !DILocation(line: 664, column: 130, scope: !816)
!864 = !DILocation(line: 664, column: 108, scope: !816)
!865 = !DILocation(line: 664, column: 20, scope: !816)
!866 = !DILocation(line: 664, column: 18, scope: !816)
!867 = !DILocation(line: 666, column: 13, scope: !868)
!868 = distinct !DILexicalBlock(scope: !816, file: !135, line: 666, column: 13)
!869 = !DILocation(line: 666, column: 22, scope: !868)
!870 = !DILocation(line: 666, column: 13, scope: !816)
!871 = !DILocation(line: 667, column: 29, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !135, line: 666, column: 27)
!873 = !DILocation(line: 667, column: 13, scope: !872)
!874 = !DILocation(line: 667, column: 21, scope: !872)
!875 = !DILocation(line: 667, column: 27, scope: !872)
!876 = !DILocation(line: 668, column: 13, scope: !872)
!877 = !DILocation(line: 669, column: 20, scope: !872)
!878 = !DILocation(line: 669, column: 13, scope: !872)
!879 = !DILocation(line: 670, column: 20, scope: !880)
!880 = distinct !DILexicalBlock(scope: !868, file: !135, line: 670, column: 20)
!881 = !DILocation(line: 670, column: 29, scope: !880)
!882 = !DILocation(line: 670, column: 20, scope: !868)
!883 = !DILocation(line: 672, column: 17, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !135, line: 672, column: 17)
!885 = distinct !DILexicalBlock(scope: !880, file: !135, line: 670, column: 35)
!886 = !DILocation(line: 672, column: 25, scope: !884)
!887 = !DILocation(line: 672, column: 37, scope: !884)
!888 = !DILocation(line: 672, column: 45, scope: !884)
!889 = !DILocation(line: 672, column: 17, scope: !885)
!890 = !DILocation(line: 673, column: 17, scope: !891)
!891 = distinct !DILexicalBlock(scope: !884, file: !135, line: 672, column: 51)
!892 = !DILocation(line: 673, column: 25, scope: !891)
!893 = !DILocation(line: 673, column: 31, scope: !891)
!894 = !DILocation(line: 674, column: 17, scope: !891)
!895 = !DILocation(line: 675, column: 17, scope: !891)
!896 = !DILocation(line: 679, column: 13, scope: !885)
!897 = !DILocation(line: 680, column: 13, scope: !885)
!898 = !DILocation(line: 713, column: 26, scope: !816)
!899 = !DILocation(line: 713, column: 39, scope: !816)
!900 = !DILocation(line: 713, column: 9, scope: !816)
!901 = !DILocation(line: 716, column: 37, scope: !902)
!902 = distinct !DILexicalBlock(scope: !816, file: !135, line: 713, column: 53)
!903 = !DILocation(line: 716, column: 45, scope: !902)
!904 = !DILocation(line: 716, column: 23, scope: !902)
!905 = !DILocation(line: 716, column: 21, scope: !902)
!906 = !DILocation(line: 717, column: 21, scope: !907)
!907 = distinct !DILexicalBlock(scope: !902, file: !135, line: 717, column: 21)
!908 = !DILocation(line: 717, column: 25, scope: !907)
!909 = !DILocation(line: 717, column: 21, scope: !902)
!910 = !DILocation(line: 718, column: 21, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !135, line: 717, column: 34)
!912 = !DILocation(line: 718, column: 29, scope: !911)
!913 = !DILocation(line: 718, column: 35, scope: !911)
!914 = !DILocation(line: 719, column: 35, scope: !911)
!915 = !DILocation(line: 720, column: 21, scope: !911)
!916 = !DILocation(line: 722, column: 17, scope: !902)
!917 = !DILocation(line: 722, column: 22, scope: !902)
!918 = !DILocation(line: 722, column: 28, scope: !902)
!919 = !DILocation(line: 724, column: 59, scope: !902)
!920 = !DILocation(line: 724, column: 77, scope: !902)
!921 = !DILocation(line: 724, column: 82, scope: !902)
!922 = !DILocation(line: 724, column: 75, scope: !902)
!923 = !DILocation(line: 724, column: 49, scope: !902)
!924 = !DILocation(line: 724, column: 17, scope: !902)
!925 = !DILocation(line: 724, column: 25, scope: !902)
!926 = !DILocation(line: 724, column: 47, scope: !902)
!927 = !DILocation(line: 726, column: 30, scope: !928)
!928 = distinct !DILexicalBlock(scope: !902, file: !135, line: 726, column: 21)
!929 = !DILocation(line: 726, column: 38, scope: !928)
!930 = !DILocation(line: 726, column: 46, scope: !928)
!931 = !DILocation(line: 726, column: 58, scope: !928)
!932 = !DILocation(line: 726, column: 21, scope: !902)
!933 = !DILocation(line: 727, column: 34, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !135, line: 727, column: 25)
!935 = distinct !DILexicalBlock(scope: !928, file: !135, line: 726, column: 84)
!936 = !DILocation(line: 727, column: 42, scope: !934)
!937 = !DILocation(line: 727, column: 50, scope: !934)
!938 = !DILocation(line: 727, column: 62, scope: !934)
!939 = !DILocation(line: 727, column: 25, scope: !935)
!940 = !DILocation(line: 728, column: 25, scope: !941)
!941 = distinct !DILexicalBlock(scope: !934, file: !135, line: 727, column: 107)
!942 = !DILocation(line: 728, column: 33, scope: !941)
!943 = !DILocation(line: 728, column: 39, scope: !941)
!944 = !DILocation(line: 729, column: 39, scope: !941)
!945 = !DILocation(line: 730, column: 21, scope: !941)
!946 = !DILocation(line: 731, column: 25, scope: !947)
!947 = distinct !DILexicalBlock(scope: !934, file: !135, line: 730, column: 28)
!948 = !DILocation(line: 731, column: 33, scope: !947)
!949 = !DILocation(line: 731, column: 39, scope: !947)
!950 = !DILocation(line: 732, column: 39, scope: !947)
!951 = !DILocation(line: 734, column: 21, scope: !935)
!952 = !DILocation(line: 736, column: 17, scope: !902)
!953 = !DILocation(line: 739, column: 30, scope: !954)
!954 = distinct !DILexicalBlock(scope: !902, file: !135, line: 739, column: 21)
!955 = !DILocation(line: 739, column: 38, scope: !954)
!956 = !DILocation(line: 739, column: 46, scope: !954)
!957 = !DILocation(line: 739, column: 21, scope: !954)
!958 = !DILocation(line: 739, column: 56, scope: !954)
!959 = !DILocation(line: 739, column: 21, scope: !902)
!960 = !DILocation(line: 740, column: 40, scope: !961)
!961 = distinct !DILexicalBlock(scope: !954, file: !135, line: 739, column: 62)
!962 = !DILocation(line: 740, column: 57, scope: !961)
!963 = !DILocation(line: 740, column: 65, scope: !961)
!964 = !DILocation(line: 740, column: 73, scope: !961)
!965 = !DILocation(line: 740, column: 26, scope: !961)
!966 = !DILocation(line: 740, column: 24, scope: !961)
!967 = !DILocation(line: 741, column: 25, scope: !968)
!968 = distinct !DILexicalBlock(scope: !961, file: !135, line: 741, column: 25)
!969 = !DILocation(line: 741, column: 28, scope: !968)
!970 = !DILocation(line: 741, column: 25, scope: !961)
!971 = !DILocation(line: 742, column: 41, scope: !972)
!972 = distinct !DILexicalBlock(scope: !968, file: !135, line: 741, column: 40)
!973 = !DILocation(line: 742, column: 25, scope: !972)
!974 = !DILocation(line: 742, column: 33, scope: !972)
!975 = !DILocation(line: 742, column: 39, scope: !972)
!976 = !DILocation(line: 743, column: 41, scope: !972)
!977 = !DILocation(line: 743, column: 39, scope: !972)
!978 = !DILocation(line: 744, column: 25, scope: !972)
!979 = !DILocation(line: 746, column: 17, scope: !961)
!980 = !DILocation(line: 746, column: 37, scope: !981)
!981 = distinct !DILexicalBlock(scope: !954, file: !135, line: 746, column: 28)
!982 = !DILocation(line: 746, column: 45, scope: !981)
!983 = !DILocation(line: 746, column: 53, scope: !981)
!984 = !DILocation(line: 746, column: 28, scope: !981)
!985 = !DILocation(line: 746, column: 63, scope: !981)
!986 = !DILocation(line: 746, column: 28, scope: !954)
!987 = !DILocation(line: 748, column: 39, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !135, line: 748, column: 25)
!989 = distinct !DILexicalBlock(scope: !981, file: !135, line: 746, column: 69)
!990 = !DILocation(line: 748, column: 47, scope: !988)
!991 = !DILocation(line: 748, column: 82, scope: !988)
!992 = !DILocation(line: 748, column: 90, scope: !988)
!993 = !DILocation(line: 748, column: 98, scope: !988)
!994 = !DILocation(line: 748, column: 25, scope: !988)
!995 = !DILocation(line: 748, column: 109, scope: !988)
!996 = !DILocation(line: 748, column: 25, scope: !989)
!997 = !DILocation(line: 749, column: 25, scope: !998)
!998 = distinct !DILexicalBlock(scope: !988, file: !135, line: 748, column: 118)
!999 = !DILocation(line: 752, column: 40, scope: !989)
!1000 = !DILocation(line: 752, column: 57, scope: !989)
!1001 = !DILocation(line: 752, column: 65, scope: !989)
!1002 = !DILocation(line: 752, column: 73, scope: !989)
!1003 = !DILocation(line: 752, column: 26, scope: !989)
!1004 = !DILocation(line: 752, column: 24, scope: !989)
!1005 = !DILocation(line: 753, column: 25, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !989, file: !135, line: 753, column: 25)
!1007 = !DILocation(line: 753, column: 28, scope: !1006)
!1008 = !DILocation(line: 753, column: 25, scope: !989)
!1009 = !DILocation(line: 754, column: 41, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !135, line: 753, column: 40)
!1011 = !DILocation(line: 754, column: 25, scope: !1010)
!1012 = !DILocation(line: 754, column: 33, scope: !1010)
!1013 = !DILocation(line: 754, column: 39, scope: !1010)
!1014 = !DILocation(line: 755, column: 41, scope: !1010)
!1015 = !DILocation(line: 755, column: 39, scope: !1010)
!1016 = !DILocation(line: 756, column: 25, scope: !1010)
!1017 = !DILocation(line: 758, column: 17, scope: !989)
!1018 = !DILocation(line: 760, column: 17, scope: !902)
!1019 = !DILocation(line: 760, column: 25, scope: !902)
!1020 = !DILocation(line: 760, column: 52, scope: !902)
!1021 = !DILocation(line: 760, column: 60, scope: !902)
!1022 = !DILocation(line: 760, column: 103, scope: !902)
!1023 = !DILocation(line: 760, column: 111, scope: !902)
!1024 = !DILocation(line: 761, column: 17, scope: !902)
!1025 = !DILocation(line: 764, column: 37, scope: !902)
!1026 = !DILocation(line: 764, column: 45, scope: !902)
!1027 = !DILocation(line: 764, column: 81, scope: !902)
!1028 = !DILocation(line: 764, column: 89, scope: !902)
!1029 = !DILocation(line: 764, column: 96, scope: !902)
!1030 = !DILocation(line: 764, column: 23, scope: !902)
!1031 = !DILocation(line: 764, column: 21, scope: !902)
!1032 = !DILocation(line: 765, column: 21, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !902, file: !135, line: 765, column: 21)
!1034 = !DILocation(line: 765, column: 25, scope: !1033)
!1035 = !DILocation(line: 765, column: 21, scope: !902)
!1036 = !DILocation(line: 766, column: 21, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !135, line: 765, column: 34)
!1038 = !DILocation(line: 766, column: 29, scope: !1037)
!1039 = !DILocation(line: 766, column: 35, scope: !1037)
!1040 = !DILocation(line: 767, column: 35, scope: !1037)
!1041 = !DILocation(line: 768, column: 21, scope: !1037)
!1042 = !DILocation(line: 770, column: 17, scope: !902)
!1043 = !DILocation(line: 770, column: 22, scope: !902)
!1044 = !DILocation(line: 770, column: 28, scope: !902)
!1045 = !DILocation(line: 772, column: 58, scope: !902)
!1046 = !DILocation(line: 772, column: 66, scope: !902)
!1047 = !DILocation(line: 772, column: 55, scope: !902)
!1048 = !DILocation(line: 772, column: 109, scope: !902)
!1049 = !DILocation(line: 772, column: 127, scope: !902)
!1050 = !DILocation(line: 772, column: 132, scope: !902)
!1051 = !DILocation(line: 772, column: 125, scope: !902)
!1052 = !DILocation(line: 772, column: 99, scope: !902)
!1053 = !DILocation(line: 772, column: 97, scope: !902)
!1054 = !DILocation(line: 772, column: 89, scope: !902)
!1055 = !DILocation(line: 772, column: 17, scope: !902)
!1056 = !DILocation(line: 772, column: 25, scope: !902)
!1057 = !DILocation(line: 772, column: 47, scope: !902)
!1058 = !DILocation(line: 773, column: 17, scope: !902)
!1059 = !DILocation(line: 776, column: 35, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !902, file: !135, line: 776, column: 21)
!1061 = !DILocation(line: 776, column: 43, scope: !1060)
!1062 = !DILocation(line: 776, column: 78, scope: !1060)
!1063 = !DILocation(line: 776, column: 86, scope: !1060)
!1064 = !DILocation(line: 776, column: 93, scope: !1060)
!1065 = !DILocation(line: 776, column: 21, scope: !1060)
!1066 = !DILocation(line: 776, column: 104, scope: !1060)
!1067 = !DILocation(line: 776, column: 21, scope: !902)
!1068 = !DILocation(line: 777, column: 21, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1060, file: !135, line: 776, column: 113)
!1070 = !DILocation(line: 780, column: 37, scope: !902)
!1071 = !DILocation(line: 780, column: 45, scope: !902)
!1072 = !DILocation(line: 780, column: 81, scope: !902)
!1073 = !DILocation(line: 780, column: 89, scope: !902)
!1074 = !DILocation(line: 780, column: 96, scope: !902)
!1075 = !DILocation(line: 780, column: 23, scope: !902)
!1076 = !DILocation(line: 780, column: 21, scope: !902)
!1077 = !DILocation(line: 781, column: 21, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !902, file: !135, line: 781, column: 21)
!1079 = !DILocation(line: 781, column: 25, scope: !1078)
!1080 = !DILocation(line: 781, column: 21, scope: !902)
!1081 = !DILocation(line: 782, column: 21, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !135, line: 781, column: 34)
!1083 = !DILocation(line: 782, column: 29, scope: !1082)
!1084 = !DILocation(line: 782, column: 35, scope: !1082)
!1085 = !DILocation(line: 783, column: 35, scope: !1082)
!1086 = !DILocation(line: 784, column: 21, scope: !1082)
!1087 = !DILocation(line: 786, column: 17, scope: !902)
!1088 = !DILocation(line: 786, column: 22, scope: !902)
!1089 = !DILocation(line: 786, column: 28, scope: !902)
!1090 = !DILocation(line: 788, column: 58, scope: !902)
!1091 = !DILocation(line: 788, column: 66, scope: !902)
!1092 = !DILocation(line: 788, column: 55, scope: !902)
!1093 = !DILocation(line: 788, column: 109, scope: !902)
!1094 = !DILocation(line: 788, column: 127, scope: !902)
!1095 = !DILocation(line: 788, column: 132, scope: !902)
!1096 = !DILocation(line: 788, column: 125, scope: !902)
!1097 = !DILocation(line: 788, column: 99, scope: !902)
!1098 = !DILocation(line: 788, column: 97, scope: !902)
!1099 = !DILocation(line: 788, column: 89, scope: !902)
!1100 = !DILocation(line: 788, column: 17, scope: !902)
!1101 = !DILocation(line: 788, column: 25, scope: !902)
!1102 = !DILocation(line: 788, column: 47, scope: !902)
!1103 = !DILocation(line: 790, column: 36, scope: !902)
!1104 = !DILocation(line: 790, column: 53, scope: !902)
!1105 = !DILocation(line: 790, column: 61, scope: !902)
!1106 = !DILocation(line: 790, column: 68, scope: !902)
!1107 = !DILocation(line: 790, column: 22, scope: !902)
!1108 = !DILocation(line: 790, column: 20, scope: !902)
!1109 = !DILocation(line: 791, column: 21, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !902, file: !135, line: 791, column: 21)
!1111 = !DILocation(line: 791, column: 24, scope: !1110)
!1112 = !DILocation(line: 791, column: 21, scope: !902)
!1113 = !DILocation(line: 792, column: 37, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !135, line: 791, column: 36)
!1115 = !DILocation(line: 792, column: 21, scope: !1114)
!1116 = !DILocation(line: 792, column: 29, scope: !1114)
!1117 = !DILocation(line: 792, column: 35, scope: !1114)
!1118 = !DILocation(line: 793, column: 37, scope: !1114)
!1119 = !DILocation(line: 793, column: 35, scope: !1114)
!1120 = !DILocation(line: 794, column: 21, scope: !1114)
!1121 = !DILocation(line: 796, column: 17, scope: !902)
!1122 = !DILocation(line: 799, column: 37, scope: !902)
!1123 = !DILocation(line: 799, column: 45, scope: !902)
!1124 = !DILocation(line: 799, column: 80, scope: !902)
!1125 = !DILocation(line: 799, column: 88, scope: !902)
!1126 = !DILocation(line: 799, column: 95, scope: !902)
!1127 = !DILocation(line: 799, column: 23, scope: !902)
!1128 = !DILocation(line: 799, column: 21, scope: !902)
!1129 = !DILocation(line: 800, column: 21, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !902, file: !135, line: 800, column: 21)
!1131 = !DILocation(line: 800, column: 25, scope: !1130)
!1132 = !DILocation(line: 800, column: 21, scope: !902)
!1133 = !DILocation(line: 801, column: 21, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !135, line: 800, column: 34)
!1135 = !DILocation(line: 801, column: 29, scope: !1134)
!1136 = !DILocation(line: 801, column: 35, scope: !1134)
!1137 = !DILocation(line: 802, column: 35, scope: !1134)
!1138 = !DILocation(line: 803, column: 21, scope: !1134)
!1139 = !DILocation(line: 805, column: 17, scope: !902)
!1140 = !DILocation(line: 805, column: 22, scope: !902)
!1141 = !DILocation(line: 805, column: 28, scope: !902)
!1142 = !DILocation(line: 807, column: 58, scope: !902)
!1143 = !DILocation(line: 807, column: 66, scope: !902)
!1144 = !DILocation(line: 807, column: 55, scope: !902)
!1145 = !DILocation(line: 807, column: 109, scope: !902)
!1146 = !DILocation(line: 807, column: 127, scope: !902)
!1147 = !DILocation(line: 807, column: 132, scope: !902)
!1148 = !DILocation(line: 807, column: 125, scope: !902)
!1149 = !DILocation(line: 807, column: 99, scope: !902)
!1150 = !DILocation(line: 807, column: 97, scope: !902)
!1151 = !DILocation(line: 807, column: 89, scope: !902)
!1152 = !DILocation(line: 807, column: 17, scope: !902)
!1153 = !DILocation(line: 807, column: 25, scope: !902)
!1154 = !DILocation(line: 807, column: 47, scope: !902)
!1155 = !DILocation(line: 809, column: 37, scope: !902)
!1156 = !DILocation(line: 809, column: 54, scope: !902)
!1157 = !DILocation(line: 809, column: 62, scope: !902)
!1158 = !DILocation(line: 809, column: 69, scope: !902)
!1159 = !DILocation(line: 809, column: 22, scope: !902)
!1160 = !DILocation(line: 809, column: 20, scope: !902)
!1161 = !DILocation(line: 810, column: 21, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !902, file: !135, line: 810, column: 21)
!1163 = !DILocation(line: 810, column: 24, scope: !1162)
!1164 = !DILocation(line: 810, column: 21, scope: !902)
!1165 = !DILocation(line: 811, column: 37, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !135, line: 810, column: 36)
!1167 = !DILocation(line: 811, column: 21, scope: !1166)
!1168 = !DILocation(line: 811, column: 29, scope: !1166)
!1169 = !DILocation(line: 811, column: 35, scope: !1166)
!1170 = !DILocation(line: 812, column: 37, scope: !1166)
!1171 = !DILocation(line: 812, column: 35, scope: !1166)
!1172 = !DILocation(line: 813, column: 21, scope: !1166)
!1173 = !DILocation(line: 815, column: 17, scope: !902)
!1174 = !DILocation(line: 818, column: 37, scope: !902)
!1175 = !DILocation(line: 818, column: 45, scope: !902)
!1176 = !DILocation(line: 818, column: 80, scope: !902)
!1177 = !DILocation(line: 818, column: 88, scope: !902)
!1178 = !DILocation(line: 818, column: 96, scope: !902)
!1179 = !DILocation(line: 818, column: 23, scope: !902)
!1180 = !DILocation(line: 818, column: 21, scope: !902)
!1181 = !DILocation(line: 819, column: 21, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !902, file: !135, line: 819, column: 21)
!1183 = !DILocation(line: 819, column: 25, scope: !1182)
!1184 = !DILocation(line: 819, column: 21, scope: !902)
!1185 = !DILocation(line: 820, column: 21, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !135, line: 819, column: 34)
!1187 = !DILocation(line: 820, column: 29, scope: !1186)
!1188 = !DILocation(line: 820, column: 35, scope: !1186)
!1189 = !DILocation(line: 821, column: 35, scope: !1186)
!1190 = !DILocation(line: 822, column: 21, scope: !1186)
!1191 = !DILocation(line: 824, column: 17, scope: !902)
!1192 = !DILocation(line: 824, column: 22, scope: !902)
!1193 = !DILocation(line: 824, column: 28, scope: !902)
!1194 = !DILocation(line: 826, column: 58, scope: !902)
!1195 = !DILocation(line: 826, column: 66, scope: !902)
!1196 = !DILocation(line: 826, column: 55, scope: !902)
!1197 = !DILocation(line: 826, column: 109, scope: !902)
!1198 = !DILocation(line: 826, column: 127, scope: !902)
!1199 = !DILocation(line: 826, column: 132, scope: !902)
!1200 = !DILocation(line: 826, column: 125, scope: !902)
!1201 = !DILocation(line: 826, column: 99, scope: !902)
!1202 = !DILocation(line: 826, column: 97, scope: !902)
!1203 = !DILocation(line: 826, column: 89, scope: !902)
!1204 = !DILocation(line: 826, column: 17, scope: !902)
!1205 = !DILocation(line: 826, column: 25, scope: !902)
!1206 = !DILocation(line: 826, column: 47, scope: !902)
!1207 = !DILocation(line: 827, column: 17, scope: !902)
!1208 = !DILocation(line: 830, column: 37, scope: !902)
!1209 = !DILocation(line: 830, column: 45, scope: !902)
!1210 = !DILocation(line: 830, column: 83, scope: !902)
!1211 = !DILocation(line: 830, column: 91, scope: !902)
!1212 = !DILocation(line: 830, column: 98, scope: !902)
!1213 = !DILocation(line: 830, column: 23, scope: !902)
!1214 = !DILocation(line: 830, column: 21, scope: !902)
!1215 = !DILocation(line: 831, column: 21, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !902, file: !135, line: 831, column: 21)
!1217 = !DILocation(line: 831, column: 25, scope: !1216)
!1218 = !DILocation(line: 831, column: 21, scope: !902)
!1219 = !DILocation(line: 832, column: 21, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !135, line: 831, column: 34)
!1221 = !DILocation(line: 832, column: 29, scope: !1220)
!1222 = !DILocation(line: 832, column: 35, scope: !1220)
!1223 = !DILocation(line: 833, column: 35, scope: !1220)
!1224 = !DILocation(line: 834, column: 21, scope: !1220)
!1225 = !DILocation(line: 836, column: 17, scope: !902)
!1226 = !DILocation(line: 836, column: 22, scope: !902)
!1227 = !DILocation(line: 836, column: 28, scope: !902)
!1228 = !DILocation(line: 838, column: 58, scope: !902)
!1229 = !DILocation(line: 838, column: 66, scope: !902)
!1230 = !DILocation(line: 838, column: 55, scope: !902)
!1231 = !DILocation(line: 838, column: 109, scope: !902)
!1232 = !DILocation(line: 838, column: 127, scope: !902)
!1233 = !DILocation(line: 838, column: 132, scope: !902)
!1234 = !DILocation(line: 838, column: 125, scope: !902)
!1235 = !DILocation(line: 838, column: 99, scope: !902)
!1236 = !DILocation(line: 838, column: 97, scope: !902)
!1237 = !DILocation(line: 838, column: 89, scope: !902)
!1238 = !DILocation(line: 838, column: 17, scope: !902)
!1239 = !DILocation(line: 838, column: 25, scope: !902)
!1240 = !DILocation(line: 838, column: 47, scope: !902)
!1241 = !DILocation(line: 840, column: 30, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !902, file: !135, line: 840, column: 21)
!1243 = !DILocation(line: 840, column: 38, scope: !1242)
!1244 = !DILocation(line: 840, column: 45, scope: !1242)
!1245 = !DILocation(line: 840, column: 21, scope: !1242)
!1246 = !DILocation(line: 840, column: 61, scope: !1242)
!1247 = !DILocation(line: 840, column: 21, scope: !902)
!1248 = !DILocation(line: 841, column: 21, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1242, file: !135, line: 840, column: 85)
!1250 = !DILocation(line: 841, column: 29, scope: !1249)
!1251 = !DILocation(line: 841, column: 35, scope: !1249)
!1252 = !DILocation(line: 842, column: 35, scope: !1249)
!1253 = !DILocation(line: 843, column: 21, scope: !1249)
!1254 = !DILocation(line: 845, column: 17, scope: !902)
!1255 = !DILocation(line: 848, column: 37, scope: !902)
!1256 = !DILocation(line: 848, column: 45, scope: !902)
!1257 = !DILocation(line: 848, column: 85, scope: !902)
!1258 = !DILocation(line: 848, column: 93, scope: !902)
!1259 = !DILocation(line: 848, column: 102, scope: !902)
!1260 = !DILocation(line: 848, column: 23, scope: !902)
!1261 = !DILocation(line: 848, column: 21, scope: !902)
!1262 = !DILocation(line: 849, column: 21, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !902, file: !135, line: 849, column: 21)
!1264 = !DILocation(line: 849, column: 25, scope: !1263)
!1265 = !DILocation(line: 849, column: 21, scope: !902)
!1266 = !DILocation(line: 850, column: 21, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !135, line: 849, column: 34)
!1268 = !DILocation(line: 850, column: 29, scope: !1267)
!1269 = !DILocation(line: 850, column: 35, scope: !1267)
!1270 = !DILocation(line: 851, column: 35, scope: !1267)
!1271 = !DILocation(line: 852, column: 21, scope: !1267)
!1272 = !DILocation(line: 854, column: 17, scope: !902)
!1273 = !DILocation(line: 854, column: 22, scope: !902)
!1274 = !DILocation(line: 854, column: 28, scope: !902)
!1275 = !DILocation(line: 856, column: 58, scope: !902)
!1276 = !DILocation(line: 856, column: 66, scope: !902)
!1277 = !DILocation(line: 856, column: 55, scope: !902)
!1278 = !DILocation(line: 856, column: 109, scope: !902)
!1279 = !DILocation(line: 856, column: 127, scope: !902)
!1280 = !DILocation(line: 856, column: 132, scope: !902)
!1281 = !DILocation(line: 856, column: 125, scope: !902)
!1282 = !DILocation(line: 856, column: 99, scope: !902)
!1283 = !DILocation(line: 856, column: 97, scope: !902)
!1284 = !DILocation(line: 856, column: 89, scope: !902)
!1285 = !DILocation(line: 856, column: 17, scope: !902)
!1286 = !DILocation(line: 856, column: 25, scope: !902)
!1287 = !DILocation(line: 856, column: 47, scope: !902)
!1288 = !DILocation(line: 857, column: 17, scope: !902)
!1289 = !DILocation(line: 860, column: 37, scope: !902)
!1290 = !DILocation(line: 860, column: 45, scope: !902)
!1291 = !DILocation(line: 860, column: 23, scope: !902)
!1292 = !DILocation(line: 860, column: 21, scope: !902)
!1293 = !DILocation(line: 861, column: 21, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !902, file: !135, line: 861, column: 21)
!1295 = !DILocation(line: 861, column: 25, scope: !1294)
!1296 = !DILocation(line: 861, column: 21, scope: !902)
!1297 = !DILocation(line: 862, column: 21, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !135, line: 861, column: 34)
!1299 = !DILocation(line: 862, column: 29, scope: !1298)
!1300 = !DILocation(line: 862, column: 35, scope: !1298)
!1301 = !DILocation(line: 863, column: 35, scope: !1298)
!1302 = !DILocation(line: 864, column: 21, scope: !1298)
!1303 = !DILocation(line: 866, column: 17, scope: !902)
!1304 = !DILocation(line: 866, column: 22, scope: !902)
!1305 = !DILocation(line: 866, column: 28, scope: !902)
!1306 = !DILocation(line: 868, column: 58, scope: !902)
!1307 = !DILocation(line: 868, column: 66, scope: !902)
!1308 = !DILocation(line: 868, column: 55, scope: !902)
!1309 = !DILocation(line: 868, column: 109, scope: !902)
!1310 = !DILocation(line: 868, column: 127, scope: !902)
!1311 = !DILocation(line: 868, column: 132, scope: !902)
!1312 = !DILocation(line: 868, column: 125, scope: !902)
!1313 = !DILocation(line: 868, column: 99, scope: !902)
!1314 = !DILocation(line: 868, column: 97, scope: !902)
!1315 = !DILocation(line: 868, column: 89, scope: !902)
!1316 = !DILocation(line: 868, column: 17, scope: !902)
!1317 = !DILocation(line: 868, column: 25, scope: !902)
!1318 = !DILocation(line: 868, column: 47, scope: !902)
!1319 = !DILocation(line: 869, column: 17, scope: !902)
!1320 = !DILocation(line: 871, column: 17, scope: !902)
!1321 = !DILocation(line: 871, column: 25, scope: !902)
!1322 = !DILocation(line: 871, column: 31, scope: !902)
!1323 = !DILocation(line: 872, column: 31, scope: !902)
!1324 = !DILocation(line: 873, column: 17, scope: !902)
!1325 = !DILocalVariable(name: "dest", scope: !1326, file: !135, line: 877, type: !95)
!1326 = distinct !DILexicalBlock(scope: !816, file: !135, line: 875, column: 9)
!1327 = !DILocation(line: 877, column: 17, scope: !1326)
!1328 = !DILocation(line: 877, column: 40, scope: !1326)
!1329 = !DILocation(line: 877, column: 48, scope: !1326)
!1330 = !DILocation(line: 877, column: 60, scope: !1326)
!1331 = !DILocalVariable(name: "src", scope: !1326, file: !135, line: 878, type: !95)
!1332 = !DILocation(line: 878, column: 17, scope: !1326)
!1333 = !DILocation(line: 878, column: 40, scope: !1326)
!1334 = !DILocation(line: 878, column: 48, scope: !1326)
!1335 = !DILocation(line: 878, column: 60, scope: !1326)
!1336 = !DILocation(line: 878, column: 72, scope: !1326)
!1337 = !DILocation(line: 878, column: 70, scope: !1326)
!1338 = !DILocalVariable(name: "n", scope: !1326, file: !135, line: 879, type: !107)
!1339 = !DILocation(line: 879, column: 18, scope: !1326)
!1340 = !DILocation(line: 879, column: 22, scope: !1326)
!1341 = !DILocation(line: 879, column: 30, scope: !1326)
!1342 = !DILocation(line: 879, column: 42, scope: !1326)
!1343 = !DILocation(line: 879, column: 49, scope: !1326)
!1344 = !DILocation(line: 879, column: 57, scope: !1326)
!1345 = !DILocation(line: 879, column: 69, scope: !1326)
!1346 = !DILocation(line: 879, column: 47, scope: !1326)
!1347 = !DILocation(line: 879, column: 81, scope: !1326)
!1348 = !DILocation(line: 879, column: 79, scope: !1326)
!1349 = !DILocation(line: 880, column: 19, scope: !1326)
!1350 = !DILocation(line: 880, column: 25, scope: !1326)
!1351 = !DILocation(line: 880, column: 30, scope: !1326)
!1352 = !DILocation(line: 880, column: 11, scope: !1326)
!1353 = !DILocation(line: 881, column: 39, scope: !1326)
!1354 = !DILocation(line: 881, column: 11, scope: !1326)
!1355 = !DILocation(line: 881, column: 19, scope: !1326)
!1356 = !DILocation(line: 881, column: 31, scope: !1326)
!1357 = !DILocation(line: 881, column: 36, scope: !1326)
!1358 = !DILocation(line: 882, column: 42, scope: !1326)
!1359 = !DILocation(line: 882, column: 11, scope: !1326)
!1360 = !DILocation(line: 882, column: 19, scope: !1326)
!1361 = !DILocation(line: 882, column: 31, scope: !1326)
!1362 = !DILocation(line: 882, column: 39, scope: !1326)
!1363 = distinct !{!1363, !812, !1364, !377}
!1364 = !DILocation(line: 884, column: 5, scope: !751)
!1365 = !DILocation(line: 887, column: 5, scope: !751)
!1366 = !DILocation(line: 888, column: 12, scope: !751)
!1367 = !DILocation(line: 888, column: 5, scope: !751)
!1368 = !DILocation(line: 889, column: 1, scope: !751)
!1369 = distinct !DISubprogram(name: "__mqtt_send", scope: !135, file: !135, line: 498, type: !752, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!1370 = !DILocalVariable(name: "client", arg: 1, scope: !1369, file: !135, line: 498, type: !587)
!1371 = !DILocation(line: 498, column: 41, scope: !1369)
!1372 = !DILocalVariable(name: "inspected", scope: !1369, file: !135, line: 500, type: !101)
!1373 = !DILocation(line: 500, column: 13, scope: !1369)
!1374 = !DILocalVariable(name: "len", scope: !1369, file: !135, line: 501, type: !754)
!1375 = !DILocation(line: 501, column: 13, scope: !1369)
!1376 = !DILocalVariable(name: "inflight_qos2", scope: !1369, file: !135, line: 502, type: !7)
!1377 = !DILocation(line: 502, column: 9, scope: !1369)
!1378 = !DILocalVariable(name: "i", scope: !1369, file: !135, line: 503, type: !7)
!1379 = !DILocation(line: 503, column: 9, scope: !1369)
!1380 = !DILocation(line: 505, column: 5, scope: !1369)
!1381 = !DILocation(line: 507, column: 9, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1369, file: !135, line: 507, column: 9)
!1383 = !DILocation(line: 507, column: 17, scope: !1382)
!1384 = !DILocation(line: 507, column: 23, scope: !1382)
!1385 = !DILocation(line: 507, column: 27, scope: !1382)
!1386 = !DILocation(line: 507, column: 30, scope: !1382)
!1387 = !DILocation(line: 507, column: 38, scope: !1382)
!1388 = !DILocation(line: 507, column: 44, scope: !1382)
!1389 = !DILocation(line: 507, column: 9, scope: !1369)
!1390 = !DILocation(line: 508, column: 9, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1382, file: !135, line: 507, column: 79)
!1392 = !DILocation(line: 509, column: 16, scope: !1391)
!1393 = !DILocation(line: 509, column: 24, scope: !1391)
!1394 = !DILocation(line: 509, column: 9, scope: !1391)
!1395 = !DILocation(line: 513, column: 11, scope: !1369)
!1396 = !DILocation(line: 513, column: 9, scope: !1369)
!1397 = !DILocation(line: 514, column: 5, scope: !1369)
!1398 = !DILocation(line: 514, column: 11, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !135, line: 514, column: 5)
!1400 = distinct !DILexicalBlock(scope: !1369, file: !135, line: 514, column: 5)
!1401 = !DILocation(line: 514, column: 15, scope: !1399)
!1402 = !DILocation(line: 514, column: 13, scope: !1399)
!1403 = !DILocation(line: 514, column: 5, scope: !1400)
!1404 = !DILocalVariable(name: "msg", scope: !1405, file: !135, line: 515, type: !96)
!1405 = distinct !DILexicalBlock(scope: !1399, file: !135, line: 514, column: 25)
!1406 = !DILocation(line: 515, column: 37, scope: !1405)
!1407 = !DILocation(line: 515, column: 43, scope: !1405)
!1408 = !DILocalVariable(name: "resend", scope: !1405, file: !135, line: 516, type: !7)
!1409 = !DILocation(line: 516, column: 13, scope: !1405)
!1410 = !DILocation(line: 517, column: 13, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1405, file: !135, line: 517, column: 13)
!1412 = !DILocation(line: 517, column: 18, scope: !1411)
!1413 = !DILocation(line: 517, column: 24, scope: !1411)
!1414 = !DILocation(line: 517, column: 13, scope: !1405)
!1415 = !DILocation(line: 519, column: 20, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !135, line: 517, column: 47)
!1417 = !DILocation(line: 520, column: 9, scope: !1416)
!1418 = !DILocation(line: 520, column: 20, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1411, file: !135, line: 520, column: 20)
!1420 = !DILocation(line: 520, column: 25, scope: !1419)
!1421 = !DILocation(line: 520, column: 31, scope: !1419)
!1422 = !DILocation(line: 520, column: 20, scope: !1411)
!1423 = !DILocation(line: 522, column: 17, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !135, line: 522, column: 17)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !135, line: 520, column: 60)
!1426 = !DILocation(line: 522, column: 35, scope: !1424)
!1427 = !DILocation(line: 522, column: 40, scope: !1424)
!1428 = !DILocation(line: 522, column: 52, scope: !1424)
!1429 = !DILocation(line: 522, column: 60, scope: !1424)
!1430 = !DILocation(line: 522, column: 50, scope: !1424)
!1431 = !DILocation(line: 522, column: 33, scope: !1424)
!1432 = !DILocation(line: 522, column: 17, scope: !1425)
!1433 = !DILocation(line: 523, column: 24, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1424, file: !135, line: 522, column: 78)
!1435 = !DILocation(line: 524, column: 17, scope: !1434)
!1436 = !DILocation(line: 524, column: 25, scope: !1434)
!1437 = !DILocation(line: 524, column: 44, scope: !1434)
!1438 = !DILocation(line: 525, column: 17, scope: !1434)
!1439 = !DILocation(line: 525, column: 25, scope: !1434)
!1440 = !DILocation(line: 525, column: 37, scope: !1434)
!1441 = !DILocation(line: 526, column: 13, scope: !1434)
!1442 = !DILocation(line: 527, column: 9, scope: !1425)
!1443 = !DILocation(line: 530, column: 13, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1405, file: !135, line: 530, column: 13)
!1445 = !DILocation(line: 530, column: 18, scope: !1444)
!1446 = !DILocation(line: 530, column: 31, scope: !1444)
!1447 = !DILocation(line: 531, column: 13, scope: !1444)
!1448 = !DILocation(line: 531, column: 17, scope: !1444)
!1449 = !DILocation(line: 531, column: 22, scope: !1444)
!1450 = !DILocation(line: 531, column: 28, scope: !1444)
!1451 = !DILocation(line: 531, column: 50, scope: !1444)
!1452 = !DILocation(line: 531, column: 53, scope: !1444)
!1453 = !DILocation(line: 531, column: 58, scope: !1444)
!1454 = !DILocation(line: 531, column: 64, scope: !1444)
!1455 = !DILocation(line: 530, column: 13, scope: !1405)
!1456 = !DILocation(line: 533, column: 34, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1444, file: !135, line: 532, column: 9)
!1458 = !DILocation(line: 533, column: 39, scope: !1457)
!1459 = !DILocation(line: 533, column: 33, scope: !1457)
!1460 = !DILocation(line: 533, column: 49, scope: !1457)
!1461 = !DILocation(line: 533, column: 30, scope: !1457)
!1462 = !DILocation(line: 533, column: 25, scope: !1457)
!1463 = !DILocation(line: 533, column: 23, scope: !1457)
!1464 = !DILocation(line: 534, column: 17, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1457, file: !135, line: 534, column: 17)
!1466 = !DILocation(line: 534, column: 27, scope: !1465)
!1467 = !DILocation(line: 534, column: 17, scope: !1457)
!1468 = !DILocation(line: 535, column: 21, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !135, line: 535, column: 21)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !135, line: 534, column: 33)
!1471 = !DILocation(line: 535, column: 21, scope: !1470)
!1472 = !DILocation(line: 536, column: 28, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !135, line: 535, column: 36)
!1474 = !DILocation(line: 537, column: 17, scope: !1473)
!1475 = !DILocation(line: 538, column: 31, scope: !1470)
!1476 = !DILocation(line: 539, column: 13, scope: !1470)
!1477 = !DILocation(line: 540, column: 9, scope: !1457)
!1478 = !DILocation(line: 543, column: 14, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1405, file: !135, line: 543, column: 13)
!1480 = !DILocation(line: 543, column: 13, scope: !1405)
!1481 = !DILocation(line: 544, column: 13, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !135, line: 543, column: 22)
!1483 = !DILocalVariable(name: "tmp", scope: !1484, file: !135, line: 549, type: !754)
!1484 = distinct !DILexicalBlock(scope: !1405, file: !135, line: 548, column: 9)
!1485 = !DILocation(line: 549, column: 19, scope: !1484)
!1486 = !DILocation(line: 549, column: 42, scope: !1484)
!1487 = !DILocation(line: 549, column: 50, scope: !1484)
!1488 = !DILocation(line: 549, column: 60, scope: !1484)
!1489 = !DILocation(line: 549, column: 65, scope: !1484)
!1490 = !DILocation(line: 549, column: 73, scope: !1484)
!1491 = !DILocation(line: 549, column: 81, scope: !1484)
!1492 = !DILocation(line: 549, column: 71, scope: !1484)
!1493 = !DILocation(line: 549, column: 94, scope: !1484)
!1494 = !DILocation(line: 549, column: 99, scope: !1484)
!1495 = !DILocation(line: 549, column: 106, scope: !1484)
!1496 = !DILocation(line: 549, column: 114, scope: !1484)
!1497 = !DILocation(line: 549, column: 104, scope: !1484)
!1498 = !DILocation(line: 549, column: 25, scope: !1484)
!1499 = !DILocation(line: 550, column: 15, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1484, file: !135, line: 550, column: 15)
!1501 = !DILocation(line: 550, column: 19, scope: !1500)
!1502 = !DILocation(line: 550, column: 15, scope: !1484)
!1503 = !DILocation(line: 551, column: 29, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !135, line: 550, column: 24)
!1505 = !DILocation(line: 551, column: 13, scope: !1504)
!1506 = !DILocation(line: 551, column: 21, scope: !1504)
!1507 = !DILocation(line: 551, column: 27, scope: !1504)
!1508 = !DILocation(line: 552, column: 13, scope: !1504)
!1509 = !DILocation(line: 553, column: 20, scope: !1504)
!1510 = !DILocation(line: 553, column: 13, scope: !1504)
!1511 = !DILocation(line: 555, column: 36, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1500, file: !135, line: 554, column: 18)
!1513 = !DILocation(line: 555, column: 13, scope: !1512)
!1514 = !DILocation(line: 555, column: 21, scope: !1512)
!1515 = !DILocation(line: 555, column: 33, scope: !1512)
!1516 = !DILocation(line: 556, column: 16, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !135, line: 556, column: 16)
!1518 = !DILocation(line: 556, column: 24, scope: !1517)
!1519 = !DILocation(line: 556, column: 38, scope: !1517)
!1520 = !DILocation(line: 556, column: 43, scope: !1517)
!1521 = !DILocation(line: 556, column: 36, scope: !1517)
!1522 = !DILocation(line: 556, column: 16, scope: !1512)
!1523 = !DILocation(line: 558, column: 15, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1517, file: !135, line: 556, column: 49)
!1525 = !DILocation(line: 561, column: 15, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1517, file: !135, line: 559, column: 20)
!1527 = !DILocation(line: 561, column: 23, scope: !1526)
!1528 = !DILocation(line: 561, column: 35, scope: !1526)
!1529 = !DILocation(line: 569, column: 37, scope: !1405)
!1530 = !DILocation(line: 569, column: 9, scope: !1405)
!1531 = !DILocation(line: 569, column: 17, scope: !1405)
!1532 = !DILocation(line: 569, column: 35, scope: !1405)
!1533 = !DILocation(line: 570, column: 26, scope: !1405)
!1534 = !DILocation(line: 570, column: 34, scope: !1405)
!1535 = !DILocation(line: 570, column: 9, scope: !1405)
!1536 = !DILocation(line: 570, column: 14, scope: !1405)
!1537 = !DILocation(line: 570, column: 24, scope: !1405)
!1538 = !DILocation(line: 590, column: 17, scope: !1405)
!1539 = !DILocation(line: 590, column: 22, scope: !1405)
!1540 = !DILocation(line: 590, column: 9, scope: !1405)
!1541 = !DILocation(line: 594, column: 13, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1405, file: !135, line: 590, column: 36)
!1543 = !DILocation(line: 594, column: 18, scope: !1542)
!1544 = !DILocation(line: 594, column: 24, scope: !1542)
!1545 = !DILocation(line: 595, column: 13, scope: !1542)
!1546 = !DILocation(line: 597, column: 52, scope: !1542)
!1547 = !DILocation(line: 597, column: 57, scope: !1542)
!1548 = !DILocation(line: 597, column: 51, scope: !1542)
!1549 = !DILocation(line: 597, column: 49, scope: !1542)
!1550 = !DILocation(line: 597, column: 69, scope: !1542)
!1551 = !DILocation(line: 597, column: 25, scope: !1542)
!1552 = !DILocation(line: 597, column: 23, scope: !1542)
!1553 = !DILocation(line: 598, column: 17, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1542, file: !135, line: 598, column: 17)
!1555 = !DILocation(line: 598, column: 27, scope: !1554)
!1556 = !DILocation(line: 598, column: 17, scope: !1542)
!1557 = !DILocation(line: 599, column: 17, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !135, line: 598, column: 33)
!1559 = !DILocation(line: 599, column: 22, scope: !1558)
!1560 = !DILocation(line: 599, column: 28, scope: !1558)
!1561 = !DILocation(line: 600, column: 13, scope: !1558)
!1562 = !DILocation(line: 600, column: 24, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1554, file: !135, line: 600, column: 24)
!1564 = !DILocation(line: 600, column: 34, scope: !1563)
!1565 = !DILocation(line: 600, column: 24, scope: !1554)
!1566 = !DILocation(line: 601, column: 17, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !135, line: 600, column: 40)
!1568 = !DILocation(line: 601, column: 22, scope: !1567)
!1569 = !DILocation(line: 601, column: 28, scope: !1567)
!1570 = !DILocation(line: 603, column: 17, scope: !1567)
!1571 = !DILocation(line: 603, column: 22, scope: !1567)
!1572 = !DILocation(line: 603, column: 31, scope: !1567)
!1573 = !DILocation(line: 604, column: 13, scope: !1567)
!1574 = !DILocation(line: 605, column: 17, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1563, file: !135, line: 604, column: 20)
!1576 = !DILocation(line: 605, column: 22, scope: !1575)
!1577 = !DILocation(line: 605, column: 28, scope: !1575)
!1578 = !DILocation(line: 607, column: 13, scope: !1542)
!1579 = !DILocation(line: 614, column: 13, scope: !1542)
!1580 = !DILocation(line: 614, column: 18, scope: !1542)
!1581 = !DILocation(line: 614, column: 24, scope: !1542)
!1582 = !DILocation(line: 615, column: 13, scope: !1542)
!1583 = !DILocation(line: 617, column: 13, scope: !1542)
!1584 = !DILocation(line: 617, column: 21, scope: !1542)
!1585 = !DILocation(line: 617, column: 27, scope: !1542)
!1586 = !DILocation(line: 618, column: 13, scope: !1542)
!1587 = !DILocation(line: 619, column: 13, scope: !1542)
!1588 = !DILocation(line: 621, column: 5, scope: !1405)
!1589 = !DILocation(line: 514, column: 20, scope: !1399)
!1590 = !DILocation(line: 514, column: 5, scope: !1399)
!1591 = distinct !{!1591, !1403, !1592, !377}
!1592 = !DILocation(line: 621, column: 5, scope: !1400)
!1593 = !DILocalVariable(name: "keep_alive_timeout", scope: !1594, file: !135, line: 625, type: !112)
!1594 = distinct !DILexicalBlock(scope: !1369, file: !135, line: 624, column: 5)
!1595 = !DILocation(line: 625, column: 25, scope: !1594)
!1596 = !DILocation(line: 625, column: 46, scope: !1594)
!1597 = !DILocation(line: 625, column: 54, scope: !1594)
!1598 = !DILocation(line: 625, column: 100, scope: !1594)
!1599 = !DILocation(line: 625, column: 108, scope: !1594)
!1600 = !DILocation(line: 625, column: 92, scope: !1594)
!1601 = !DILocation(line: 625, column: 120, scope: !1594)
!1602 = !DILocation(line: 625, column: 74, scope: !1594)
!1603 = !DILocation(line: 625, column: 72, scope: !1594)
!1604 = !DILocation(line: 626, column: 13, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1594, file: !135, line: 626, column: 13)
!1606 = !DILocation(line: 626, column: 31, scope: !1605)
!1607 = !DILocation(line: 626, column: 29, scope: !1605)
!1608 = !DILocation(line: 626, column: 13, scope: !1594)
!1609 = !DILocalVariable(name: "rv", scope: !1610, file: !135, line: 627, type: !754)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !135, line: 626, column: 51)
!1611 = !DILocation(line: 627, column: 19, scope: !1610)
!1612 = !DILocation(line: 627, column: 36, scope: !1610)
!1613 = !DILocation(line: 627, column: 24, scope: !1610)
!1614 = !DILocation(line: 628, column: 15, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !135, line: 628, column: 15)
!1616 = !DILocation(line: 628, column: 18, scope: !1615)
!1617 = !DILocation(line: 628, column: 15, scope: !1610)
!1618 = !DILocation(line: 629, column: 29, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !135, line: 628, column: 30)
!1620 = !DILocation(line: 629, column: 13, scope: !1619)
!1621 = !DILocation(line: 629, column: 21, scope: !1619)
!1622 = !DILocation(line: 629, column: 27, scope: !1619)
!1623 = !DILocation(line: 630, column: 13, scope: !1619)
!1624 = !DILocation(line: 631, column: 20, scope: !1619)
!1625 = !DILocation(line: 631, column: 13, scope: !1619)
!1626 = !DILocation(line: 633, column: 9, scope: !1610)
!1627 = !DILocation(line: 636, column: 5, scope: !1369)
!1628 = !DILocation(line: 637, column: 5, scope: !1369)
!1629 = !DILocation(line: 638, column: 1, scope: !1369)
!1630 = distinct !DISubprogram(name: "__mqtt_ping", scope: !135, file: !135, line: 445, type: !585, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!1631 = !DILocalVariable(name: "client", arg: 1, scope: !1630, file: !135, line: 445, type: !587)
!1632 = !DILocation(line: 445, column: 49, scope: !1630)
!1633 = !DILocalVariable(name: "rv", scope: !1630, file: !135, line: 447, type: !754)
!1634 = !DILocation(line: 447, column: 13, scope: !1630)
!1635 = !DILocalVariable(name: "msg", scope: !1630, file: !135, line: 448, type: !96)
!1636 = !DILocation(line: 448, column: 33, scope: !1630)
!1637 = !DILocation(line: 451, column: 5, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1630, file: !135, line: 451, column: 5)
!1639 = !DILocation(line: 451, column: 5, scope: !1630)
!1640 = !DILocation(line: 451, column: 5, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1638, file: !135, line: 451, column: 5)
!1642 = !DILocation(line: 451, column: 5, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1630, file: !135, line: 451, column: 5)
!1644 = !DILocation(line: 451, column: 5, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1643, file: !135, line: 451, column: 5)
!1646 = !DILocation(line: 451, column: 5, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !135, line: 451, column: 5)
!1648 = !DILocation(line: 451, column: 5, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1647, file: !135, line: 451, column: 5)
!1650 = !DILocation(line: 451, column: 5, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1649, file: !135, line: 451, column: 5)
!1652 = !DILocation(line: 451, column: 5, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1651, file: !135, line: 451, column: 5)
!1654 = !DILocation(line: 451, column: 5, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !135, line: 451, column: 5)
!1656 = !DILocation(line: 451, column: 5, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1655, file: !135, line: 451, column: 5)
!1658 = !DILocation(line: 459, column: 5, scope: !1630)
!1659 = !DILocation(line: 459, column: 10, scope: !1630)
!1660 = !DILocation(line: 459, column: 23, scope: !1630)
!1661 = !DILocation(line: 462, column: 5, scope: !1630)
!1662 = !DILocation(line: 463, column: 1, scope: !1630)
!1663 = distinct !DISubprogram(name: "mqtt_pack_ping_request", scope: !135, file: !135, line: 1253, type: !1664, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!754, !100, !107}
!1666 = !DILocalVariable(name: "buf", arg: 1, scope: !1663, file: !135, line: 1253, type: !100)
!1667 = !DILocation(line: 1253, column: 41, scope: !1663)
!1668 = !DILocalVariable(name: "bufsz", arg: 2, scope: !1663, file: !135, line: 1253, type: !107)
!1669 = !DILocation(line: 1253, column: 53, scope: !1663)
!1670 = !DILocalVariable(name: "fixed_header", scope: !1663, file: !135, line: 1254, type: !763)
!1671 = !DILocation(line: 1254, column: 30, scope: !1663)
!1672 = !DILocation(line: 1255, column: 18, scope: !1663)
!1673 = !DILocation(line: 1255, column: 31, scope: !1663)
!1674 = !DILocation(line: 1256, column: 18, scope: !1663)
!1675 = !DILocation(line: 1256, column: 32, scope: !1663)
!1676 = !DILocation(line: 1257, column: 18, scope: !1663)
!1677 = !DILocation(line: 1257, column: 35, scope: !1663)
!1678 = !DILocation(line: 1258, column: 35, scope: !1663)
!1679 = !DILocation(line: 1258, column: 40, scope: !1663)
!1680 = !DILocation(line: 1258, column: 12, scope: !1663)
!1681 = !DILocation(line: 1258, column: 5, scope: !1663)
!1682 = distinct !DISubprogram(name: "mqtt_mq_clean", scope: !135, file: !135, line: 1632, type: !1683, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1686 = !DILocalVariable(name: "mq", arg: 1, scope: !1682, file: !135, line: 1632, type: !1685)
!1687 = !DILocation(line: 1632, column: 47, scope: !1682)
!1688 = !DILocalVariable(name: "new_head", scope: !1682, file: !135, line: 1633, type: !96)
!1689 = !DILocation(line: 1633, column: 33, scope: !1682)
!1690 = !DILocation(line: 1635, column: 20, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1682, file: !135, line: 1635, column: 5)
!1692 = !DILocation(line: 1635, column: 18, scope: !1691)
!1693 = !DILocation(line: 1635, column: 9, scope: !1691)
!1694 = !DILocation(line: 1635, column: 40, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !135, line: 1635, column: 5)
!1696 = !DILocation(line: 1635, column: 52, scope: !1695)
!1697 = !DILocation(line: 1635, column: 56, scope: !1695)
!1698 = !DILocation(line: 1635, column: 49, scope: !1695)
!1699 = !DILocation(line: 1635, column: 5, scope: !1691)
!1700 = !DILocation(line: 1636, column: 13, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !135, line: 1636, column: 13)
!1702 = distinct !DILexicalBlock(scope: !1695, file: !135, line: 1635, column: 80)
!1703 = !DILocation(line: 1636, column: 23, scope: !1701)
!1704 = !DILocation(line: 1636, column: 29, scope: !1701)
!1705 = !DILocation(line: 1636, column: 13, scope: !1702)
!1706 = !DILocation(line: 1636, column: 54, scope: !1701)
!1707 = !DILocation(line: 1637, column: 5, scope: !1702)
!1708 = !DILocation(line: 1635, column: 68, scope: !1695)
!1709 = !DILocation(line: 1635, column: 5, scope: !1695)
!1710 = distinct !{!1710, !1699, !1711, !377}
!1711 = !DILocation(line: 1637, column: 5, scope: !1691)
!1712 = !DILocation(line: 1640, column: 9, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1682, file: !135, line: 1640, column: 9)
!1714 = !DILocation(line: 1640, column: 20, scope: !1713)
!1715 = !DILocation(line: 1640, column: 24, scope: !1713)
!1716 = !DILocation(line: 1640, column: 18, scope: !1713)
!1717 = !DILocation(line: 1640, column: 9, scope: !1682)
!1718 = !DILocation(line: 1641, column: 20, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !135, line: 1640, column: 36)
!1720 = !DILocation(line: 1641, column: 24, scope: !1719)
!1721 = !DILocation(line: 1641, column: 9, scope: !1719)
!1722 = !DILocation(line: 1641, column: 13, scope: !1719)
!1723 = !DILocation(line: 1641, column: 18, scope: !1719)
!1724 = !DILocation(line: 1642, column: 26, scope: !1719)
!1725 = !DILocation(line: 1642, column: 30, scope: !1719)
!1726 = !DILocation(line: 1642, column: 9, scope: !1719)
!1727 = !DILocation(line: 1642, column: 13, scope: !1719)
!1728 = !DILocation(line: 1642, column: 24, scope: !1719)
!1729 = !DILocation(line: 1643, column: 23, scope: !1719)
!1730 = !DILocation(line: 1643, column: 9, scope: !1719)
!1731 = !DILocation(line: 1643, column: 13, scope: !1719)
!1732 = !DILocation(line: 1643, column: 21, scope: !1719)
!1733 = !DILocation(line: 1644, column: 9, scope: !1719)
!1734 = !DILocation(line: 1645, column: 16, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1713, file: !135, line: 1645, column: 16)
!1736 = !DILocation(line: 1645, column: 28, scope: !1735)
!1737 = !DILocation(line: 1645, column: 25, scope: !1735)
!1738 = !DILocation(line: 1645, column: 16, scope: !1713)
!1739 = !DILocation(line: 1647, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !135, line: 1645, column: 48)
!1741 = !DILocalVariable(name: "n", scope: !1742, file: !135, line: 1652, type: !107)
!1742 = distinct !DILexicalBlock(scope: !1682, file: !135, line: 1651, column: 5)
!1743 = !DILocation(line: 1652, column: 16, scope: !1742)
!1744 = !DILocation(line: 1652, column: 20, scope: !1742)
!1745 = !DILocation(line: 1652, column: 24, scope: !1742)
!1746 = !DILocation(line: 1652, column: 31, scope: !1742)
!1747 = !DILocation(line: 1652, column: 41, scope: !1742)
!1748 = !DILocation(line: 1652, column: 29, scope: !1742)
!1749 = !DILocalVariable(name: "removing", scope: !1742, file: !135, line: 1653, type: !107)
!1750 = !DILocation(line: 1653, column: 16, scope: !1742)
!1751 = !DILocation(line: 1653, column: 27, scope: !1742)
!1752 = !DILocation(line: 1653, column: 37, scope: !1742)
!1753 = !DILocation(line: 1653, column: 56, scope: !1742)
!1754 = !DILocation(line: 1653, column: 60, scope: !1742)
!1755 = !DILocation(line: 1653, column: 43, scope: !1742)
!1756 = !DILocation(line: 1654, column: 17, scope: !1742)
!1757 = !DILocation(line: 1654, column: 21, scope: !1742)
!1758 = !DILocation(line: 1654, column: 32, scope: !1742)
!1759 = !DILocation(line: 1654, column: 42, scope: !1742)
!1760 = !DILocation(line: 1654, column: 49, scope: !1742)
!1761 = !DILocation(line: 1654, column: 9, scope: !1742)
!1762 = !DILocation(line: 1655, column: 36, scope: !1742)
!1763 = !DILocation(line: 1655, column: 40, scope: !1742)
!1764 = !DILocation(line: 1655, column: 52, scope: !1742)
!1765 = !DILocation(line: 1655, column: 50, scope: !1742)
!1766 = !DILocation(line: 1655, column: 9, scope: !1742)
!1767 = !DILocation(line: 1655, column: 13, scope: !1742)
!1768 = !DILocation(line: 1655, column: 18, scope: !1742)
!1769 = !DILocalVariable(name: "new_tail_idx", scope: !1770, file: !135, line: 1660, type: !754)
!1770 = distinct !DILexicalBlock(scope: !1742, file: !135, line: 1659, column: 9)
!1771 = !DILocation(line: 1660, column: 21, scope: !1770)
!1772 = !DILocation(line: 1660, column: 36, scope: !1770)
!1773 = !DILocation(line: 1660, column: 47, scope: !1770)
!1774 = !DILocation(line: 1660, column: 51, scope: !1770)
!1775 = !DILocation(line: 1660, column: 45, scope: !1770)
!1776 = !DILocation(line: 1661, column: 21, scope: !1770)
!1777 = !DILocation(line: 1661, column: 13, scope: !1770)
!1778 = !DILocation(line: 1661, column: 52, scope: !1770)
!1779 = !DILocation(line: 1661, column: 56, scope: !1770)
!1780 = !DILocation(line: 1661, column: 106, scope: !1770)
!1781 = !DILocation(line: 1661, column: 119, scope: !1770)
!1782 = !DILocation(line: 1661, column: 103, scope: !1770)
!1783 = !DILocation(line: 1662, column: 30, scope: !1770)
!1784 = !DILocation(line: 1662, column: 13, scope: !1770)
!1785 = !DILocation(line: 1662, column: 17, scope: !1770)
!1786 = !DILocation(line: 1662, column: 28, scope: !1770)
!1787 = !DILocalVariable(name: "i", scope: !1788, file: !135, line: 1666, type: !754)
!1788 = distinct !DILexicalBlock(scope: !1770, file: !135, line: 1664, column: 13)
!1789 = !DILocation(line: 1666, column: 25, scope: !1788)
!1790 = !DILocation(line: 1667, column: 17, scope: !1788)
!1791 = !DILocation(line: 1667, column: 23, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !135, line: 1667, column: 17)
!1793 = distinct !DILexicalBlock(scope: !1788, file: !135, line: 1667, column: 17)
!1794 = !DILocation(line: 1667, column: 27, scope: !1792)
!1795 = !DILocation(line: 1667, column: 40, scope: !1792)
!1796 = !DILocation(line: 1667, column: 25, scope: !1792)
!1797 = !DILocation(line: 1667, column: 17, scope: !1793)
!1798 = !DILocation(line: 1668, column: 50, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1792, file: !135, line: 1667, column: 50)
!1800 = !DILocation(line: 1668, column: 21, scope: !1799)
!1801 = !DILocation(line: 1668, column: 41, scope: !1799)
!1802 = !DILocation(line: 1668, column: 47, scope: !1799)
!1803 = !DILocation(line: 1669, column: 17, scope: !1799)
!1804 = !DILocation(line: 1667, column: 45, scope: !1792)
!1805 = !DILocation(line: 1667, column: 17, scope: !1792)
!1806 = distinct !{!1806, !1797, !1807, !377}
!1807 = !DILocation(line: 1669, column: 17, scope: !1793)
!1808 = !DILocation(line: 1675, column: 19, scope: !1682)
!1809 = !DILocation(line: 1675, column: 5, scope: !1682)
!1810 = !DILocation(line: 1675, column: 9, scope: !1682)
!1811 = !DILocation(line: 1675, column: 17, scope: !1682)
!1812 = !DILocation(line: 1676, column: 1, scope: !1682)
!1813 = distinct !DISubprogram(name: "mqtt_mq_register", scope: !135, file: !135, line: 1617, type: !1814, scopeLine: 1618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!96, !1685, !107}
!1816 = !DILocalVariable(name: "mq", arg: 1, scope: !1813, file: !135, line: 1617, type: !1685)
!1817 = !DILocation(line: 1617, column: 73, scope: !1813)
!1818 = !DILocalVariable(name: "nbytes", arg: 2, scope: !1813, file: !135, line: 1617, type: !107)
!1819 = !DILocation(line: 1617, column: 84, scope: !1813)
!1820 = !DILocation(line: 1620, column: 8, scope: !1813)
!1821 = !DILocation(line: 1620, column: 12, scope: !1813)
!1822 = !DILocation(line: 1620, column: 5, scope: !1813)
!1823 = !DILocation(line: 1621, column: 29, scope: !1813)
!1824 = !DILocation(line: 1621, column: 33, scope: !1813)
!1825 = !DILocation(line: 1621, column: 5, scope: !1813)
!1826 = !DILocation(line: 1621, column: 9, scope: !1813)
!1827 = !DILocation(line: 1621, column: 21, scope: !1813)
!1828 = !DILocation(line: 1621, column: 27, scope: !1813)
!1829 = !DILocation(line: 1622, column: 28, scope: !1813)
!1830 = !DILocation(line: 1622, column: 5, scope: !1813)
!1831 = !DILocation(line: 1622, column: 9, scope: !1813)
!1832 = !DILocation(line: 1622, column: 21, scope: !1813)
!1833 = !DILocation(line: 1622, column: 26, scope: !1813)
!1834 = !DILocation(line: 1623, column: 5, scope: !1813)
!1835 = !DILocation(line: 1623, column: 9, scope: !1813)
!1836 = !DILocation(line: 1623, column: 21, scope: !1813)
!1837 = !DILocation(line: 1623, column: 27, scope: !1813)
!1838 = !DILocation(line: 1626, column: 17, scope: !1813)
!1839 = !DILocation(line: 1626, column: 5, scope: !1813)
!1840 = !DILocation(line: 1626, column: 9, scope: !1813)
!1841 = !DILocation(line: 1626, column: 14, scope: !1813)
!1842 = !DILocation(line: 1627, column: 19, scope: !1813)
!1843 = !DILocation(line: 1627, column: 5, scope: !1813)
!1844 = !DILocation(line: 1627, column: 9, scope: !1813)
!1845 = !DILocation(line: 1627, column: 17, scope: !1813)
!1846 = !DILocation(line: 1629, column: 12, scope: !1813)
!1847 = !DILocation(line: 1629, column: 16, scope: !1813)
!1848 = !DILocation(line: 1629, column: 5, scope: !1813)
!1849 = distinct !DISubprogram(name: "mqtt_pack_fixed_header", scope: !135, file: !135, line: 1039, type: !1850, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!754, !100, !107, !1852}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!1854 = !DILocalVariable(name: "buf", arg: 1, scope: !1849, file: !135, line: 1039, type: !100)
!1855 = !DILocation(line: 1039, column: 41, scope: !1849)
!1856 = !DILocalVariable(name: "bufsz", arg: 2, scope: !1849, file: !135, line: 1039, type: !107)
!1857 = !DILocation(line: 1039, column: 53, scope: !1849)
!1858 = !DILocalVariable(name: "fixed_header", arg: 3, scope: !1849, file: !135, line: 1039, type: !1852)
!1859 = !DILocation(line: 1039, column: 92, scope: !1849)
!1860 = !DILocalVariable(name: "start", scope: !1849, file: !135, line: 1040, type: !798)
!1861 = !DILocation(line: 1040, column: 20, scope: !1849)
!1862 = !DILocation(line: 1040, column: 28, scope: !1849)
!1863 = !DILocalVariable(name: "errcode", scope: !1849, file: !135, line: 1041, type: !754)
!1864 = !DILocation(line: 1041, column: 13, scope: !1849)
!1865 = !DILocalVariable(name: "remaining_length", scope: !1849, file: !135, line: 1042, type: !130)
!1866 = !DILocation(line: 1042, column: 14, scope: !1849)
!1867 = !DILocation(line: 1045, column: 9, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1849, file: !135, line: 1045, column: 9)
!1869 = !DILocation(line: 1045, column: 22, scope: !1868)
!1870 = !DILocation(line: 1045, column: 30, scope: !1868)
!1871 = !DILocation(line: 1045, column: 33, scope: !1868)
!1872 = !DILocation(line: 1045, column: 37, scope: !1868)
!1873 = !DILocation(line: 1045, column: 9, scope: !1849)
!1874 = !DILocation(line: 1046, column: 9, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1868, file: !135, line: 1045, column: 46)
!1876 = !DILocation(line: 1050, column: 48, scope: !1849)
!1877 = !DILocation(line: 1050, column: 15, scope: !1849)
!1878 = !DILocation(line: 1050, column: 13, scope: !1849)
!1879 = !DILocation(line: 1051, column: 9, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1849, file: !135, line: 1051, column: 9)
!1881 = !DILocation(line: 1051, column: 9, scope: !1849)
!1882 = !DILocation(line: 1052, column: 16, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !135, line: 1051, column: 18)
!1884 = !DILocation(line: 1052, column: 9, scope: !1883)
!1885 = !DILocation(line: 1056, column: 9, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1849, file: !135, line: 1056, column: 9)
!1887 = !DILocation(line: 1056, column: 15, scope: !1886)
!1888 = !DILocation(line: 1056, column: 9, scope: !1849)
!1889 = !DILocation(line: 1056, column: 21, scope: !1886)
!1890 = !DILocation(line: 1059, column: 25, scope: !1849)
!1891 = !DILocation(line: 1059, column: 39, scope: !1849)
!1892 = !DILocation(line: 1059, column: 15, scope: !1849)
!1893 = !DILocation(line: 1059, column: 14, scope: !1849)
!1894 = !DILocation(line: 1059, column: 53, scope: !1849)
!1895 = !DILocation(line: 1059, column: 59, scope: !1849)
!1896 = !DILocation(line: 1059, column: 13, scope: !1849)
!1897 = !DILocation(line: 1059, column: 6, scope: !1849)
!1898 = !DILocation(line: 1059, column: 10, scope: !1849)
!1899 = !DILocation(line: 1060, column: 24, scope: !1849)
!1900 = !DILocation(line: 1060, column: 38, scope: !1849)
!1901 = !DILocation(line: 1060, column: 14, scope: !1849)
!1902 = !DILocation(line: 1060, column: 13, scope: !1849)
!1903 = !DILocation(line: 1060, column: 59, scope: !1849)
!1904 = !DILocation(line: 1060, column: 6, scope: !1849)
!1905 = !DILocation(line: 1060, column: 10, scope: !1849)
!1906 = !DILocation(line: 1062, column: 24, scope: !1849)
!1907 = !DILocation(line: 1062, column: 38, scope: !1849)
!1908 = !DILocation(line: 1062, column: 22, scope: !1849)
!1909 = !DILocation(line: 1065, column: 8, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1849, file: !135, line: 1065, column: 8)
!1911 = !DILocation(line: 1065, column: 25, scope: !1910)
!1912 = !DILocation(line: 1065, column: 8, scope: !1849)
!1913 = !DILocation(line: 1066, column: 9, scope: !1910)
!1914 = !DILocation(line: 1068, column: 5, scope: !1849)
!1915 = !DILocation(line: 1070, column: 9, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1849, file: !135, line: 1068, column: 8)
!1917 = !DILocation(line: 1071, column: 9, scope: !1916)
!1918 = !DILocation(line: 1072, column: 13, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !135, line: 1072, column: 13)
!1920 = !DILocation(line: 1072, column: 19, scope: !1919)
!1921 = !DILocation(line: 1072, column: 13, scope: !1916)
!1922 = !DILocation(line: 1072, column: 25, scope: !1919)
!1923 = !DILocation(line: 1075, column: 17, scope: !1916)
!1924 = !DILocation(line: 1075, column: 34, scope: !1916)
!1925 = !DILocation(line: 1075, column: 10, scope: !1916)
!1926 = !DILocation(line: 1075, column: 15, scope: !1916)
!1927 = !DILocation(line: 1076, column: 12, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1916, file: !135, line: 1076, column: 12)
!1929 = !DILocation(line: 1076, column: 29, scope: !1928)
!1930 = !DILocation(line: 1076, column: 12, scope: !1916)
!1931 = !DILocation(line: 1076, column: 37, scope: !1928)
!1932 = !DILocation(line: 1076, column: 41, scope: !1928)
!1933 = !DILocation(line: 1076, column: 36, scope: !1928)
!1934 = !DILocation(line: 1077, column: 28, scope: !1916)
!1935 = !DILocation(line: 1077, column: 45, scope: !1916)
!1936 = !DILocation(line: 1077, column: 26, scope: !1916)
!1937 = !DILocation(line: 1078, column: 5, scope: !1916)
!1938 = !DILocation(line: 1078, column: 14, scope: !1849)
!1939 = !DILocation(line: 1078, column: 13, scope: !1849)
!1940 = !DILocation(line: 1078, column: 18, scope: !1849)
!1941 = distinct !{!1941, !1914, !1942, !377}
!1942 = !DILocation(line: 1078, column: 24, scope: !1849)
!1943 = !DILocation(line: 1081, column: 5, scope: !1849)
!1944 = !DILocation(line: 1082, column: 5, scope: !1849)
!1945 = !DILocation(line: 1085, column: 9, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1849, file: !135, line: 1085, column: 9)
!1947 = !DILocation(line: 1085, column: 17, scope: !1946)
!1948 = !DILocation(line: 1085, column: 31, scope: !1946)
!1949 = !DILocation(line: 1085, column: 15, scope: !1946)
!1950 = !DILocation(line: 1085, column: 9, scope: !1849)
!1951 = !DILocation(line: 1086, column: 9, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1946, file: !135, line: 1085, column: 49)
!1953 = !DILocation(line: 1090, column: 12, scope: !1849)
!1954 = !DILocation(line: 1090, column: 18, scope: !1849)
!1955 = !DILocation(line: 1090, column: 16, scope: !1849)
!1956 = !DILocation(line: 1090, column: 5, scope: !1849)
!1957 = !DILocation(line: 1091, column: 1, scope: !1849)
!1958 = distinct !DISubprogram(name: "mqtt_fixed_header_rule_violation", scope: !135, file: !135, line: 956, type: !1959, scopeLine: 956, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!754, !1852}
!1961 = !DILocalVariable(name: "fixed_header", arg: 1, scope: !1958, file: !135, line: 956, type: !1852)
!1962 = !DILocation(line: 956, column: 81, scope: !1958)
!1963 = !DILocalVariable(name: "control_type", scope: !1958, file: !135, line: 957, type: !101)
!1964 = !DILocation(line: 957, column: 13, scope: !1958)
!1965 = !DILocalVariable(name: "control_flags", scope: !1958, file: !135, line: 958, type: !101)
!1966 = !DILocation(line: 958, column: 13, scope: !1958)
!1967 = !DILocalVariable(name: "required_flags", scope: !1958, file: !135, line: 959, type: !101)
!1968 = !DILocation(line: 959, column: 13, scope: !1958)
!1969 = !DILocalVariable(name: "mask_required_flags", scope: !1958, file: !135, line: 960, type: !101)
!1970 = !DILocation(line: 960, column: 13, scope: !1958)
!1971 = !DILocation(line: 963, column: 20, scope: !1958)
!1972 = !DILocation(line: 963, column: 34, scope: !1958)
!1973 = !DILocation(line: 963, column: 18, scope: !1958)
!1974 = !DILocation(line: 964, column: 21, scope: !1958)
!1975 = !DILocation(line: 964, column: 35, scope: !1958)
!1976 = !DILocation(line: 964, column: 19, scope: !1958)
!1977 = !DILocation(line: 965, column: 61, scope: !1958)
!1978 = !DILocation(line: 965, column: 22, scope: !1958)
!1979 = !DILocation(line: 965, column: 20, scope: !1958)
!1980 = !DILocation(line: 966, column: 71, scope: !1958)
!1981 = !DILocation(line: 966, column: 27, scope: !1958)
!1982 = !DILocation(line: 966, column: 25, scope: !1958)
!1983 = !DILocation(line: 969, column: 56, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1958, file: !135, line: 969, column: 9)
!1985 = !DILocation(line: 969, column: 10, scope: !1984)
!1986 = !DILocation(line: 969, column: 9, scope: !1958)
!1987 = !DILocation(line: 970, column: 9, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !135, line: 969, column: 71)
!1989 = !DILocation(line: 974, column: 8, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1958, file: !135, line: 974, column: 8)
!1991 = !DILocation(line: 974, column: 8, scope: !1958)
!1992 = !DILocation(line: 975, column: 9, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1990, file: !135, line: 974, column: 91)
!1994 = !DILocation(line: 978, column: 5, scope: !1958)
!1995 = !DILocation(line: 979, column: 1, scope: !1958)
!1996 = distinct !DISubprogram(name: "mqtt_unpack_response", scope: !135, file: !135, line: 1694, type: !1997, scopeLine: 1694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!754, !1999, !798, !107}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!2000 = !DILocalVariable(name: "response", arg: 1, scope: !1996, file: !135, line: 1694, type: !1999)
!2001 = !DILocation(line: 1694, column: 52, scope: !1996)
!2002 = !DILocalVariable(name: "buf", arg: 2, scope: !1996, file: !135, line: 1694, type: !798)
!2003 = !DILocation(line: 1694, column: 77, scope: !1996)
!2004 = !DILocalVariable(name: "bufsz", arg: 3, scope: !1996, file: !135, line: 1694, type: !107)
!2005 = !DILocation(line: 1694, column: 89, scope: !1996)
!2006 = !DILocalVariable(name: "start", scope: !1996, file: !135, line: 1695, type: !2007)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!2008 = !DILocation(line: 1695, column: 26, scope: !1996)
!2009 = !DILocation(line: 1695, column: 34, scope: !1996)
!2010 = !DILocalVariable(name: "rv", scope: !1996, file: !135, line: 1696, type: !754)
!2011 = !DILocation(line: 1696, column: 13, scope: !1996)
!2012 = !DILocation(line: 1696, column: 43, scope: !1996)
!2013 = !DILocation(line: 1696, column: 53, scope: !1996)
!2014 = !DILocation(line: 1696, column: 58, scope: !1996)
!2015 = !DILocation(line: 1696, column: 18, scope: !1996)
!2016 = !DILocation(line: 1697, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1996, file: !135, line: 1697, column: 9)
!2018 = !DILocation(line: 1697, column: 12, scope: !2017)
!2019 = !DILocation(line: 1697, column: 9, scope: !1996)
!2020 = !DILocation(line: 1697, column: 25, scope: !2017)
!2021 = !DILocation(line: 1697, column: 18, scope: !2017)
!2022 = !DILocation(line: 1698, column: 17, scope: !2017)
!2023 = !DILocation(line: 1698, column: 14, scope: !2017)
!2024 = !DILocation(line: 1699, column: 12, scope: !1996)
!2025 = !DILocation(line: 1699, column: 22, scope: !1996)
!2026 = !DILocation(line: 1699, column: 35, scope: !1996)
!2027 = !DILocation(line: 1699, column: 5, scope: !1996)
!2028 = !DILocation(line: 1701, column: 47, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1996, file: !135, line: 1699, column: 49)
!2030 = !DILocation(line: 1701, column: 57, scope: !2029)
!2031 = !DILocation(line: 1701, column: 18, scope: !2029)
!2032 = !DILocation(line: 1701, column: 16, scope: !2029)
!2033 = !DILocation(line: 1702, column: 13, scope: !2029)
!2034 = !DILocation(line: 1704, column: 47, scope: !2029)
!2035 = !DILocation(line: 1704, column: 57, scope: !2029)
!2036 = !DILocation(line: 1704, column: 18, scope: !2029)
!2037 = !DILocation(line: 1704, column: 16, scope: !2029)
!2038 = !DILocation(line: 1705, column: 13, scope: !2029)
!2039 = !DILocation(line: 1707, column: 46, scope: !2029)
!2040 = !DILocation(line: 1707, column: 56, scope: !2029)
!2041 = !DILocation(line: 1707, column: 18, scope: !2029)
!2042 = !DILocation(line: 1707, column: 16, scope: !2029)
!2043 = !DILocation(line: 1708, column: 13, scope: !2029)
!2044 = !DILocation(line: 1710, column: 46, scope: !2029)
!2045 = !DILocation(line: 1710, column: 56, scope: !2029)
!2046 = !DILocation(line: 1710, column: 18, scope: !2029)
!2047 = !DILocation(line: 1710, column: 16, scope: !2029)
!2048 = !DILocation(line: 1711, column: 13, scope: !2029)
!2049 = !DILocation(line: 1713, column: 46, scope: !2029)
!2050 = !DILocation(line: 1713, column: 56, scope: !2029)
!2051 = !DILocation(line: 1713, column: 18, scope: !2029)
!2052 = !DILocation(line: 1713, column: 16, scope: !2029)
!2053 = !DILocation(line: 1714, column: 13, scope: !2029)
!2054 = !DILocation(line: 1716, column: 46, scope: !2029)
!2055 = !DILocation(line: 1716, column: 56, scope: !2029)
!2056 = !DILocation(line: 1716, column: 18, scope: !2029)
!2057 = !DILocation(line: 1716, column: 16, scope: !2029)
!2058 = !DILocation(line: 1717, column: 13, scope: !2029)
!2059 = !DILocation(line: 1719, column: 46, scope: !2029)
!2060 = !DILocation(line: 1719, column: 56, scope: !2029)
!2061 = !DILocation(line: 1719, column: 18, scope: !2029)
!2062 = !DILocation(line: 1719, column: 16, scope: !2029)
!2063 = !DILocation(line: 1720, column: 13, scope: !2029)
!2064 = !DILocation(line: 1722, column: 48, scope: !2029)
!2065 = !DILocation(line: 1722, column: 58, scope: !2029)
!2066 = !DILocation(line: 1722, column: 18, scope: !2029)
!2067 = !DILocation(line: 1722, column: 16, scope: !2029)
!2068 = !DILocation(line: 1723, column: 13, scope: !2029)
!2069 = !DILocation(line: 1725, column: 20, scope: !2029)
!2070 = !DILocation(line: 1725, column: 13, scope: !2029)
!2071 = !DILocation(line: 1727, column: 13, scope: !2029)
!2072 = !DILocation(line: 1730, column: 9, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1996, file: !135, line: 1730, column: 9)
!2074 = !DILocation(line: 1730, column: 12, scope: !2073)
!2075 = !DILocation(line: 1730, column: 9, scope: !1996)
!2076 = !DILocation(line: 1730, column: 24, scope: !2073)
!2077 = !DILocation(line: 1730, column: 17, scope: !2073)
!2078 = !DILocation(line: 1731, column: 12, scope: !1996)
!2079 = !DILocation(line: 1731, column: 9, scope: !1996)
!2080 = !DILocation(line: 1732, column: 12, scope: !1996)
!2081 = !DILocation(line: 1732, column: 18, scope: !1996)
!2082 = !DILocation(line: 1732, column: 16, scope: !1996)
!2083 = !DILocation(line: 1732, column: 5, scope: !1996)
!2084 = !DILocation(line: 1733, column: 1, scope: !1996)
!2085 = distinct !DISubprogram(name: "mqtt_mq_find", scope: !135, file: !135, line: 1678, type: !2086, scopeLine: 1679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!96, !1685, !45, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!2089 = !DILocalVariable(name: "mq", arg: 1, scope: !2085, file: !135, line: 1678, type: !1685)
!2090 = !DILocation(line: 1678, column: 69, scope: !2085)
!2091 = !DILocalVariable(name: "control_type", arg: 2, scope: !2085, file: !135, line: 1678, type: !45)
!2092 = !DILocation(line: 1678, column: 100, scope: !2085)
!2093 = !DILocalVariable(name: "packet_id", arg: 3, scope: !2085, file: !135, line: 1678, type: !2088)
!2094 = !DILocation(line: 1678, column: 124, scope: !2085)
!2095 = !DILocalVariable(name: "curr", scope: !2085, file: !135, line: 1680, type: !96)
!2096 = !DILocation(line: 1680, column: 33, scope: !2085)
!2097 = !DILocation(line: 1681, column: 16, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2085, file: !135, line: 1681, column: 5)
!2099 = !DILocation(line: 1681, column: 14, scope: !2098)
!2100 = !DILocation(line: 1681, column: 9, scope: !2098)
!2101 = !DILocation(line: 1681, column: 36, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !135, line: 1681, column: 5)
!2103 = !DILocation(line: 1681, column: 44, scope: !2102)
!2104 = !DILocation(line: 1681, column: 48, scope: !2102)
!2105 = !DILocation(line: 1681, column: 41, scope: !2102)
!2106 = !DILocation(line: 1681, column: 5, scope: !2098)
!2107 = !DILocation(line: 1682, column: 13, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !135, line: 1682, column: 13)
!2109 = distinct !DILexicalBlock(scope: !2102, file: !135, line: 1681, column: 68)
!2110 = !DILocation(line: 1682, column: 19, scope: !2108)
!2111 = !DILocation(line: 1682, column: 35, scope: !2108)
!2112 = !DILocation(line: 1682, column: 32, scope: !2108)
!2113 = !DILocation(line: 1682, column: 13, scope: !2109)
!2114 = !DILocation(line: 1683, column: 18, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !135, line: 1683, column: 17)
!2116 = distinct !DILexicalBlock(scope: !2108, file: !135, line: 1682, column: 49)
!2117 = !DILocation(line: 1683, column: 28, scope: !2115)
!2118 = !DILocation(line: 1683, column: 36, scope: !2115)
!2119 = !DILocation(line: 1683, column: 39, scope: !2115)
!2120 = !DILocation(line: 1683, column: 45, scope: !2115)
!2121 = !DILocation(line: 1683, column: 51, scope: !2115)
!2122 = !DILocation(line: 1683, column: 76, scope: !2115)
!2123 = !DILocation(line: 1684, column: 18, scope: !2115)
!2124 = !DILocation(line: 1684, column: 28, scope: !2115)
!2125 = !DILocation(line: 1684, column: 36, scope: !2115)
!2126 = !DILocation(line: 1684, column: 40, scope: !2115)
!2127 = !DILocation(line: 1684, column: 39, scope: !2115)
!2128 = !DILocation(line: 1684, column: 53, scope: !2115)
!2129 = !DILocation(line: 1684, column: 59, scope: !2115)
!2130 = !DILocation(line: 1684, column: 50, scope: !2115)
!2131 = !DILocation(line: 1683, column: 17, scope: !2116)
!2132 = !DILocation(line: 1685, column: 24, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2115, file: !135, line: 1684, column: 71)
!2134 = !DILocation(line: 1685, column: 17, scope: !2133)
!2135 = !DILocation(line: 1687, column: 9, scope: !2116)
!2136 = !DILocation(line: 1688, column: 5, scope: !2109)
!2137 = !DILocation(line: 1681, column: 60, scope: !2102)
!2138 = !DILocation(line: 1681, column: 5, scope: !2102)
!2139 = distinct !{!2139, !2106, !2140, !377}
!2140 = !DILocation(line: 1688, column: 5, scope: !2098)
!2141 = !DILocation(line: 1689, column: 5, scope: !2085)
!2142 = !DILocation(line: 1690, column: 1, scope: !2085)
!2143 = distinct !DISubprogram(name: "__mqtt_puback", scope: !135, file: !135, line: 296, type: !2144, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!754, !587, !120}
!2146 = !DILocalVariable(name: "client", arg: 1, scope: !2143, file: !135, line: 296, type: !587)
!2147 = !DILocation(line: 296, column: 43, scope: !2143)
!2148 = !DILocalVariable(name: "packet_id", arg: 2, scope: !2143, file: !135, line: 296, type: !120)
!2149 = !DILocation(line: 296, column: 60, scope: !2143)
!2150 = !DILocalVariable(name: "rv", scope: !2143, file: !135, line: 297, type: !754)
!2151 = !DILocation(line: 297, column: 13, scope: !2143)
!2152 = !DILocalVariable(name: "msg", scope: !2143, file: !135, line: 298, type: !96)
!2153 = !DILocation(line: 298, column: 33, scope: !2143)
!2154 = !DILocation(line: 301, column: 5, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2143, file: !135, line: 301, column: 5)
!2156 = !DILocation(line: 301, column: 5, scope: !2143)
!2157 = !DILocation(line: 301, column: 5, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2155, file: !135, line: 301, column: 5)
!2159 = !DILocation(line: 301, column: 5, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2143, file: !135, line: 301, column: 5)
!2161 = !DILocation(line: 301, column: 5, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2160, file: !135, line: 301, column: 5)
!2163 = !DILocation(line: 301, column: 5, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !135, line: 301, column: 5)
!2165 = !DILocation(line: 301, column: 5, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2164, file: !135, line: 301, column: 5)
!2167 = !DILocation(line: 301, column: 5, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2166, file: !135, line: 301, column: 5)
!2169 = !DILocation(line: 301, column: 5, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2168, file: !135, line: 301, column: 5)
!2171 = !DILocation(line: 301, column: 5, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !135, line: 301, column: 5)
!2173 = !DILocation(line: 301, column: 5, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2172, file: !135, line: 301, column: 5)
!2175 = !DILocation(line: 311, column: 5, scope: !2143)
!2176 = !DILocation(line: 311, column: 10, scope: !2143)
!2177 = !DILocation(line: 311, column: 23, scope: !2143)
!2178 = !DILocation(line: 312, column: 22, scope: !2143)
!2179 = !DILocation(line: 312, column: 5, scope: !2143)
!2180 = !DILocation(line: 312, column: 10, scope: !2143)
!2181 = !DILocation(line: 312, column: 20, scope: !2143)
!2182 = !DILocation(line: 314, column: 5, scope: !2143)
!2183 = !DILocation(line: 315, column: 1, scope: !2143)
!2184 = distinct !DISubprogram(name: "__mqtt_pubrec", scope: !135, file: !135, line: 317, type: !2144, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2185 = !DILocalVariable(name: "client", arg: 1, scope: !2184, file: !135, line: 317, type: !587)
!2186 = !DILocation(line: 317, column: 43, scope: !2184)
!2187 = !DILocalVariable(name: "packet_id", arg: 2, scope: !2184, file: !135, line: 317, type: !120)
!2188 = !DILocation(line: 317, column: 60, scope: !2184)
!2189 = !DILocalVariable(name: "rv", scope: !2184, file: !135, line: 318, type: !754)
!2190 = !DILocation(line: 318, column: 13, scope: !2184)
!2191 = !DILocalVariable(name: "msg", scope: !2184, file: !135, line: 319, type: !96)
!2192 = !DILocation(line: 319, column: 33, scope: !2184)
!2193 = !DILocation(line: 322, column: 5, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2184, file: !135, line: 322, column: 5)
!2195 = !DILocation(line: 322, column: 5, scope: !2184)
!2196 = !DILocation(line: 322, column: 5, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2194, file: !135, line: 322, column: 5)
!2198 = !DILocation(line: 322, column: 5, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2184, file: !135, line: 322, column: 5)
!2200 = !DILocation(line: 322, column: 5, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2199, file: !135, line: 322, column: 5)
!2202 = !DILocation(line: 322, column: 5, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !135, line: 322, column: 5)
!2204 = !DILocation(line: 322, column: 5, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2203, file: !135, line: 322, column: 5)
!2206 = !DILocation(line: 322, column: 5, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2205, file: !135, line: 322, column: 5)
!2208 = !DILocation(line: 322, column: 5, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2207, file: !135, line: 322, column: 5)
!2210 = !DILocation(line: 322, column: 5, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !135, line: 322, column: 5)
!2212 = !DILocation(line: 322, column: 5, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2211, file: !135, line: 322, column: 5)
!2214 = !DILocation(line: 332, column: 5, scope: !2184)
!2215 = !DILocation(line: 332, column: 10, scope: !2184)
!2216 = !DILocation(line: 332, column: 23, scope: !2184)
!2217 = !DILocation(line: 333, column: 22, scope: !2184)
!2218 = !DILocation(line: 333, column: 5, scope: !2184)
!2219 = !DILocation(line: 333, column: 10, scope: !2184)
!2220 = !DILocation(line: 333, column: 20, scope: !2184)
!2221 = !DILocation(line: 335, column: 5, scope: !2184)
!2222 = !DILocation(line: 336, column: 1, scope: !2184)
!2223 = distinct !DISubprogram(name: "__mqtt_pubrel", scope: !135, file: !135, line: 338, type: !2144, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2224 = !DILocalVariable(name: "client", arg: 1, scope: !2223, file: !135, line: 338, type: !587)
!2225 = !DILocation(line: 338, column: 43, scope: !2223)
!2226 = !DILocalVariable(name: "packet_id", arg: 2, scope: !2223, file: !135, line: 338, type: !120)
!2227 = !DILocation(line: 338, column: 60, scope: !2223)
!2228 = !DILocalVariable(name: "rv", scope: !2223, file: !135, line: 339, type: !754)
!2229 = !DILocation(line: 339, column: 13, scope: !2223)
!2230 = !DILocalVariable(name: "msg", scope: !2223, file: !135, line: 340, type: !96)
!2231 = !DILocation(line: 340, column: 33, scope: !2223)
!2232 = !DILocation(line: 343, column: 5, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2223, file: !135, line: 343, column: 5)
!2234 = !DILocation(line: 343, column: 5, scope: !2223)
!2235 = !DILocation(line: 343, column: 5, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2233, file: !135, line: 343, column: 5)
!2237 = !DILocation(line: 343, column: 5, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2223, file: !135, line: 343, column: 5)
!2239 = !DILocation(line: 343, column: 5, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2238, file: !135, line: 343, column: 5)
!2241 = !DILocation(line: 343, column: 5, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !135, line: 343, column: 5)
!2243 = !DILocation(line: 343, column: 5, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2242, file: !135, line: 343, column: 5)
!2245 = !DILocation(line: 343, column: 5, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2244, file: !135, line: 343, column: 5)
!2247 = !DILocation(line: 343, column: 5, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2246, file: !135, line: 343, column: 5)
!2249 = !DILocation(line: 343, column: 5, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2246, file: !135, line: 343, column: 5)
!2251 = !DILocation(line: 343, column: 5, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2250, file: !135, line: 343, column: 5)
!2253 = !DILocation(line: 353, column: 5, scope: !2223)
!2254 = !DILocation(line: 353, column: 10, scope: !2223)
!2255 = !DILocation(line: 353, column: 23, scope: !2223)
!2256 = !DILocation(line: 354, column: 22, scope: !2223)
!2257 = !DILocation(line: 354, column: 5, scope: !2223)
!2258 = !DILocation(line: 354, column: 10, scope: !2223)
!2259 = !DILocation(line: 354, column: 20, scope: !2223)
!2260 = !DILocation(line: 356, column: 5, scope: !2223)
!2261 = !DILocation(line: 357, column: 1, scope: !2223)
!2262 = distinct !DISubprogram(name: "__mqtt_pubcomp", scope: !135, file: !135, line: 359, type: !2144, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2263 = !DILocalVariable(name: "client", arg: 1, scope: !2262, file: !135, line: 359, type: !587)
!2264 = !DILocation(line: 359, column: 44, scope: !2262)
!2265 = !DILocalVariable(name: "packet_id", arg: 2, scope: !2262, file: !135, line: 359, type: !120)
!2266 = !DILocation(line: 359, column: 61, scope: !2262)
!2267 = !DILocalVariable(name: "rv", scope: !2262, file: !135, line: 360, type: !754)
!2268 = !DILocation(line: 360, column: 13, scope: !2262)
!2269 = !DILocalVariable(name: "msg", scope: !2262, file: !135, line: 361, type: !96)
!2270 = !DILocation(line: 361, column: 33, scope: !2262)
!2271 = !DILocation(line: 364, column: 5, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2262, file: !135, line: 364, column: 5)
!2273 = !DILocation(line: 364, column: 5, scope: !2262)
!2274 = !DILocation(line: 364, column: 5, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2272, file: !135, line: 364, column: 5)
!2276 = !DILocation(line: 364, column: 5, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2262, file: !135, line: 364, column: 5)
!2278 = !DILocation(line: 364, column: 5, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2277, file: !135, line: 364, column: 5)
!2280 = !DILocation(line: 364, column: 5, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !135, line: 364, column: 5)
!2282 = !DILocation(line: 364, column: 5, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2281, file: !135, line: 364, column: 5)
!2284 = !DILocation(line: 364, column: 5, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2283, file: !135, line: 364, column: 5)
!2286 = !DILocation(line: 364, column: 5, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2285, file: !135, line: 364, column: 5)
!2288 = !DILocation(line: 364, column: 5, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !135, line: 364, column: 5)
!2290 = !DILocation(line: 364, column: 5, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2289, file: !135, line: 364, column: 5)
!2292 = !DILocation(line: 374, column: 5, scope: !2262)
!2293 = !DILocation(line: 374, column: 10, scope: !2262)
!2294 = !DILocation(line: 374, column: 23, scope: !2262)
!2295 = !DILocation(line: 375, column: 22, scope: !2262)
!2296 = !DILocation(line: 375, column: 5, scope: !2262)
!2297 = !DILocation(line: 375, column: 10, scope: !2262)
!2298 = !DILocation(line: 375, column: 20, scope: !2262)
!2299 = !DILocation(line: 377, column: 5, scope: !2262)
!2300 = !DILocation(line: 378, column: 1, scope: !2262)
!2301 = distinct !DISubprogram(name: "mqtt_pack_pubxxx_request", scope: !135, file: !135, line: 1376, type: !2302, scopeLine: 1379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!754, !100, !107, !45, !120}
!2304 = !DILocalVariable(name: "buf", arg: 1, scope: !2301, file: !135, line: 1376, type: !100)
!2305 = !DILocation(line: 1376, column: 43, scope: !2301)
!2306 = !DILocalVariable(name: "bufsz", arg: 2, scope: !2301, file: !135, line: 1376, type: !107)
!2307 = !DILocation(line: 1376, column: 55, scope: !2301)
!2308 = !DILocalVariable(name: "control_type", arg: 3, scope: !2301, file: !135, line: 1377, type: !45)
!2309 = !DILocation(line: 1377, column: 61, scope: !2301)
!2310 = !DILocalVariable(name: "packet_id", arg: 4, scope: !2301, file: !135, line: 1378, type: !120)
!2311 = !DILocation(line: 1378, column: 43, scope: !2301)
!2312 = !DILocalVariable(name: "start", scope: !2301, file: !135, line: 1380, type: !2007)
!2313 = !DILocation(line: 1380, column: 26, scope: !2301)
!2314 = !DILocation(line: 1380, column: 34, scope: !2301)
!2315 = !DILocalVariable(name: "fixed_header", scope: !2301, file: !135, line: 1381, type: !763)
!2316 = !DILocation(line: 1381, column: 30, scope: !2301)
!2317 = !DILocalVariable(name: "rv", scope: !2301, file: !135, line: 1382, type: !754)
!2318 = !DILocation(line: 1382, column: 13, scope: !2301)
!2319 = !DILocation(line: 1383, column: 9, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2301, file: !135, line: 1383, column: 9)
!2321 = !DILocation(line: 1383, column: 13, scope: !2320)
!2322 = !DILocation(line: 1383, column: 9, scope: !2301)
!2323 = !DILocation(line: 1384, column: 9, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !135, line: 1383, column: 22)
!2325 = !DILocation(line: 1388, column: 33, scope: !2301)
!2326 = !DILocation(line: 1388, column: 18, scope: !2301)
!2327 = !DILocation(line: 1388, column: 31, scope: !2301)
!2328 = !DILocation(line: 1389, column: 9, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2301, file: !135, line: 1389, column: 9)
!2330 = !DILocation(line: 1389, column: 22, scope: !2329)
!2331 = !DILocation(line: 1389, column: 9, scope: !2301)
!2332 = !DILocation(line: 1390, column: 22, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !135, line: 1389, column: 46)
!2334 = !DILocation(line: 1390, column: 36, scope: !2333)
!2335 = !DILocation(line: 1391, column: 5, scope: !2333)
!2336 = !DILocation(line: 1392, column: 22, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2329, file: !135, line: 1391, column: 12)
!2338 = !DILocation(line: 1392, column: 36, scope: !2337)
!2339 = !DILocation(line: 1394, column: 18, scope: !2301)
!2340 = !DILocation(line: 1394, column: 35, scope: !2301)
!2341 = !DILocation(line: 1395, column: 33, scope: !2301)
!2342 = !DILocation(line: 1395, column: 38, scope: !2301)
!2343 = !DILocation(line: 1395, column: 10, scope: !2301)
!2344 = !DILocation(line: 1395, column: 8, scope: !2301)
!2345 = !DILocation(line: 1396, column: 9, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2301, file: !135, line: 1396, column: 9)
!2347 = !DILocation(line: 1396, column: 12, scope: !2346)
!2348 = !DILocation(line: 1396, column: 9, scope: !2301)
!2349 = !DILocation(line: 1397, column: 16, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !135, line: 1396, column: 18)
!2351 = !DILocation(line: 1397, column: 9, scope: !2350)
!2352 = !DILocation(line: 1399, column: 12, scope: !2301)
!2353 = !DILocation(line: 1399, column: 9, scope: !2301)
!2354 = !DILocation(line: 1400, column: 14, scope: !2301)
!2355 = !DILocation(line: 1400, column: 11, scope: !2301)
!2356 = !DILocation(line: 1402, column: 9, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2301, file: !135, line: 1402, column: 9)
!2358 = !DILocation(line: 1402, column: 30, scope: !2357)
!2359 = !DILocation(line: 1402, column: 17, scope: !2357)
!2360 = !DILocation(line: 1402, column: 15, scope: !2357)
!2361 = !DILocation(line: 1402, column: 9, scope: !2301)
!2362 = !DILocation(line: 1403, column: 9, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2357, file: !135, line: 1402, column: 48)
!2364 = !DILocation(line: 1406, column: 31, scope: !2301)
!2365 = !DILocation(line: 1406, column: 36, scope: !2301)
!2366 = !DILocation(line: 1406, column: 12, scope: !2301)
!2367 = !DILocation(line: 1406, column: 9, scope: !2301)
!2368 = !DILocation(line: 1408, column: 12, scope: !2301)
!2369 = !DILocation(line: 1408, column: 18, scope: !2301)
!2370 = !DILocation(line: 1408, column: 16, scope: !2301)
!2371 = !DILocation(line: 1408, column: 5, scope: !2301)
!2372 = !DILocation(line: 1409, column: 1, scope: !2301)
!2373 = distinct !DISubprogram(name: "__mqtt_pack_uint16", scope: !135, file: !135, line: 1736, type: !2374, scopeLine: 1737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!754, !100, !120}
!2376 = !DILocalVariable(name: "buf", arg: 1, scope: !2373, file: !135, line: 1736, type: !100)
!2377 = !DILocation(line: 1736, column: 37, scope: !2373)
!2378 = !DILocalVariable(name: "integer", arg: 2, scope: !2373, file: !135, line: 1736, type: !120)
!2379 = !DILocation(line: 1736, column: 51, scope: !2373)
!2380 = !DILocalVariable(name: "integer_htons", scope: !2373, file: !135, line: 1738, type: !120)
!2381 = !DILocation(line: 1738, column: 12, scope: !2373)
!2382 = !DILocation(line: 1738, column: 28, scope: !2373)
!2383 = !DILocation(line: 1739, column: 10, scope: !2373)
!2384 = !DILocation(line: 1739, column: 3, scope: !2373)
!2385 = !DILocation(line: 1740, column: 3, scope: !2373)
!2386 = distinct !DISubprogram(name: "mqtt_unpack_fixed_header", scope: !135, file: !135, line: 981, type: !1997, scopeLine: 981, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2387 = !DILocalVariable(name: "response", arg: 1, scope: !2386, file: !135, line: 981, type: !1999)
!2388 = !DILocation(line: 981, column: 56, scope: !2386)
!2389 = !DILocalVariable(name: "buf", arg: 2, scope: !2386, file: !135, line: 981, type: !798)
!2390 = !DILocation(line: 981, column: 81, scope: !2386)
!2391 = !DILocalVariable(name: "bufsz", arg: 3, scope: !2386, file: !135, line: 981, type: !107)
!2392 = !DILocation(line: 981, column: 93, scope: !2386)
!2393 = !DILocalVariable(name: "fixed_header", scope: !2386, file: !135, line: 982, type: !2394)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!2395 = !DILocation(line: 982, column: 31, scope: !2386)
!2396 = !DILocalVariable(name: "start", scope: !2386, file: !135, line: 983, type: !798)
!2397 = !DILocation(line: 983, column: 20, scope: !2386)
!2398 = !DILocation(line: 983, column: 28, scope: !2386)
!2399 = !DILocalVariable(name: "lshift", scope: !2386, file: !135, line: 984, type: !7)
!2400 = !DILocation(line: 984, column: 9, scope: !2386)
!2401 = !DILocalVariable(name: "errcode", scope: !2386, file: !135, line: 985, type: !754)
!2402 = !DILocation(line: 985, column: 13, scope: !2386)
!2403 = !DILocation(line: 988, column: 9, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2386, file: !135, line: 988, column: 9)
!2405 = !DILocation(line: 988, column: 18, scope: !2404)
!2406 = !DILocation(line: 988, column: 26, scope: !2404)
!2407 = !DILocation(line: 988, column: 29, scope: !2404)
!2408 = !DILocation(line: 988, column: 33, scope: !2404)
!2409 = !DILocation(line: 988, column: 9, scope: !2386)
!2410 = !DILocation(line: 989, column: 9, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2404, file: !135, line: 988, column: 42)
!2412 = !DILocation(line: 991, column: 22, scope: !2386)
!2413 = !DILocation(line: 991, column: 32, scope: !2386)
!2414 = !DILocation(line: 991, column: 18, scope: !2386)
!2415 = !DILocation(line: 994, column: 9, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2386, file: !135, line: 994, column: 9)
!2417 = !DILocation(line: 994, column: 15, scope: !2416)
!2418 = !DILocation(line: 994, column: 9, scope: !2386)
!2419 = !DILocation(line: 994, column: 21, scope: !2416)
!2420 = !DILocation(line: 997, column: 36, scope: !2386)
!2421 = !DILocation(line: 997, column: 35, scope: !2386)
!2422 = !DILocation(line: 997, column: 40, scope: !2386)
!2423 = !DILocation(line: 997, column: 5, scope: !2386)
!2424 = !DILocation(line: 997, column: 19, scope: !2386)
!2425 = !DILocation(line: 997, column: 33, scope: !2386)
!2426 = !DILocation(line: 998, column: 36, scope: !2386)
!2427 = !DILocation(line: 998, column: 35, scope: !2386)
!2428 = !DILocation(line: 998, column: 40, scope: !2386)
!2429 = !DILocation(line: 998, column: 5, scope: !2386)
!2430 = !DILocation(line: 998, column: 19, scope: !2386)
!2431 = !DILocation(line: 998, column: 33, scope: !2386)
!2432 = !DILocation(line: 1001, column: 5, scope: !2386)
!2433 = !DILocation(line: 1001, column: 19, scope: !2386)
!2434 = !DILocation(line: 1001, column: 36, scope: !2386)
!2435 = !DILocation(line: 1003, column: 12, scope: !2386)
!2436 = !DILocation(line: 1004, column: 5, scope: !2386)
!2437 = !DILocation(line: 1007, column: 12, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !135, line: 1007, column: 12)
!2439 = distinct !DILexicalBlock(scope: !2386, file: !135, line: 1004, column: 8)
!2440 = !DILocation(line: 1007, column: 19, scope: !2438)
!2441 = !DILocation(line: 1007, column: 12, scope: !2439)
!2442 = !DILocation(line: 1008, column: 13, scope: !2438)
!2443 = !DILocation(line: 1011, column: 9, scope: !2439)
!2444 = !DILocation(line: 1012, column: 9, scope: !2439)
!2445 = !DILocation(line: 1013, column: 13, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2439, file: !135, line: 1013, column: 13)
!2447 = !DILocation(line: 1013, column: 19, scope: !2446)
!2448 = !DILocation(line: 1013, column: 13, scope: !2439)
!2449 = !DILocation(line: 1013, column: 25, scope: !2446)
!2450 = !DILocation(line: 1016, column: 45, scope: !2439)
!2451 = !DILocation(line: 1016, column: 44, scope: !2439)
!2452 = !DILocation(line: 1016, column: 49, scope: !2439)
!2453 = !DILocation(line: 1016, column: 60, scope: !2439)
!2454 = !DILocation(line: 1016, column: 57, scope: !2439)
!2455 = !DILocation(line: 1016, column: 9, scope: !2439)
!2456 = !DILocation(line: 1016, column: 23, scope: !2439)
!2457 = !DILocation(line: 1016, column: 40, scope: !2439)
!2458 = !DILocation(line: 1017, column: 16, scope: !2439)
!2459 = !DILocation(line: 1018, column: 5, scope: !2439)
!2460 = !DILocation(line: 1018, column: 14, scope: !2386)
!2461 = !DILocation(line: 1018, column: 13, scope: !2386)
!2462 = !DILocation(line: 1018, column: 18, scope: !2386)
!2463 = distinct !{!2463, !2436, !2464, !377}
!2464 = !DILocation(line: 1018, column: 24, scope: !2386)
!2465 = !DILocation(line: 1021, column: 5, scope: !2386)
!2466 = !DILocation(line: 1022, column: 5, scope: !2386)
!2467 = !DILocation(line: 1025, column: 48, scope: !2386)
!2468 = !DILocation(line: 1025, column: 15, scope: !2386)
!2469 = !DILocation(line: 1025, column: 13, scope: !2386)
!2470 = !DILocation(line: 1026, column: 9, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2386, file: !135, line: 1026, column: 9)
!2472 = !DILocation(line: 1026, column: 9, scope: !2386)
!2473 = !DILocation(line: 1027, column: 16, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !135, line: 1026, column: 18)
!2475 = !DILocation(line: 1027, column: 9, scope: !2474)
!2476 = !DILocation(line: 1031, column: 9, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2386, file: !135, line: 1031, column: 9)
!2478 = !DILocation(line: 1031, column: 17, scope: !2477)
!2479 = !DILocation(line: 1031, column: 31, scope: !2477)
!2480 = !DILocation(line: 1031, column: 15, scope: !2477)
!2481 = !DILocation(line: 1031, column: 9, scope: !2386)
!2482 = !DILocation(line: 1032, column: 9, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !135, line: 1031, column: 49)
!2484 = !DILocation(line: 1036, column: 12, scope: !2386)
!2485 = !DILocation(line: 1036, column: 18, scope: !2386)
!2486 = !DILocation(line: 1036, column: 16, scope: !2386)
!2487 = !DILocation(line: 1036, column: 5, scope: !2386)
!2488 = !DILocation(line: 1037, column: 1, scope: !2386)
!2489 = distinct !DISubprogram(name: "mqtt_unpack_connack_response", scope: !135, file: !135, line: 1216, type: !2490, scopeLine: 1216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!754, !1999, !798}
!2492 = !DILocalVariable(name: "mqtt_response", arg: 1, scope: !2489, file: !135, line: 1216, type: !1999)
!2493 = !DILocation(line: 1216, column: 60, scope: !2489)
!2494 = !DILocalVariable(name: "buf", arg: 2, scope: !2489, file: !135, line: 1216, type: !798)
!2495 = !DILocation(line: 1216, column: 90, scope: !2489)
!2496 = !DILocalVariable(name: "start", scope: !2489, file: !135, line: 1217, type: !2007)
!2497 = !DILocation(line: 1217, column: 26, scope: !2489)
!2498 = !DILocation(line: 1217, column: 34, scope: !2489)
!2499 = !DILocalVariable(name: "response", scope: !2489, file: !135, line: 1218, type: !2500)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!2501 = !DILocation(line: 1218, column: 35, scope: !2489)
!2502 = !DILocation(line: 1221, column: 9, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2489, file: !135, line: 1221, column: 9)
!2504 = !DILocation(line: 1221, column: 24, scope: !2503)
!2505 = !DILocation(line: 1221, column: 37, scope: !2503)
!2506 = !DILocation(line: 1221, column: 54, scope: !2503)
!2507 = !DILocation(line: 1221, column: 9, scope: !2489)
!2508 = !DILocation(line: 1222, column: 9, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2503, file: !135, line: 1221, column: 60)
!2510 = !DILocation(line: 1225, column: 18, scope: !2489)
!2511 = !DILocation(line: 1225, column: 33, scope: !2489)
!2512 = !DILocation(line: 1225, column: 41, scope: !2489)
!2513 = !DILocation(line: 1225, column: 14, scope: !2489)
!2514 = !DILocation(line: 1227, column: 10, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2489, file: !135, line: 1227, column: 9)
!2516 = !DILocation(line: 1227, column: 9, scope: !2515)
!2517 = !DILocation(line: 1227, column: 14, scope: !2515)
!2518 = !DILocation(line: 1227, column: 9, scope: !2489)
!2519 = !DILocation(line: 1229, column: 9, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2515, file: !135, line: 1227, column: 22)
!2521 = !DILocation(line: 1231, column: 46, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2515, file: !135, line: 1230, column: 12)
!2523 = !DILocation(line: 1231, column: 42, scope: !2522)
!2524 = !DILocation(line: 1231, column: 9, scope: !2522)
!2525 = !DILocation(line: 1231, column: 19, scope: !2522)
!2526 = !DILocation(line: 1231, column: 40, scope: !2522)
!2527 = !DILocation(line: 1234, column: 10, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2489, file: !135, line: 1234, column: 9)
!2529 = !DILocation(line: 1234, column: 9, scope: !2528)
!2530 = !DILocation(line: 1234, column: 14, scope: !2528)
!2531 = !DILocation(line: 1234, column: 9, scope: !2489)
!2532 = !DILocation(line: 1236, column: 9, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !135, line: 1234, column: 20)
!2534 = !DILocation(line: 1238, column: 66, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2528, file: !135, line: 1237, column: 12)
!2536 = !DILocation(line: 1238, column: 62, scope: !2535)
!2537 = !DILocation(line: 1238, column: 33, scope: !2535)
!2538 = !DILocation(line: 1238, column: 9, scope: !2535)
!2539 = !DILocation(line: 1238, column: 19, scope: !2535)
!2540 = !DILocation(line: 1238, column: 31, scope: !2535)
!2541 = !DILocation(line: 1240, column: 12, scope: !2489)
!2542 = !DILocation(line: 1240, column: 18, scope: !2489)
!2543 = !DILocation(line: 1240, column: 16, scope: !2489)
!2544 = !DILocation(line: 1240, column: 5, scope: !2489)
!2545 = !DILocation(line: 1241, column: 1, scope: !2489)
!2546 = distinct !DISubprogram(name: "mqtt_unpack_publish_response", scope: !135, file: !135, line: 1332, type: !2490, scopeLine: 1333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2547 = !DILocalVariable(name: "mqtt_response", arg: 1, scope: !2546, file: !135, line: 1332, type: !1999)
!2548 = !DILocation(line: 1332, column: 60, scope: !2546)
!2549 = !DILocalVariable(name: "buf", arg: 2, scope: !2546, file: !135, line: 1332, type: !798)
!2550 = !DILocation(line: 1332, column: 90, scope: !2546)
!2551 = !DILocalVariable(name: "start", scope: !2546, file: !135, line: 1334, type: !2007)
!2552 = !DILocation(line: 1334, column: 26, scope: !2546)
!2553 = !DILocation(line: 1334, column: 34, scope: !2546)
!2554 = !DILocalVariable(name: "fixed_header", scope: !2546, file: !135, line: 1335, type: !2394)
!2555 = !DILocation(line: 1335, column: 31, scope: !2546)
!2556 = !DILocalVariable(name: "response", scope: !2546, file: !135, line: 1336, type: !604)
!2557 = !DILocation(line: 1336, column: 35, scope: !2546)
!2558 = !DILocation(line: 1338, column: 22, scope: !2546)
!2559 = !DILocation(line: 1338, column: 37, scope: !2546)
!2560 = !DILocation(line: 1338, column: 18, scope: !2546)
!2561 = !DILocation(line: 1339, column: 18, scope: !2546)
!2562 = !DILocation(line: 1339, column: 33, scope: !2546)
!2563 = !DILocation(line: 1339, column: 41, scope: !2546)
!2564 = !DILocation(line: 1339, column: 14, scope: !2546)
!2565 = !DILocation(line: 1342, column: 27, scope: !2546)
!2566 = !DILocation(line: 1342, column: 41, scope: !2546)
!2567 = !DILocation(line: 1342, column: 55, scope: !2546)
!2568 = !DILocation(line: 1342, column: 75, scope: !2546)
!2569 = !DILocation(line: 1342, column: 26, scope: !2546)
!2570 = !DILocation(line: 1342, column: 5, scope: !2546)
!2571 = !DILocation(line: 1342, column: 15, scope: !2546)
!2572 = !DILocation(line: 1342, column: 24, scope: !2546)
!2573 = !DILocation(line: 1343, column: 28, scope: !2546)
!2574 = !DILocation(line: 1343, column: 42, scope: !2546)
!2575 = !DILocation(line: 1343, column: 56, scope: !2546)
!2576 = !DILocation(line: 1343, column: 81, scope: !2546)
!2577 = !DILocation(line: 1343, column: 27, scope: !2546)
!2578 = !DILocation(line: 1343, column: 5, scope: !2546)
!2579 = !DILocation(line: 1343, column: 15, scope: !2546)
!2580 = !DILocation(line: 1343, column: 25, scope: !2546)
!2581 = !DILocation(line: 1344, column: 29, scope: !2546)
!2582 = !DILocation(line: 1344, column: 43, scope: !2546)
!2583 = !DILocation(line: 1344, column: 57, scope: !2546)
!2584 = !DILocation(line: 1344, column: 5, scope: !2546)
!2585 = !DILocation(line: 1344, column: 15, scope: !2546)
!2586 = !DILocation(line: 1344, column: 27, scope: !2546)
!2587 = !DILocation(line: 1347, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2546, file: !135, line: 1347, column: 9)
!2589 = !DILocation(line: 1347, column: 24, scope: !2588)
!2590 = !DILocation(line: 1347, column: 37, scope: !2588)
!2591 = !DILocation(line: 1347, column: 54, scope: !2588)
!2592 = !DILocation(line: 1347, column: 9, scope: !2546)
!2593 = !DILocation(line: 1348, column: 9, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2588, file: !135, line: 1347, column: 59)
!2595 = !DILocation(line: 1352, column: 54, scope: !2546)
!2596 = !DILocation(line: 1352, column: 33, scope: !2546)
!2597 = !DILocation(line: 1352, column: 5, scope: !2546)
!2598 = !DILocation(line: 1352, column: 15, scope: !2546)
!2599 = !DILocation(line: 1352, column: 31, scope: !2546)
!2600 = !DILocation(line: 1353, column: 9, scope: !2546)
!2601 = !DILocation(line: 1354, column: 28, scope: !2546)
!2602 = !DILocation(line: 1354, column: 5, scope: !2546)
!2603 = !DILocation(line: 1354, column: 15, scope: !2546)
!2604 = !DILocation(line: 1354, column: 26, scope: !2546)
!2605 = !DILocation(line: 1355, column: 12, scope: !2546)
!2606 = !DILocation(line: 1355, column: 22, scope: !2546)
!2607 = !DILocation(line: 1355, column: 9, scope: !2546)
!2608 = !DILocation(line: 1357, column: 9, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2546, file: !135, line: 1357, column: 9)
!2610 = !DILocation(line: 1357, column: 19, scope: !2609)
!2611 = !DILocation(line: 1357, column: 29, scope: !2609)
!2612 = !DILocation(line: 1357, column: 9, scope: !2546)
!2613 = !DILocation(line: 1358, column: 52, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2609, file: !135, line: 1357, column: 34)
!2615 = !DILocation(line: 1358, column: 31, scope: !2614)
!2616 = !DILocation(line: 1358, column: 9, scope: !2614)
!2617 = !DILocation(line: 1358, column: 19, scope: !2614)
!2618 = !DILocation(line: 1358, column: 29, scope: !2614)
!2619 = !DILocation(line: 1359, column: 13, scope: !2614)
!2620 = !DILocation(line: 1360, column: 5, scope: !2614)
!2621 = !DILocation(line: 1363, column: 37, scope: !2546)
!2622 = !DILocation(line: 1363, column: 5, scope: !2546)
!2623 = !DILocation(line: 1363, column: 15, scope: !2546)
!2624 = !DILocation(line: 1363, column: 35, scope: !2546)
!2625 = !DILocation(line: 1364, column: 9, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2546, file: !135, line: 1364, column: 9)
!2627 = !DILocation(line: 1364, column: 19, scope: !2626)
!2628 = !DILocation(line: 1364, column: 29, scope: !2626)
!2629 = !DILocation(line: 1364, column: 9, scope: !2546)
!2630 = !DILocation(line: 1365, column: 46, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !135, line: 1364, column: 35)
!2632 = !DILocation(line: 1365, column: 60, scope: !2631)
!2633 = !DILocation(line: 1365, column: 79, scope: !2631)
!2634 = !DILocation(line: 1365, column: 89, scope: !2631)
!2635 = !DILocation(line: 1365, column: 77, scope: !2631)
!2636 = !DILocation(line: 1365, column: 105, scope: !2631)
!2637 = !DILocation(line: 1365, column: 9, scope: !2631)
!2638 = !DILocation(line: 1365, column: 19, scope: !2631)
!2639 = !DILocation(line: 1365, column: 44, scope: !2631)
!2640 = !DILocation(line: 1366, column: 5, scope: !2631)
!2641 = !DILocation(line: 1367, column: 46, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2626, file: !135, line: 1366, column: 12)
!2643 = !DILocation(line: 1367, column: 60, scope: !2642)
!2644 = !DILocation(line: 1367, column: 79, scope: !2642)
!2645 = !DILocation(line: 1367, column: 89, scope: !2642)
!2646 = !DILocation(line: 1367, column: 77, scope: !2642)
!2647 = !DILocation(line: 1367, column: 105, scope: !2642)
!2648 = !DILocation(line: 1367, column: 9, scope: !2642)
!2649 = !DILocation(line: 1367, column: 19, scope: !2642)
!2650 = !DILocation(line: 1367, column: 44, scope: !2642)
!2651 = !DILocation(line: 1369, column: 12, scope: !2546)
!2652 = !DILocation(line: 1369, column: 22, scope: !2546)
!2653 = !DILocation(line: 1369, column: 9, scope: !2546)
!2654 = !DILocation(line: 1372, column: 12, scope: !2546)
!2655 = !DILocation(line: 1372, column: 18, scope: !2546)
!2656 = !DILocation(line: 1372, column: 16, scope: !2546)
!2657 = !DILocation(line: 1372, column: 5, scope: !2546)
!2658 = !DILocation(line: 1373, column: 1, scope: !2546)
!2659 = distinct !DISubprogram(name: "mqtt_unpack_pubxxx_response", scope: !135, file: !135, line: 1411, type: !2490, scopeLine: 1412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2660 = !DILocalVariable(name: "mqtt_response", arg: 1, scope: !2659, file: !135, line: 1411, type: !1999)
!2661 = !DILocation(line: 1411, column: 59, scope: !2659)
!2662 = !DILocalVariable(name: "buf", arg: 2, scope: !2659, file: !135, line: 1411, type: !798)
!2663 = !DILocation(line: 1411, column: 89, scope: !2659)
!2664 = !DILocalVariable(name: "start", scope: !2659, file: !135, line: 1413, type: !2007)
!2665 = !DILocation(line: 1413, column: 26, scope: !2659)
!2666 = !DILocation(line: 1413, column: 34, scope: !2659)
!2667 = !DILocalVariable(name: "packet_id", scope: !2659, file: !135, line: 1414, type: !120)
!2668 = !DILocation(line: 1414, column: 14, scope: !2659)
!2669 = !DILocation(line: 1417, column: 9, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2659, file: !135, line: 1417, column: 9)
!2671 = !DILocation(line: 1417, column: 24, scope: !2670)
!2672 = !DILocation(line: 1417, column: 37, scope: !2670)
!2673 = !DILocation(line: 1417, column: 54, scope: !2670)
!2674 = !DILocation(line: 1417, column: 9, scope: !2659)
!2675 = !DILocation(line: 1418, column: 9, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2670, file: !135, line: 1417, column: 60)
!2677 = !DILocation(line: 1422, column: 38, scope: !2659)
!2678 = !DILocation(line: 1422, column: 17, scope: !2659)
!2679 = !DILocation(line: 1422, column: 15, scope: !2659)
!2680 = !DILocation(line: 1423, column: 9, scope: !2659)
!2681 = !DILocation(line: 1425, column: 9, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2659, file: !135, line: 1425, column: 9)
!2683 = !DILocation(line: 1425, column: 24, scope: !2682)
!2684 = !DILocation(line: 1425, column: 37, scope: !2682)
!2685 = !DILocation(line: 1425, column: 50, scope: !2682)
!2686 = !DILocation(line: 1425, column: 9, scope: !2659)
!2687 = !DILocation(line: 1426, column: 51, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2682, file: !135, line: 1425, column: 74)
!2689 = !DILocation(line: 1426, column: 9, scope: !2688)
!2690 = !DILocation(line: 1426, column: 24, scope: !2688)
!2691 = !DILocation(line: 1426, column: 32, scope: !2688)
!2692 = !DILocation(line: 1426, column: 39, scope: !2688)
!2693 = !DILocation(line: 1426, column: 49, scope: !2688)
!2694 = !DILocation(line: 1427, column: 5, scope: !2688)
!2695 = !DILocation(line: 1427, column: 16, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2682, file: !135, line: 1427, column: 16)
!2697 = !DILocation(line: 1427, column: 31, scope: !2696)
!2698 = !DILocation(line: 1427, column: 44, scope: !2696)
!2699 = !DILocation(line: 1427, column: 57, scope: !2696)
!2700 = !DILocation(line: 1427, column: 16, scope: !2682)
!2701 = !DILocation(line: 1428, column: 51, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2696, file: !135, line: 1427, column: 81)
!2703 = !DILocation(line: 1428, column: 9, scope: !2702)
!2704 = !DILocation(line: 1428, column: 24, scope: !2702)
!2705 = !DILocation(line: 1428, column: 32, scope: !2702)
!2706 = !DILocation(line: 1428, column: 39, scope: !2702)
!2707 = !DILocation(line: 1428, column: 49, scope: !2702)
!2708 = !DILocation(line: 1429, column: 5, scope: !2702)
!2709 = !DILocation(line: 1429, column: 16, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2696, file: !135, line: 1429, column: 16)
!2711 = !DILocation(line: 1429, column: 31, scope: !2710)
!2712 = !DILocation(line: 1429, column: 44, scope: !2710)
!2713 = !DILocation(line: 1429, column: 57, scope: !2710)
!2714 = !DILocation(line: 1429, column: 16, scope: !2696)
!2715 = !DILocation(line: 1430, column: 51, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2710, file: !135, line: 1429, column: 81)
!2717 = !DILocation(line: 1430, column: 9, scope: !2716)
!2718 = !DILocation(line: 1430, column: 24, scope: !2716)
!2719 = !DILocation(line: 1430, column: 32, scope: !2716)
!2720 = !DILocation(line: 1430, column: 39, scope: !2716)
!2721 = !DILocation(line: 1430, column: 49, scope: !2716)
!2722 = !DILocation(line: 1431, column: 5, scope: !2716)
!2723 = !DILocation(line: 1432, column: 52, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2710, file: !135, line: 1431, column: 12)
!2725 = !DILocation(line: 1432, column: 9, scope: !2724)
!2726 = !DILocation(line: 1432, column: 24, scope: !2724)
!2727 = !DILocation(line: 1432, column: 32, scope: !2724)
!2728 = !DILocation(line: 1432, column: 40, scope: !2724)
!2729 = !DILocation(line: 1432, column: 50, scope: !2724)
!2730 = !DILocation(line: 1435, column: 12, scope: !2659)
!2731 = !DILocation(line: 1435, column: 18, scope: !2659)
!2732 = !DILocation(line: 1435, column: 16, scope: !2659)
!2733 = !DILocation(line: 1435, column: 5, scope: !2659)
!2734 = !DILocation(line: 1436, column: 1, scope: !2659)
!2735 = distinct !DISubprogram(name: "mqtt_unpack_suback_response", scope: !135, file: !135, line: 1439, type: !2490, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2736 = !DILocalVariable(name: "mqtt_response", arg: 1, scope: !2735, file: !135, line: 1439, type: !1999)
!2737 = !DILocation(line: 1439, column: 60, scope: !2735)
!2738 = !DILocalVariable(name: "buf", arg: 2, scope: !2735, file: !135, line: 1439, type: !798)
!2739 = !DILocation(line: 1439, column: 90, scope: !2735)
!2740 = !DILocalVariable(name: "start", scope: !2735, file: !135, line: 1440, type: !2007)
!2741 = !DILocation(line: 1440, column: 26, scope: !2735)
!2742 = !DILocation(line: 1440, column: 34, scope: !2735)
!2743 = !DILocalVariable(name: "remaining_length", scope: !2735, file: !135, line: 1441, type: !130)
!2744 = !DILocation(line: 1441, column: 14, scope: !2735)
!2745 = !DILocation(line: 1441, column: 33, scope: !2735)
!2746 = !DILocation(line: 1441, column: 48, scope: !2735)
!2747 = !DILocation(line: 1441, column: 61, scope: !2735)
!2748 = !DILocation(line: 1444, column: 9, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2735, file: !135, line: 1444, column: 9)
!2750 = !DILocation(line: 1444, column: 26, scope: !2749)
!2751 = !DILocation(line: 1444, column: 9, scope: !2735)
!2752 = !DILocation(line: 1445, column: 9, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2749, file: !135, line: 1444, column: 31)
!2754 = !DILocation(line: 1449, column: 68, scope: !2735)
!2755 = !DILocation(line: 1449, column: 47, scope: !2735)
!2756 = !DILocation(line: 1449, column: 5, scope: !2735)
!2757 = !DILocation(line: 1449, column: 20, scope: !2735)
!2758 = !DILocation(line: 1449, column: 28, scope: !2735)
!2759 = !DILocation(line: 1449, column: 35, scope: !2735)
!2760 = !DILocation(line: 1449, column: 45, scope: !2735)
!2761 = !DILocation(line: 1450, column: 9, scope: !2735)
!2762 = !DILocation(line: 1451, column: 22, scope: !2735)
!2763 = !DILocation(line: 1454, column: 63, scope: !2735)
!2764 = !DILocation(line: 1454, column: 54, scope: !2735)
!2765 = !DILocation(line: 1454, column: 5, scope: !2735)
!2766 = !DILocation(line: 1454, column: 20, scope: !2735)
!2767 = !DILocation(line: 1454, column: 28, scope: !2735)
!2768 = !DILocation(line: 1454, column: 35, scope: !2735)
!2769 = !DILocation(line: 1454, column: 52, scope: !2735)
!2770 = !DILocation(line: 1455, column: 50, scope: !2735)
!2771 = !DILocation(line: 1455, column: 5, scope: !2735)
!2772 = !DILocation(line: 1455, column: 20, scope: !2735)
!2773 = !DILocation(line: 1455, column: 28, scope: !2735)
!2774 = !DILocation(line: 1455, column: 35, scope: !2735)
!2775 = !DILocation(line: 1455, column: 48, scope: !2735)
!2776 = !DILocation(line: 1456, column: 12, scope: !2735)
!2777 = !DILocation(line: 1456, column: 9, scope: !2735)
!2778 = !DILocation(line: 1458, column: 12, scope: !2735)
!2779 = !DILocation(line: 1458, column: 18, scope: !2735)
!2780 = !DILocation(line: 1458, column: 16, scope: !2735)
!2781 = !DILocation(line: 1458, column: 5, scope: !2735)
!2782 = !DILocation(line: 1459, column: 1, scope: !2735)
!2783 = distinct !DISubprogram(name: "mqtt_unpack_unsuback_response", scope: !135, file: !135, line: 1528, type: !2490, scopeLine: 1529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2784 = !DILocalVariable(name: "mqtt_response", arg: 1, scope: !2783, file: !135, line: 1528, type: !1999)
!2785 = !DILocation(line: 1528, column: 61, scope: !2783)
!2786 = !DILocalVariable(name: "buf", arg: 2, scope: !2783, file: !135, line: 1528, type: !798)
!2787 = !DILocation(line: 1528, column: 91, scope: !2783)
!2788 = !DILocalVariable(name: "start", scope: !2783, file: !135, line: 1530, type: !2007)
!2789 = !DILocation(line: 1530, column: 26, scope: !2783)
!2790 = !DILocation(line: 1530, column: 34, scope: !2783)
!2791 = !DILocation(line: 1532, column: 9, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2783, file: !135, line: 1532, column: 9)
!2793 = !DILocation(line: 1532, column: 24, scope: !2792)
!2794 = !DILocation(line: 1532, column: 37, scope: !2792)
!2795 = !DILocation(line: 1532, column: 54, scope: !2792)
!2796 = !DILocation(line: 1532, column: 9, scope: !2783)
!2797 = !DILocation(line: 1533, column: 9, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2792, file: !135, line: 1532, column: 60)
!2799 = !DILocation(line: 1537, column: 70, scope: !2783)
!2800 = !DILocation(line: 1537, column: 49, scope: !2783)
!2801 = !DILocation(line: 1537, column: 5, scope: !2783)
!2802 = !DILocation(line: 1537, column: 20, scope: !2783)
!2803 = !DILocation(line: 1537, column: 28, scope: !2783)
!2804 = !DILocation(line: 1537, column: 37, scope: !2783)
!2805 = !DILocation(line: 1537, column: 47, scope: !2783)
!2806 = !DILocation(line: 1538, column: 9, scope: !2783)
!2807 = !DILocation(line: 1540, column: 12, scope: !2783)
!2808 = !DILocation(line: 1540, column: 18, scope: !2783)
!2809 = !DILocation(line: 1540, column: 16, scope: !2783)
!2810 = !DILocation(line: 1540, column: 5, scope: !2783)
!2811 = !DILocation(line: 1541, column: 1, scope: !2783)
!2812 = distinct !DISubprogram(name: "__mqtt_unpack_uint16", scope: !135, file: !135, line: 1743, type: !2813, scopeLine: 1744, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!120, !798}
!2815 = !DILocalVariable(name: "buf", arg: 1, scope: !2812, file: !135, line: 1743, type: !798)
!2816 = !DILocation(line: 1743, column: 46, scope: !2812)
!2817 = !DILocalVariable(name: "integer_htons", scope: !2812, file: !135, line: 1745, type: !120)
!2818 = !DILocation(line: 1745, column: 12, scope: !2812)
!2819 = !DILocation(line: 1746, column: 3, scope: !2812)
!2820 = !DILocation(line: 1746, column: 26, scope: !2812)
!2821 = !DILocation(line: 1747, column: 10, scope: !2812)
!2822 = !DILocation(line: 1747, column: 3, scope: !2812)
!2823 = distinct !DISubprogram(name: "__mqtt_next_pid", scope: !135, file: !135, line: 77, type: !2824, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!120, !587}
!2826 = !DILocalVariable(name: "client", arg: 1, scope: !2823, file: !135, line: 77, type: !587)
!2827 = !DILocation(line: 77, column: 46, scope: !2823)
!2828 = !DILocalVariable(name: "pid_exists", scope: !2823, file: !135, line: 78, type: !7)
!2829 = !DILocation(line: 78, column: 9, scope: !2823)
!2830 = !DILocation(line: 79, column: 9, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2823, file: !135, line: 79, column: 9)
!2832 = !DILocation(line: 79, column: 17, scope: !2831)
!2833 = !DILocation(line: 79, column: 26, scope: !2831)
!2834 = !DILocation(line: 79, column: 9, scope: !2823)
!2835 = !DILocation(line: 80, column: 9, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2831, file: !135, line: 79, column: 32)
!2837 = !DILocation(line: 80, column: 17, scope: !2836)
!2838 = !DILocation(line: 80, column: 26, scope: !2836)
!2839 = !DILocation(line: 81, column: 5, scope: !2836)
!2840 = !DILocation(line: 84, column: 5, scope: !2823)
!2841 = !DILocalVariable(name: "curr", scope: !2842, file: !135, line: 85, type: !96)
!2842 = distinct !DILexicalBlock(scope: !2823, file: !135, line: 84, column: 8)
!2843 = !DILocation(line: 85, column: 37, scope: !2842)
!2844 = !DILocalVariable(name: "lsb", scope: !2842, file: !135, line: 86, type: !40)
!2845 = !DILocation(line: 86, column: 18, scope: !2842)
!2846 = !DILocation(line: 86, column: 24, scope: !2842)
!2847 = !DILocation(line: 86, column: 32, scope: !2842)
!2848 = !DILocation(line: 86, column: 41, scope: !2842)
!2849 = !DILocation(line: 87, column: 10, scope: !2842)
!2850 = !DILocation(line: 87, column: 18, scope: !2842)
!2851 = !DILocation(line: 87, column: 28, scope: !2842)
!2852 = !DILocation(line: 88, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2842, file: !135, line: 88, column: 13)
!2854 = !DILocation(line: 88, column: 13, scope: !2842)
!2855 = !DILocation(line: 89, column: 13, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2853, file: !135, line: 88, column: 18)
!2857 = !DILocation(line: 89, column: 21, scope: !2856)
!2858 = !DILocation(line: 89, column: 30, scope: !2856)
!2859 = !DILocation(line: 90, column: 9, scope: !2856)
!2860 = !DILocation(line: 93, column: 20, scope: !2842)
!2861 = !DILocation(line: 94, column: 20, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2842, file: !135, line: 94, column: 9)
!2863 = !DILocation(line: 94, column: 18, scope: !2862)
!2864 = !DILocation(line: 94, column: 13, scope: !2862)
!2865 = !DILocation(line: 94, column: 51, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !135, line: 94, column: 9)
!2867 = !DILocation(line: 94, column: 59, scope: !2866)
!2868 = !DILocation(line: 94, column: 67, scope: !2866)
!2869 = !DILocation(line: 94, column: 70, scope: !2866)
!2870 = !DILocation(line: 94, column: 56, scope: !2866)
!2871 = !DILocation(line: 94, column: 9, scope: !2862)
!2872 = !DILocation(line: 95, column: 17, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !135, line: 95, column: 17)
!2874 = distinct !DILexicalBlock(scope: !2866, file: !135, line: 94, column: 90)
!2875 = !DILocation(line: 95, column: 23, scope: !2873)
!2876 = !DILocation(line: 95, column: 36, scope: !2873)
!2877 = !DILocation(line: 95, column: 44, scope: !2873)
!2878 = !DILocation(line: 95, column: 33, scope: !2873)
!2879 = !DILocation(line: 95, column: 17, scope: !2874)
!2880 = !DILocation(line: 96, column: 28, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2873, file: !135, line: 95, column: 54)
!2882 = !DILocation(line: 97, column: 17, scope: !2881)
!2883 = !DILocation(line: 99, column: 9, scope: !2874)
!2884 = !DILocation(line: 94, column: 82, scope: !2866)
!2885 = !DILocation(line: 94, column: 9, scope: !2866)
!2886 = distinct !{!2886, !2871, !2887, !377}
!2887 = !DILocation(line: 99, column: 9, scope: !2862)
!2888 = !DILocation(line: 101, column: 5, scope: !2842)
!2889 = !DILocation(line: 101, column: 13, scope: !2823)
!2890 = distinct !{!2890, !2840, !2891, !377}
!2891 = !DILocation(line: 101, column: 23, scope: !2823)
!2892 = !DILocation(line: 102, column: 12, scope: !2823)
!2893 = !DILocation(line: 102, column: 20, scope: !2823)
!2894 = !DILocation(line: 102, column: 5, scope: !2823)
!2895 = distinct !DISubprogram(name: "mqtt_init", scope: !135, file: !135, line: 105, type: !2896, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!5, !587, !123, !100, !107, !100, !107, !601}
!2898 = !DILocalVariable(name: "client", arg: 1, scope: !2895, file: !135, line: 105, type: !587)
!2899 = !DILocation(line: 105, column: 47, scope: !2895)
!2900 = !DILocalVariable(name: "sockfd", arg: 2, scope: !2895, file: !135, line: 106, type: !123)
!2901 = !DILocation(line: 106, column: 39, scope: !2895)
!2902 = !DILocalVariable(name: "sendbuf", arg: 3, scope: !2895, file: !135, line: 107, type: !100)
!2903 = !DILocation(line: 107, column: 25, scope: !2895)
!2904 = !DILocalVariable(name: "sendbufsz", arg: 4, scope: !2895, file: !135, line: 107, type: !107)
!2905 = !DILocation(line: 107, column: 41, scope: !2895)
!2906 = !DILocalVariable(name: "recvbuf", arg: 5, scope: !2895, file: !135, line: 108, type: !100)
!2907 = !DILocation(line: 108, column: 25, scope: !2895)
!2908 = !DILocalVariable(name: "recvbufsz", arg: 6, scope: !2895, file: !135, line: 108, type: !107)
!2909 = !DILocation(line: 108, column: 41, scope: !2895)
!2910 = !DILocalVariable(name: "publish_response_callback", arg: 7, scope: !2895, file: !135, line: 109, type: !601)
!2911 = !DILocation(line: 109, column: 23, scope: !2895)
!2912 = !DILocation(line: 111, column: 9, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2895, file: !135, line: 111, column: 9)
!2914 = !DILocation(line: 111, column: 16, scope: !2913)
!2915 = !DILocation(line: 111, column: 24, scope: !2913)
!2916 = !DILocation(line: 111, column: 27, scope: !2913)
!2917 = !DILocation(line: 111, column: 35, scope: !2913)
!2918 = !DILocation(line: 111, column: 43, scope: !2913)
!2919 = !DILocation(line: 111, column: 46, scope: !2913)
!2920 = !DILocation(line: 111, column: 54, scope: !2913)
!2921 = !DILocation(line: 111, column: 9, scope: !2895)
!2922 = !DILocation(line: 112, column: 9, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2913, file: !135, line: 111, column: 63)
!2924 = !DILocation(line: 116, column: 5, scope: !2895)
!2925 = !DILocation(line: 117, column: 5, scope: !2895)
!2926 = !DILocation(line: 119, column: 24, scope: !2895)
!2927 = !DILocation(line: 119, column: 5, scope: !2895)
!2928 = !DILocation(line: 119, column: 13, scope: !2895)
!2929 = !DILocation(line: 119, column: 22, scope: !2895)
!2930 = !DILocation(line: 121, column: 19, scope: !2895)
!2931 = !DILocation(line: 121, column: 27, scope: !2895)
!2932 = !DILocation(line: 121, column: 31, scope: !2895)
!2933 = !DILocation(line: 121, column: 40, scope: !2895)
!2934 = !DILocation(line: 121, column: 5, scope: !2895)
!2935 = !DILocation(line: 123, column: 37, scope: !2895)
!2936 = !DILocation(line: 123, column: 5, scope: !2895)
!2937 = !DILocation(line: 123, column: 13, scope: !2895)
!2938 = !DILocation(line: 123, column: 25, scope: !2895)
!2939 = !DILocation(line: 123, column: 35, scope: !2895)
!2940 = !DILocation(line: 124, column: 36, scope: !2895)
!2941 = !DILocation(line: 124, column: 5, scope: !2895)
!2942 = !DILocation(line: 124, column: 13, scope: !2895)
!2943 = !DILocation(line: 124, column: 25, scope: !2895)
!2944 = !DILocation(line: 124, column: 34, scope: !2895)
!2945 = !DILocation(line: 125, column: 32, scope: !2895)
!2946 = !DILocation(line: 125, column: 40, scope: !2895)
!2947 = !DILocation(line: 125, column: 52, scope: !2895)
!2948 = !DILocation(line: 125, column: 5, scope: !2895)
!2949 = !DILocation(line: 125, column: 13, scope: !2895)
!2950 = !DILocation(line: 125, column: 25, scope: !2895)
!2951 = !DILocation(line: 125, column: 30, scope: !2895)
!2952 = !DILocation(line: 126, column: 35, scope: !2895)
!2953 = !DILocation(line: 126, column: 43, scope: !2895)
!2954 = !DILocation(line: 126, column: 55, scope: !2895)
!2955 = !DILocation(line: 126, column: 5, scope: !2895)
!2956 = !DILocation(line: 126, column: 13, scope: !2895)
!2957 = !DILocation(line: 126, column: 25, scope: !2895)
!2958 = !DILocation(line: 126, column: 33, scope: !2895)
!2959 = !DILocation(line: 128, column: 5, scope: !2895)
!2960 = !DILocation(line: 128, column: 13, scope: !2895)
!2961 = !DILocation(line: 128, column: 19, scope: !2895)
!2962 = !DILocation(line: 129, column: 5, scope: !2895)
!2963 = !DILocation(line: 129, column: 13, scope: !2895)
!2964 = !DILocation(line: 129, column: 30, scope: !2895)
!2965 = !DILocation(line: 130, column: 5, scope: !2895)
!2966 = !DILocation(line: 130, column: 13, scope: !2895)
!2967 = !DILocation(line: 130, column: 32, scope: !2895)
!2968 = !DILocation(line: 131, column: 5, scope: !2895)
!2969 = !DILocation(line: 131, column: 13, scope: !2895)
!2970 = !DILocation(line: 131, column: 35, scope: !2895)
!2971 = !DILocation(line: 132, column: 5, scope: !2895)
!2972 = !DILocation(line: 132, column: 13, scope: !2895)
!2973 = !DILocation(line: 132, column: 35, scope: !2895)
!2974 = !DILocation(line: 133, column: 41, scope: !2895)
!2975 = !DILocation(line: 133, column: 5, scope: !2895)
!2976 = !DILocation(line: 133, column: 13, scope: !2895)
!2977 = !DILocation(line: 133, column: 39, scope: !2895)
!2978 = !DILocation(line: 134, column: 5, scope: !2895)
!2979 = !DILocation(line: 134, column: 13, scope: !2895)
!2980 = !DILocation(line: 134, column: 22, scope: !2895)
!2981 = !DILocation(line: 135, column: 5, scope: !2895)
!2982 = !DILocation(line: 135, column: 13, scope: !2895)
!2983 = !DILocation(line: 135, column: 25, scope: !2895)
!2984 = !DILocation(line: 137, column: 5, scope: !2895)
!2985 = !DILocation(line: 137, column: 13, scope: !2895)
!2986 = !DILocation(line: 137, column: 32, scope: !2895)
!2987 = !DILocation(line: 138, column: 5, scope: !2895)
!2988 = !DILocation(line: 138, column: 13, scope: !2895)
!2989 = !DILocation(line: 138, column: 32, scope: !2895)
!2990 = !DILocation(line: 139, column: 5, scope: !2895)
!2991 = !DILocation(line: 139, column: 13, scope: !2895)
!2992 = !DILocation(line: 139, column: 29, scope: !2895)
!2993 = !DILocation(line: 141, column: 5, scope: !2895)
!2994 = !DILocation(line: 142, column: 1, scope: !2895)
!2995 = distinct !DISubprogram(name: "mqtt_mq_init", scope: !135, file: !135, line: 1605, type: !2996, scopeLine: 1606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !1685, !95, !107}
!2998 = !DILocalVariable(name: "mq", arg: 1, scope: !2995, file: !135, line: 1605, type: !1685)
!2999 = !DILocation(line: 1605, column: 46, scope: !2995)
!3000 = !DILocalVariable(name: "buf", arg: 2, scope: !2995, file: !135, line: 1605, type: !95)
!3001 = !DILocation(line: 1605, column: 56, scope: !2995)
!3002 = !DILocalVariable(name: "bufsz", arg: 3, scope: !2995, file: !135, line: 1605, type: !107)
!3003 = !DILocation(line: 1605, column: 68, scope: !2995)
!3004 = !DILocation(line: 1607, column: 8, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2995, file: !135, line: 1607, column: 8)
!3006 = !DILocation(line: 1607, column: 12, scope: !3005)
!3007 = !DILocation(line: 1607, column: 8, scope: !2995)
!3008 = !DILocation(line: 1609, column: 25, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3005, file: !135, line: 1608, column: 5)
!3010 = !DILocation(line: 1609, column: 9, scope: !3009)
!3011 = !DILocation(line: 1609, column: 13, scope: !3009)
!3012 = !DILocation(line: 1609, column: 23, scope: !3009)
!3013 = !DILocation(line: 1610, column: 39, scope: !3009)
!3014 = !DILocation(line: 1610, column: 45, scope: !3009)
!3015 = !DILocation(line: 1610, column: 43, scope: !3009)
!3016 = !DILocation(line: 1610, column: 9, scope: !3009)
!3017 = !DILocation(line: 1610, column: 13, scope: !3009)
!3018 = !DILocation(line: 1610, column: 21, scope: !3009)
!3019 = !DILocation(line: 1611, column: 20, scope: !3009)
!3020 = !DILocation(line: 1611, column: 9, scope: !3009)
!3021 = !DILocation(line: 1611, column: 13, scope: !3009)
!3022 = !DILocation(line: 1611, column: 18, scope: !3009)
!3023 = !DILocation(line: 1612, column: 26, scope: !3009)
!3024 = !DILocation(line: 1612, column: 30, scope: !3009)
!3025 = !DILocation(line: 1612, column: 9, scope: !3009)
!3026 = !DILocation(line: 1612, column: 13, scope: !3009)
!3027 = !DILocation(line: 1612, column: 24, scope: !3009)
!3028 = !DILocation(line: 1613, column: 23, scope: !3009)
!3029 = !DILocation(line: 1613, column: 9, scope: !3009)
!3030 = !DILocation(line: 1613, column: 13, scope: !3009)
!3031 = !DILocation(line: 1613, column: 21, scope: !3009)
!3032 = !DILocation(line: 1614, column: 5, scope: !3009)
!3033 = !DILocation(line: 1615, column: 1, scope: !2995)
!3034 = distinct !DISubprogram(name: "mqtt_init_reconnect", scope: !135, file: !135, line: 144, type: !3035, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !587, !619, !95, !601}
!3037 = !DILocalVariable(name: "client", arg: 1, scope: !3034, file: !135, line: 144, type: !587)
!3038 = !DILocation(line: 144, column: 46, scope: !3034)
!3039 = !DILocalVariable(name: "reconnect", arg: 2, scope: !3034, file: !135, line: 145, type: !619)
!3040 = !DILocation(line: 145, column: 33, scope: !3034)
!3041 = !DILocalVariable(name: "reconnect_state", arg: 3, scope: !3034, file: !135, line: 146, type: !95)
!3042 = !DILocation(line: 146, column: 32, scope: !3034)
!3043 = !DILocalVariable(name: "publish_response_callback", arg: 4, scope: !3034, file: !135, line: 147, type: !601)
!3044 = !DILocation(line: 147, column: 33, scope: !3034)
!3045 = !DILocation(line: 150, column: 5, scope: !3034)
!3046 = !DILocation(line: 152, column: 5, scope: !3034)
!3047 = !DILocation(line: 152, column: 13, scope: !3034)
!3048 = !DILocation(line: 152, column: 22, scope: !3034)
!3049 = !DILocation(line: 154, column: 19, scope: !3034)
!3050 = !DILocation(line: 154, column: 27, scope: !3034)
!3051 = !DILocation(line: 154, column: 5, scope: !3034)
!3052 = !DILocation(line: 156, column: 5, scope: !3034)
!3053 = !DILocation(line: 156, column: 13, scope: !3034)
!3054 = !DILocation(line: 156, column: 25, scope: !3034)
!3055 = !DILocation(line: 156, column: 35, scope: !3034)
!3056 = !DILocation(line: 157, column: 5, scope: !3034)
!3057 = !DILocation(line: 157, column: 13, scope: !3034)
!3058 = !DILocation(line: 157, column: 25, scope: !3034)
!3059 = !DILocation(line: 157, column: 34, scope: !3034)
!3060 = !DILocation(line: 158, column: 5, scope: !3034)
!3061 = !DILocation(line: 158, column: 13, scope: !3034)
!3062 = !DILocation(line: 158, column: 25, scope: !3034)
!3063 = !DILocation(line: 158, column: 30, scope: !3034)
!3064 = !DILocation(line: 159, column: 5, scope: !3034)
!3065 = !DILocation(line: 159, column: 13, scope: !3034)
!3066 = !DILocation(line: 159, column: 25, scope: !3034)
!3067 = !DILocation(line: 159, column: 33, scope: !3034)
!3068 = !DILocation(line: 161, column: 5, scope: !3034)
!3069 = !DILocation(line: 161, column: 13, scope: !3034)
!3070 = !DILocation(line: 161, column: 19, scope: !3034)
!3071 = !DILocation(line: 162, column: 5, scope: !3034)
!3072 = !DILocation(line: 162, column: 13, scope: !3034)
!3073 = !DILocation(line: 162, column: 30, scope: !3034)
!3074 = !DILocation(line: 163, column: 5, scope: !3034)
!3075 = !DILocation(line: 163, column: 13, scope: !3034)
!3076 = !DILocation(line: 163, column: 32, scope: !3034)
!3077 = !DILocation(line: 164, column: 5, scope: !3034)
!3078 = !DILocation(line: 164, column: 13, scope: !3034)
!3079 = !DILocation(line: 164, column: 35, scope: !3034)
!3080 = !DILocation(line: 165, column: 5, scope: !3034)
!3081 = !DILocation(line: 165, column: 13, scope: !3034)
!3082 = !DILocation(line: 165, column: 35, scope: !3034)
!3083 = !DILocation(line: 166, column: 41, scope: !3034)
!3084 = !DILocation(line: 166, column: 5, scope: !3034)
!3085 = !DILocation(line: 166, column: 13, scope: !3034)
!3086 = !DILocation(line: 166, column: 39, scope: !3034)
!3087 = !DILocation(line: 167, column: 5, scope: !3034)
!3088 = !DILocation(line: 167, column: 13, scope: !3034)
!3089 = !DILocation(line: 167, column: 25, scope: !3034)
!3090 = !DILocation(line: 169, column: 5, scope: !3034)
!3091 = !DILocation(line: 169, column: 13, scope: !3034)
!3092 = !DILocation(line: 169, column: 32, scope: !3034)
!3093 = !DILocation(line: 170, column: 34, scope: !3034)
!3094 = !DILocation(line: 170, column: 5, scope: !3034)
!3095 = !DILocation(line: 170, column: 13, scope: !3034)
!3096 = !DILocation(line: 170, column: 32, scope: !3034)
!3097 = !DILocation(line: 171, column: 31, scope: !3034)
!3098 = !DILocation(line: 171, column: 5, scope: !3034)
!3099 = !DILocation(line: 171, column: 13, scope: !3034)
!3100 = !DILocation(line: 171, column: 29, scope: !3034)
!3101 = !DILocation(line: 172, column: 1, scope: !3034)
!3102 = distinct !DISubprogram(name: "mqtt_reinit", scope: !135, file: !135, line: 174, type: !3103, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !587, !123, !100, !107, !100, !107}
!3105 = !DILocalVariable(name: "client", arg: 1, scope: !3102, file: !135, line: 174, type: !587)
!3106 = !DILocation(line: 174, column: 38, scope: !3102)
!3107 = !DILocalVariable(name: "socketfd", arg: 2, scope: !3102, file: !135, line: 175, type: !123)
!3108 = !DILocation(line: 175, column: 41, scope: !3102)
!3109 = !DILocalVariable(name: "sendbuf", arg: 3, scope: !3102, file: !135, line: 176, type: !100)
!3110 = !DILocation(line: 176, column: 27, scope: !3102)
!3111 = !DILocalVariable(name: "sendbufsz", arg: 4, scope: !3102, file: !135, line: 176, type: !107)
!3112 = !DILocation(line: 176, column: 43, scope: !3102)
!3113 = !DILocalVariable(name: "recvbuf", arg: 5, scope: !3102, file: !135, line: 177, type: !100)
!3114 = !DILocation(line: 177, column: 27, scope: !3102)
!3115 = !DILocalVariable(name: "recvbufsz", arg: 6, scope: !3102, file: !135, line: 177, type: !107)
!3116 = !DILocation(line: 177, column: 43, scope: !3102)
!3117 = !DILocation(line: 179, column: 5, scope: !3102)
!3118 = !DILocation(line: 179, column: 13, scope: !3102)
!3119 = !DILocation(line: 179, column: 19, scope: !3102)
!3120 = !DILocation(line: 180, column: 24, scope: !3102)
!3121 = !DILocation(line: 180, column: 5, scope: !3102)
!3122 = !DILocation(line: 180, column: 13, scope: !3102)
!3123 = !DILocation(line: 180, column: 22, scope: !3102)
!3124 = !DILocation(line: 182, column: 19, scope: !3102)
!3125 = !DILocation(line: 182, column: 27, scope: !3102)
!3126 = !DILocation(line: 182, column: 31, scope: !3102)
!3127 = !DILocation(line: 182, column: 40, scope: !3102)
!3128 = !DILocation(line: 182, column: 5, scope: !3102)
!3129 = !DILocation(line: 184, column: 37, scope: !3102)
!3130 = !DILocation(line: 184, column: 5, scope: !3102)
!3131 = !DILocation(line: 184, column: 13, scope: !3102)
!3132 = !DILocation(line: 184, column: 25, scope: !3102)
!3133 = !DILocation(line: 184, column: 35, scope: !3102)
!3134 = !DILocation(line: 185, column: 36, scope: !3102)
!3135 = !DILocation(line: 185, column: 5, scope: !3102)
!3136 = !DILocation(line: 185, column: 13, scope: !3102)
!3137 = !DILocation(line: 185, column: 25, scope: !3102)
!3138 = !DILocation(line: 185, column: 34, scope: !3102)
!3139 = !DILocation(line: 186, column: 32, scope: !3102)
!3140 = !DILocation(line: 186, column: 40, scope: !3102)
!3141 = !DILocation(line: 186, column: 52, scope: !3102)
!3142 = !DILocation(line: 186, column: 5, scope: !3102)
!3143 = !DILocation(line: 186, column: 13, scope: !3102)
!3144 = !DILocation(line: 186, column: 25, scope: !3102)
!3145 = !DILocation(line: 186, column: 30, scope: !3102)
!3146 = !DILocation(line: 187, column: 35, scope: !3102)
!3147 = !DILocation(line: 187, column: 43, scope: !3102)
!3148 = !DILocation(line: 187, column: 55, scope: !3102)
!3149 = !DILocation(line: 187, column: 5, scope: !3102)
!3150 = !DILocation(line: 187, column: 13, scope: !3102)
!3151 = !DILocation(line: 187, column: 25, scope: !3102)
!3152 = !DILocation(line: 187, column: 33, scope: !3102)
!3153 = !DILocation(line: 188, column: 1, scope: !3102)
!3154 = distinct !DISubprogram(name: "mqtt_connect", scope: !135, file: !135, line: 224, type: !3155, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!5, !587, !124, !124, !191, !107, !124, !124, !101, !120}
!3157 = !DILocalVariable(name: "client", arg: 1, scope: !3154, file: !135, line: 224, type: !587)
!3158 = !DILocation(line: 224, column: 50, scope: !3154)
!3159 = !DILocalVariable(name: "client_id", arg: 2, scope: !3154, file: !135, line: 225, type: !124)
!3160 = !DILocation(line: 225, column: 34, scope: !3154)
!3161 = !DILocalVariable(name: "will_topic", arg: 3, scope: !3154, file: !135, line: 226, type: !124)
!3162 = !DILocation(line: 226, column: 34, scope: !3154)
!3163 = !DILocalVariable(name: "will_message", arg: 4, scope: !3154, file: !135, line: 227, type: !191)
!3164 = !DILocation(line: 227, column: 34, scope: !3154)
!3165 = !DILocalVariable(name: "will_message_size", arg: 5, scope: !3154, file: !135, line: 228, type: !107)
!3166 = !DILocation(line: 228, column: 29, scope: !3154)
!3167 = !DILocalVariable(name: "user_name", arg: 6, scope: !3154, file: !135, line: 229, type: !124)
!3168 = !DILocation(line: 229, column: 34, scope: !3154)
!3169 = !DILocalVariable(name: "password", arg: 7, scope: !3154, file: !135, line: 230, type: !124)
!3170 = !DILocation(line: 230, column: 34, scope: !3154)
!3171 = !DILocalVariable(name: "connect_flags", arg: 8, scope: !3154, file: !135, line: 231, type: !101)
!3172 = !DILocation(line: 231, column: 30, scope: !3154)
!3173 = !DILocalVariable(name: "keep_alive", arg: 9, scope: !3154, file: !135, line: 232, type: !120)
!3174 = !DILocation(line: 232, column: 31, scope: !3154)
!3175 = !DILocalVariable(name: "rv", scope: !3154, file: !135, line: 234, type: !754)
!3176 = !DILocation(line: 234, column: 13, scope: !3154)
!3177 = !DILocalVariable(name: "msg", scope: !3154, file: !135, line: 235, type: !96)
!3178 = !DILocation(line: 235, column: 33, scope: !3154)
!3179 = !DILocation(line: 240, column: 26, scope: !3154)
!3180 = !DILocation(line: 240, column: 5, scope: !3154)
!3181 = !DILocation(line: 240, column: 13, scope: !3154)
!3182 = !DILocation(line: 240, column: 24, scope: !3154)
!3183 = !DILocation(line: 241, column: 9, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3154, file: !135, line: 241, column: 9)
!3185 = !DILocation(line: 241, column: 17, scope: !3184)
!3186 = !DILocation(line: 241, column: 23, scope: !3184)
!3187 = !DILocation(line: 241, column: 9, scope: !3154)
!3188 = !DILocation(line: 242, column: 9, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3184, file: !135, line: 241, column: 57)
!3190 = !DILocation(line: 242, column: 17, scope: !3189)
!3191 = !DILocation(line: 242, column: 23, scope: !3189)
!3192 = !DILocation(line: 243, column: 5, scope: !3189)
!3193 = !DILocation(line: 246, column: 5, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3154, file: !135, line: 246, column: 5)
!3195 = !DILocation(line: 246, column: 5, scope: !3154)
!3196 = !DILocation(line: 246, column: 5, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !135, line: 246, column: 5)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !135, line: 246, column: 5)
!3199 = !DILocation(line: 246, column: 5, scope: !3198)
!3200 = !DILocation(line: 246, column: 5, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3154, file: !135, line: 246, column: 5)
!3202 = !DILocation(line: 246, column: 5, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3201, file: !135, line: 246, column: 5)
!3204 = !DILocation(line: 246, column: 5, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3203, file: !135, line: 246, column: 5)
!3206 = !DILocation(line: 246, column: 5, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3201, file: !135, line: 246, column: 5)
!3208 = !DILocation(line: 246, column: 5, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3207, file: !135, line: 246, column: 5)
!3210 = !DILocation(line: 246, column: 5, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3209, file: !135, line: 246, column: 5)
!3212 = !DILocation(line: 246, column: 5, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3211, file: !135, line: 246, column: 5)
!3214 = !DILocation(line: 246, column: 5, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3213, file: !135, line: 246, column: 5)
!3216 = !DILocation(line: 246, column: 5, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3211, file: !135, line: 246, column: 5)
!3218 = !DILocation(line: 246, column: 5, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3217, file: !135, line: 246, column: 5)
!3220 = !DILocation(line: 246, column: 5, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3219, file: !135, line: 246, column: 5)
!3222 = !DILocation(line: 256, column: 5, scope: !3154)
!3223 = !DILocation(line: 256, column: 10, scope: !3154)
!3224 = !DILocation(line: 256, column: 23, scope: !3154)
!3225 = !DILocation(line: 258, column: 5, scope: !3154)
!3226 = !DILocation(line: 259, column: 5, scope: !3154)
!3227 = !DILocation(line: 260, column: 1, scope: !3154)
!3228 = distinct !DISubprogram(name: "mqtt_pack_connection_request", scope: !135, file: !135, line: 1094, type: !3229, scopeLine: 1103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!754, !100, !107, !124, !124, !191, !107, !124, !124, !101, !120}
!3231 = !DILocalVariable(name: "buf", arg: 1, scope: !3228, file: !135, line: 1094, type: !100)
!3232 = !DILocation(line: 1094, column: 47, scope: !3228)
!3233 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3228, file: !135, line: 1094, type: !107)
!3234 = !DILocation(line: 1094, column: 59, scope: !3228)
!3235 = !DILocalVariable(name: "client_id", arg: 3, scope: !3228, file: !135, line: 1095, type: !124)
!3236 = !DILocation(line: 1095, column: 50, scope: !3228)
!3237 = !DILocalVariable(name: "will_topic", arg: 4, scope: !3228, file: !135, line: 1096, type: !124)
!3238 = !DILocation(line: 1096, column: 50, scope: !3228)
!3239 = !DILocalVariable(name: "will_message", arg: 5, scope: !3228, file: !135, line: 1097, type: !191)
!3240 = !DILocation(line: 1097, column: 50, scope: !3228)
!3241 = !DILocalVariable(name: "will_message_size", arg: 6, scope: !3228, file: !135, line: 1098, type: !107)
!3242 = !DILocation(line: 1098, column: 45, scope: !3228)
!3243 = !DILocalVariable(name: "user_name", arg: 7, scope: !3228, file: !135, line: 1099, type: !124)
!3244 = !DILocation(line: 1099, column: 50, scope: !3228)
!3245 = !DILocalVariable(name: "password", arg: 8, scope: !3228, file: !135, line: 1100, type: !124)
!3246 = !DILocation(line: 1100, column: 50, scope: !3228)
!3247 = !DILocalVariable(name: "connect_flags", arg: 9, scope: !3228, file: !135, line: 1101, type: !101)
!3248 = !DILocation(line: 1101, column: 46, scope: !3228)
!3249 = !DILocalVariable(name: "keep_alive", arg: 10, scope: !3228, file: !135, line: 1102, type: !120)
!3250 = !DILocation(line: 1102, column: 47, scope: !3228)
!3251 = !DILocalVariable(name: "fixed_header", scope: !3228, file: !135, line: 1104, type: !763)
!3252 = !DILocation(line: 1104, column: 30, scope: !3228)
!3253 = !DILocalVariable(name: "remaining_length", scope: !3228, file: !135, line: 1105, type: !107)
!3254 = !DILocation(line: 1105, column: 12, scope: !3228)
!3255 = !DILocalVariable(name: "start", scope: !3228, file: !135, line: 1106, type: !2007)
!3256 = !DILocation(line: 1106, column: 26, scope: !3228)
!3257 = !DILocation(line: 1106, column: 34, scope: !3228)
!3258 = !DILocalVariable(name: "rv", scope: !3228, file: !135, line: 1107, type: !754)
!3259 = !DILocation(line: 1107, column: 13, scope: !3228)
!3260 = !DILocation(line: 1110, column: 18, scope: !3228)
!3261 = !DILocation(line: 1110, column: 31, scope: !3228)
!3262 = !DILocation(line: 1111, column: 18, scope: !3228)
!3263 = !DILocation(line: 1111, column: 32, scope: !3228)
!3264 = !DILocation(line: 1114, column: 21, scope: !3228)
!3265 = !DILocation(line: 1114, column: 35, scope: !3228)
!3266 = !DILocation(line: 1114, column: 19, scope: !3228)
!3267 = !DILocation(line: 1115, column: 22, scope: !3228)
!3268 = !DILocation(line: 1117, column: 9, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3228, file: !135, line: 1117, column: 9)
!3270 = !DILocation(line: 1117, column: 19, scope: !3269)
!3271 = !DILocation(line: 1117, column: 9, scope: !3228)
!3272 = !DILocation(line: 1118, column: 19, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3269, file: !135, line: 1117, column: 28)
!3274 = !DILocation(line: 1119, column: 5, scope: !3273)
!3275 = !DILocation(line: 1121, column: 9, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3228, file: !135, line: 1121, column: 9)
!3277 = !DILocation(line: 1121, column: 22, scope: !3276)
!3278 = !DILocation(line: 1121, column: 30, scope: !3276)
!3279 = !DILocation(line: 1121, column: 35, scope: !3276)
!3280 = !DILocation(line: 1121, column: 49, scope: !3276)
!3281 = !DILocation(line: 1121, column: 9, scope: !3228)
!3282 = !DILocation(line: 1122, column: 9, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3276, file: !135, line: 1121, column: 80)
!3284 = !DILocation(line: 1125, column: 25, scope: !3228)
!3285 = !DILocation(line: 1125, column: 22, scope: !3228)
!3286 = !DILocation(line: 1127, column: 9, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3228, file: !135, line: 1127, column: 9)
!3288 = !DILocation(line: 1127, column: 20, scope: !3287)
!3289 = !DILocation(line: 1127, column: 9, scope: !3228)
!3290 = !DILocalVariable(name: "temp", scope: !3291, file: !135, line: 1128, type: !101)
!3291 = distinct !DILexicalBlock(scope: !3287, file: !135, line: 1127, column: 29)
!3292 = !DILocation(line: 1128, column: 17, scope: !3291)
!3293 = !DILocation(line: 1130, column: 23, scope: !3291)
!3294 = !DILocation(line: 1131, column: 29, scope: !3291)
!3295 = !DILocation(line: 1131, column: 26, scope: !3291)
!3296 = !DILocation(line: 1133, column: 13, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3291, file: !135, line: 1133, column: 13)
!3298 = !DILocation(line: 1133, column: 26, scope: !3297)
!3299 = !DILocation(line: 1133, column: 13, scope: !3291)
!3300 = !DILocation(line: 1135, column: 13, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3297, file: !135, line: 1133, column: 35)
!3302 = !DILocation(line: 1137, column: 33, scope: !3291)
!3303 = !DILocation(line: 1137, column: 31, scope: !3291)
!3304 = !DILocation(line: 1137, column: 26, scope: !3291)
!3305 = !DILocation(line: 1140, column: 16, scope: !3291)
!3306 = !DILocation(line: 1140, column: 30, scope: !3291)
!3307 = !DILocation(line: 1140, column: 14, scope: !3291)
!3308 = !DILocation(line: 1141, column: 13, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3291, file: !135, line: 1141, column: 13)
!3310 = !DILocation(line: 1141, column: 18, scope: !3309)
!3311 = !DILocation(line: 1141, column: 13, scope: !3291)
!3312 = !DILocation(line: 1143, column: 13, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3309, file: !135, line: 1141, column: 27)
!3314 = !DILocation(line: 1145, column: 5, scope: !3291)
!3315 = !DILocation(line: 1147, column: 23, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3287, file: !135, line: 1145, column: 12)
!3317 = !DILocation(line: 1148, column: 23, scope: !3316)
!3318 = !DILocation(line: 1149, column: 23, scope: !3316)
!3319 = !DILocation(line: 1152, column: 9, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3228, file: !135, line: 1152, column: 9)
!3321 = !DILocation(line: 1152, column: 19, scope: !3320)
!3322 = !DILocation(line: 1152, column: 9, scope: !3228)
!3323 = !DILocation(line: 1154, column: 23, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3320, file: !135, line: 1152, column: 28)
!3325 = !DILocation(line: 1155, column: 29, scope: !3324)
!3326 = !DILocation(line: 1155, column: 26, scope: !3324)
!3327 = !DILocation(line: 1156, column: 5, scope: !3324)
!3328 = !DILocation(line: 1157, column: 23, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3320, file: !135, line: 1156, column: 12)
!3330 = !DILocation(line: 1160, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3228, file: !135, line: 1160, column: 9)
!3332 = !DILocation(line: 1160, column: 18, scope: !3331)
!3333 = !DILocation(line: 1160, column: 9, scope: !3228)
!3334 = !DILocation(line: 1162, column: 23, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3331, file: !135, line: 1160, column: 27)
!3336 = !DILocation(line: 1163, column: 29, scope: !3335)
!3337 = !DILocation(line: 1163, column: 26, scope: !3335)
!3338 = !DILocation(line: 1164, column: 5, scope: !3335)
!3339 = !DILocation(line: 1165, column: 23, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3331, file: !135, line: 1164, column: 12)
!3341 = !DILocation(line: 1169, column: 37, scope: !3228)
!3342 = !DILocation(line: 1169, column: 18, scope: !3228)
!3343 = !DILocation(line: 1169, column: 35, scope: !3228)
!3344 = !DILocation(line: 1172, column: 33, scope: !3228)
!3345 = !DILocation(line: 1172, column: 38, scope: !3228)
!3346 = !DILocation(line: 1172, column: 10, scope: !3228)
!3347 = !DILocation(line: 1172, column: 8, scope: !3228)
!3348 = !DILocation(line: 1173, column: 9, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3228, file: !135, line: 1173, column: 9)
!3350 = !DILocation(line: 1173, column: 12, scope: !3349)
!3351 = !DILocation(line: 1173, column: 9, scope: !3228)
!3352 = !DILocation(line: 1175, column: 16, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3349, file: !135, line: 1173, column: 18)
!3354 = !DILocation(line: 1175, column: 9, scope: !3353)
!3355 = !DILocation(line: 1177, column: 12, scope: !3228)
!3356 = !DILocation(line: 1177, column: 9, scope: !3228)
!3357 = !DILocation(line: 1178, column: 14, scope: !3228)
!3358 = !DILocation(line: 1178, column: 11, scope: !3228)
!3359 = !DILocation(line: 1181, column: 9, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3228, file: !135, line: 1181, column: 9)
!3361 = !DILocation(line: 1181, column: 30, scope: !3360)
!3362 = !DILocation(line: 1181, column: 17, scope: !3360)
!3363 = !DILocation(line: 1181, column: 15, scope: !3360)
!3364 = !DILocation(line: 1181, column: 9, scope: !3228)
!3365 = !DILocation(line: 1182, column: 9, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3360, file: !135, line: 1181, column: 48)
!3367 = !DILocation(line: 1186, column: 9, scope: !3228)
!3368 = !DILocation(line: 1186, column: 12, scope: !3228)
!3369 = !DILocation(line: 1187, column: 9, scope: !3228)
!3370 = !DILocation(line: 1187, column: 12, scope: !3228)
!3371 = !DILocation(line: 1188, column: 9, scope: !3228)
!3372 = !DILocation(line: 1188, column: 12, scope: !3228)
!3373 = !DILocation(line: 1189, column: 9, scope: !3228)
!3374 = !DILocation(line: 1189, column: 12, scope: !3228)
!3375 = !DILocation(line: 1190, column: 9, scope: !3228)
!3376 = !DILocation(line: 1190, column: 12, scope: !3228)
!3377 = !DILocation(line: 1191, column: 9, scope: !3228)
!3378 = !DILocation(line: 1191, column: 12, scope: !3228)
!3379 = !DILocation(line: 1192, column: 9, scope: !3228)
!3380 = !DILocation(line: 1192, column: 12, scope: !3228)
!3381 = !DILocation(line: 1193, column: 14, scope: !3228)
!3382 = !DILocation(line: 1193, column: 9, scope: !3228)
!3383 = !DILocation(line: 1193, column: 12, scope: !3228)
!3384 = !DILocation(line: 1194, column: 31, scope: !3228)
!3385 = !DILocation(line: 1194, column: 36, scope: !3228)
!3386 = !DILocation(line: 1194, column: 12, scope: !3228)
!3387 = !DILocation(line: 1194, column: 9, scope: !3228)
!3388 = !DILocation(line: 1197, column: 28, scope: !3228)
!3389 = !DILocation(line: 1197, column: 33, scope: !3228)
!3390 = !DILocation(line: 1197, column: 12, scope: !3228)
!3391 = !DILocation(line: 1197, column: 9, scope: !3228)
!3392 = !DILocation(line: 1198, column: 9, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3228, file: !135, line: 1198, column: 9)
!3394 = !DILocation(line: 1198, column: 23, scope: !3393)
!3395 = !DILocation(line: 1198, column: 9, scope: !3228)
!3396 = !DILocation(line: 1199, column: 32, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3393, file: !135, line: 1198, column: 49)
!3398 = !DILocation(line: 1199, column: 37, scope: !3397)
!3399 = !DILocation(line: 1199, column: 16, scope: !3397)
!3400 = !DILocation(line: 1199, column: 13, scope: !3397)
!3401 = !DILocation(line: 1200, column: 35, scope: !3397)
!3402 = !DILocation(line: 1200, column: 50, scope: !3397)
!3403 = !DILocation(line: 1200, column: 40, scope: !3397)
!3404 = !DILocation(line: 1200, column: 16, scope: !3397)
!3405 = !DILocation(line: 1200, column: 13, scope: !3397)
!3406 = !DILocation(line: 1201, column: 16, scope: !3397)
!3407 = !DILocation(line: 1201, column: 21, scope: !3397)
!3408 = !DILocation(line: 1201, column: 35, scope: !3397)
!3409 = !DILocation(line: 1201, column: 9, scope: !3397)
!3410 = !DILocation(line: 1202, column: 16, scope: !3397)
!3411 = !DILocation(line: 1202, column: 13, scope: !3397)
!3412 = !DILocation(line: 1203, column: 5, scope: !3397)
!3413 = !DILocation(line: 1204, column: 9, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3228, file: !135, line: 1204, column: 9)
!3415 = !DILocation(line: 1204, column: 23, scope: !3414)
!3416 = !DILocation(line: 1204, column: 9, scope: !3228)
!3417 = !DILocation(line: 1205, column: 32, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !135, line: 1204, column: 49)
!3419 = !DILocation(line: 1205, column: 37, scope: !3418)
!3420 = !DILocation(line: 1205, column: 16, scope: !3418)
!3421 = !DILocation(line: 1205, column: 13, scope: !3418)
!3422 = !DILocation(line: 1206, column: 5, scope: !3418)
!3423 = !DILocation(line: 1207, column: 9, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3228, file: !135, line: 1207, column: 9)
!3425 = !DILocation(line: 1207, column: 23, scope: !3424)
!3426 = !DILocation(line: 1207, column: 9, scope: !3228)
!3427 = !DILocation(line: 1208, column: 32, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3424, file: !135, line: 1207, column: 48)
!3429 = !DILocation(line: 1208, column: 37, scope: !3428)
!3430 = !DILocation(line: 1208, column: 16, scope: !3428)
!3431 = !DILocation(line: 1208, column: 13, scope: !3428)
!3432 = !DILocation(line: 1209, column: 5, scope: !3428)
!3433 = !DILocation(line: 1212, column: 12, scope: !3228)
!3434 = !DILocation(line: 1212, column: 18, scope: !3228)
!3435 = !DILocation(line: 1212, column: 16, scope: !3228)
!3436 = !DILocation(line: 1212, column: 5, scope: !3228)
!3437 = !DILocation(line: 1213, column: 1, scope: !3228)
!3438 = distinct !DISubprogram(name: "__mqtt_pack_str", scope: !135, file: !135, line: 1750, type: !3439, scopeLine: 1750, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!754, !100, !124}
!3441 = !DILocalVariable(name: "buf", arg: 1, scope: !3438, file: !135, line: 1750, type: !100)
!3442 = !DILocation(line: 1750, column: 34, scope: !3438)
!3443 = !DILocalVariable(name: "str", arg: 2, scope: !3438, file: !135, line: 1750, type: !124)
!3444 = !DILocation(line: 1750, column: 51, scope: !3438)
!3445 = !DILocalVariable(name: "length", scope: !3438, file: !135, line: 1751, type: !120)
!3446 = !DILocation(line: 1751, column: 14, scope: !3438)
!3447 = !DILocation(line: 1751, column: 40, scope: !3438)
!3448 = !DILocation(line: 1751, column: 33, scope: !3438)
!3449 = !DILocation(line: 1751, column: 23, scope: !3438)
!3450 = !DILocalVariable(name: "i", scope: !3438, file: !135, line: 1752, type: !7)
!3451 = !DILocation(line: 1752, column: 9, scope: !3438)
!3452 = !DILocation(line: 1754, column: 31, scope: !3438)
!3453 = !DILocation(line: 1754, column: 36, scope: !3438)
!3454 = !DILocation(line: 1754, column: 12, scope: !3438)
!3455 = !DILocation(line: 1754, column: 9, scope: !3438)
!3456 = !DILocation(line: 1757, column: 5, scope: !3438)
!3457 = !DILocation(line: 1757, column: 11, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !135, line: 1757, column: 5)
!3459 = distinct !DILexicalBlock(scope: !3438, file: !135, line: 1757, column: 5)
!3460 = !DILocation(line: 1757, column: 15, scope: !3458)
!3461 = !DILocation(line: 1757, column: 13, scope: !3458)
!3462 = !DILocation(line: 1757, column: 5, scope: !3459)
!3463 = !DILocation(line: 1758, column: 20, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3458, file: !135, line: 1757, column: 28)
!3465 = !DILocation(line: 1758, column: 24, scope: !3464)
!3466 = !DILocation(line: 1758, column: 14, scope: !3464)
!3467 = !DILocation(line: 1758, column: 18, scope: !3464)
!3468 = !DILocation(line: 1759, column: 5, scope: !3464)
!3469 = !DILocation(line: 1757, column: 23, scope: !3458)
!3470 = !DILocation(line: 1757, column: 5, scope: !3458)
!3471 = distinct !{!3471, !3462, !3472, !377}
!3472 = !DILocation(line: 1759, column: 5, scope: !3459)
!3473 = !DILocation(line: 1762, column: 12, scope: !3438)
!3474 = !DILocation(line: 1762, column: 19, scope: !3438)
!3475 = !DILocation(line: 1762, column: 5, scope: !3438)
!3476 = distinct !DISubprogram(name: "mqtt_publish", scope: !135, file: !135, line: 262, type: !3477, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!5, !587, !124, !191, !107, !101}
!3479 = !DILocalVariable(name: "client", arg: 1, scope: !3476, file: !135, line: 262, type: !587)
!3480 = !DILocation(line: 262, column: 50, scope: !3476)
!3481 = !DILocalVariable(name: "topic_name", arg: 2, scope: !3476, file: !135, line: 263, type: !124)
!3482 = !DILocation(line: 263, column: 34, scope: !3476)
!3483 = !DILocalVariable(name: "application_message", arg: 3, scope: !3476, file: !135, line: 264, type: !191)
!3484 = !DILocation(line: 264, column: 34, scope: !3476)
!3485 = !DILocalVariable(name: "application_message_size", arg: 4, scope: !3476, file: !135, line: 265, type: !107)
!3486 = !DILocation(line: 265, column: 29, scope: !3476)
!3487 = !DILocalVariable(name: "publish_flags", arg: 5, scope: !3476, file: !135, line: 266, type: !101)
!3488 = !DILocation(line: 266, column: 30, scope: !3476)
!3489 = !DILocalVariable(name: "msg", scope: !3476, file: !135, line: 268, type: !96)
!3490 = !DILocation(line: 268, column: 33, scope: !3476)
!3491 = !DILocalVariable(name: "rv", scope: !3476, file: !135, line: 269, type: !754)
!3492 = !DILocation(line: 269, column: 13, scope: !3476)
!3493 = !DILocalVariable(name: "packet_id", scope: !3476, file: !135, line: 270, type: !120)
!3494 = !DILocation(line: 270, column: 14, scope: !3476)
!3495 = !DILocation(line: 271, column: 5, scope: !3476)
!3496 = !DILocation(line: 272, column: 33, scope: !3476)
!3497 = !DILocation(line: 272, column: 17, scope: !3476)
!3498 = !DILocation(line: 272, column: 15, scope: !3476)
!3499 = !DILocation(line: 276, column: 5, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3476, file: !135, line: 276, column: 5)
!3501 = !DILocation(line: 276, column: 5, scope: !3476)
!3502 = !DILocation(line: 276, column: 5, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !135, line: 276, column: 5)
!3504 = distinct !DILexicalBlock(scope: !3500, file: !135, line: 276, column: 5)
!3505 = !DILocation(line: 276, column: 5, scope: !3504)
!3506 = !DILocation(line: 276, column: 5, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3476, file: !135, line: 276, column: 5)
!3508 = !DILocation(line: 276, column: 5, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3507, file: !135, line: 276, column: 5)
!3510 = !DILocation(line: 276, column: 5, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3509, file: !135, line: 276, column: 5)
!3512 = !DILocation(line: 276, column: 5, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3507, file: !135, line: 276, column: 5)
!3514 = !DILocation(line: 276, column: 5, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3513, file: !135, line: 276, column: 5)
!3516 = !DILocation(line: 276, column: 5, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3515, file: !135, line: 276, column: 5)
!3518 = !DILocation(line: 276, column: 5, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3517, file: !135, line: 276, column: 5)
!3520 = !DILocation(line: 276, column: 5, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3519, file: !135, line: 276, column: 5)
!3522 = !DILocation(line: 276, column: 5, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3517, file: !135, line: 276, column: 5)
!3524 = !DILocation(line: 276, column: 5, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3523, file: !135, line: 276, column: 5)
!3526 = !DILocation(line: 276, column: 5, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3525, file: !135, line: 276, column: 5)
!3528 = !DILocation(line: 289, column: 5, scope: !3476)
!3529 = !DILocation(line: 289, column: 10, scope: !3476)
!3530 = !DILocation(line: 289, column: 23, scope: !3476)
!3531 = !DILocation(line: 290, column: 22, scope: !3476)
!3532 = !DILocation(line: 290, column: 5, scope: !3476)
!3533 = !DILocation(line: 290, column: 10, scope: !3476)
!3534 = !DILocation(line: 290, column: 20, scope: !3476)
!3535 = !DILocation(line: 292, column: 5, scope: !3476)
!3536 = !DILocation(line: 293, column: 5, scope: !3476)
!3537 = !DILocation(line: 294, column: 1, scope: !3476)
!3538 = distinct !DISubprogram(name: "mqtt_pack_publish_request", scope: !135, file: !135, line: 1262, type: !3539, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!754, !100, !107, !124, !120, !191, !107, !101}
!3541 = !DILocalVariable(name: "buf", arg: 1, scope: !3538, file: !135, line: 1262, type: !100)
!3542 = !DILocation(line: 1262, column: 44, scope: !3538)
!3543 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3538, file: !135, line: 1262, type: !107)
!3544 = !DILocation(line: 1262, column: 56, scope: !3538)
!3545 = !DILocalVariable(name: "topic_name", arg: 3, scope: !3538, file: !135, line: 1263, type: !124)
!3546 = !DILocation(line: 1263, column: 47, scope: !3538)
!3547 = !DILocalVariable(name: "packet_id", arg: 4, scope: !3538, file: !135, line: 1264, type: !120)
!3548 = !DILocation(line: 1264, column: 44, scope: !3538)
!3549 = !DILocalVariable(name: "application_message", arg: 5, scope: !3538, file: !135, line: 1265, type: !191)
!3550 = !DILocation(line: 1265, column: 47, scope: !3538)
!3551 = !DILocalVariable(name: "application_message_size", arg: 6, scope: !3538, file: !135, line: 1266, type: !107)
!3552 = !DILocation(line: 1266, column: 42, scope: !3538)
!3553 = !DILocalVariable(name: "publish_flags", arg: 7, scope: !3538, file: !135, line: 1267, type: !101)
!3554 = !DILocation(line: 1267, column: 43, scope: !3538)
!3555 = !DILocalVariable(name: "start", scope: !3538, file: !135, line: 1269, type: !2007)
!3556 = !DILocation(line: 1269, column: 26, scope: !3538)
!3557 = !DILocation(line: 1269, column: 34, scope: !3538)
!3558 = !DILocalVariable(name: "rv", scope: !3538, file: !135, line: 1270, type: !754)
!3559 = !DILocation(line: 1270, column: 13, scope: !3538)
!3560 = !DILocalVariable(name: "fixed_header", scope: !3538, file: !135, line: 1271, type: !763)
!3561 = !DILocation(line: 1271, column: 30, scope: !3538)
!3562 = !DILocalVariable(name: "remaining_length", scope: !3538, file: !135, line: 1272, type: !130)
!3563 = !DILocation(line: 1272, column: 14, scope: !3538)
!3564 = !DILocalVariable(name: "inspected_qos", scope: !3538, file: !135, line: 1273, type: !101)
!3565 = !DILocation(line: 1273, column: 13, scope: !3538)
!3566 = !DILocation(line: 1276, column: 8, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3538, file: !135, line: 1276, column: 8)
!3568 = !DILocation(line: 1276, column: 12, scope: !3567)
!3569 = !DILocation(line: 1276, column: 20, scope: !3567)
!3570 = !DILocation(line: 1276, column: 23, scope: !3567)
!3571 = !DILocation(line: 1276, column: 34, scope: !3567)
!3572 = !DILocation(line: 1276, column: 8, scope: !3538)
!3573 = !DILocation(line: 1277, column: 9, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3567, file: !135, line: 1276, column: 43)
!3575 = !DILocation(line: 1281, column: 22, scope: !3538)
!3576 = !DILocation(line: 1281, column: 36, scope: !3538)
!3577 = !DILocation(line: 1281, column: 61, scope: !3538)
!3578 = !DILocation(line: 1281, column: 21, scope: !3538)
!3579 = !DILocation(line: 1281, column: 19, scope: !3538)
!3580 = !DILocation(line: 1284, column: 18, scope: !3538)
!3581 = !DILocation(line: 1284, column: 31, scope: !3538)
!3582 = !DILocation(line: 1287, column: 34, scope: !3538)
!3583 = !DILocation(line: 1287, column: 24, scope: !3538)
!3584 = !DILocation(line: 1287, column: 22, scope: !3538)
!3585 = !DILocation(line: 1288, column: 9, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3538, file: !135, line: 1288, column: 9)
!3587 = !DILocation(line: 1288, column: 23, scope: !3586)
!3588 = !DILocation(line: 1288, column: 9, scope: !3538)
!3589 = !DILocation(line: 1289, column: 26, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !135, line: 1288, column: 28)
!3591 = !DILocation(line: 1290, column: 5, scope: !3590)
!3592 = !DILocation(line: 1291, column: 35, scope: !3538)
!3593 = !DILocation(line: 1291, column: 25, scope: !3538)
!3594 = !DILocation(line: 1291, column: 22, scope: !3538)
!3595 = !DILocation(line: 1292, column: 37, scope: !3538)
!3596 = !DILocation(line: 1292, column: 18, scope: !3538)
!3597 = !DILocation(line: 1292, column: 35, scope: !3538)
!3598 = !DILocation(line: 1295, column: 9, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3538, file: !135, line: 1295, column: 9)
!3600 = !DILocation(line: 1295, column: 23, scope: !3599)
!3601 = !DILocation(line: 1295, column: 9, scope: !3538)
!3602 = !DILocation(line: 1296, column: 23, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3599, file: !135, line: 1295, column: 29)
!3604 = !DILocation(line: 1297, column: 5, scope: !3603)
!3605 = !DILocation(line: 1300, column: 9, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3538, file: !135, line: 1300, column: 9)
!3607 = !DILocation(line: 1300, column: 23, scope: !3606)
!3608 = !DILocation(line: 1300, column: 9, scope: !3538)
!3609 = !DILocation(line: 1301, column: 9, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3606, file: !135, line: 1300, column: 29)
!3611 = !DILocation(line: 1303, column: 34, scope: !3538)
!3612 = !DILocation(line: 1303, column: 18, scope: !3538)
!3613 = !DILocation(line: 1303, column: 32, scope: !3538)
!3614 = !DILocation(line: 1306, column: 33, scope: !3538)
!3615 = !DILocation(line: 1306, column: 38, scope: !3538)
!3616 = !DILocation(line: 1306, column: 10, scope: !3538)
!3617 = !DILocation(line: 1306, column: 8, scope: !3538)
!3618 = !DILocation(line: 1307, column: 9, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3538, file: !135, line: 1307, column: 9)
!3620 = !DILocation(line: 1307, column: 12, scope: !3619)
!3621 = !DILocation(line: 1307, column: 9, scope: !3538)
!3622 = !DILocation(line: 1309, column: 16, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3619, file: !135, line: 1307, column: 18)
!3624 = !DILocation(line: 1309, column: 9, scope: !3623)
!3625 = !DILocation(line: 1311, column: 12, scope: !3538)
!3626 = !DILocation(line: 1311, column: 9, scope: !3538)
!3627 = !DILocation(line: 1312, column: 14, scope: !3538)
!3628 = !DILocation(line: 1312, column: 11, scope: !3538)
!3629 = !DILocation(line: 1315, column: 9, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3538, file: !135, line: 1315, column: 9)
!3631 = !DILocation(line: 1315, column: 17, scope: !3630)
!3632 = !DILocation(line: 1315, column: 15, scope: !3630)
!3633 = !DILocation(line: 1315, column: 9, scope: !3538)
!3634 = !DILocation(line: 1316, column: 9, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3630, file: !135, line: 1315, column: 35)
!3636 = !DILocation(line: 1320, column: 28, scope: !3538)
!3637 = !DILocation(line: 1320, column: 33, scope: !3538)
!3638 = !DILocation(line: 1320, column: 12, scope: !3538)
!3639 = !DILocation(line: 1320, column: 9, scope: !3538)
!3640 = !DILocation(line: 1321, column: 9, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3538, file: !135, line: 1321, column: 9)
!3642 = !DILocation(line: 1321, column: 23, scope: !3641)
!3643 = !DILocation(line: 1321, column: 9, scope: !3538)
!3644 = !DILocation(line: 1322, column: 35, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !135, line: 1321, column: 28)
!3646 = !DILocation(line: 1322, column: 40, scope: !3645)
!3647 = !DILocation(line: 1322, column: 16, scope: !3645)
!3648 = !DILocation(line: 1322, column: 13, scope: !3645)
!3649 = !DILocation(line: 1323, column: 5, scope: !3645)
!3650 = !DILocation(line: 1326, column: 12, scope: !3538)
!3651 = !DILocation(line: 1326, column: 17, scope: !3538)
!3652 = !DILocation(line: 1326, column: 38, scope: !3538)
!3653 = !DILocation(line: 1326, column: 5, scope: !3538)
!3654 = !DILocation(line: 1327, column: 12, scope: !3538)
!3655 = !DILocation(line: 1327, column: 9, scope: !3538)
!3656 = !DILocation(line: 1329, column: 12, scope: !3538)
!3657 = !DILocation(line: 1329, column: 18, scope: !3538)
!3658 = !DILocation(line: 1329, column: 16, scope: !3538)
!3659 = !DILocation(line: 1329, column: 5, scope: !3538)
!3660 = !DILocation(line: 1330, column: 1, scope: !3538)
!3661 = distinct !DISubprogram(name: "mqtt_subscribe", scope: !135, file: !135, line: 380, type: !3662, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!5, !587, !124, !7}
!3664 = !DILocalVariable(name: "client", arg: 1, scope: !3661, file: !135, line: 380, type: !587)
!3665 = !DILocation(line: 380, column: 52, scope: !3661)
!3666 = !DILocalVariable(name: "topic_name", arg: 2, scope: !3661, file: !135, line: 381, type: !124)
!3667 = !DILocation(line: 381, column: 36, scope: !3661)
!3668 = !DILocalVariable(name: "max_qos_level", arg: 3, scope: !3661, file: !135, line: 382, type: !7)
!3669 = !DILocation(line: 382, column: 28, scope: !3661)
!3670 = !DILocalVariable(name: "rv", scope: !3661, file: !135, line: 384, type: !754)
!3671 = !DILocation(line: 384, column: 13, scope: !3661)
!3672 = !DILocalVariable(name: "packet_id", scope: !3661, file: !135, line: 385, type: !120)
!3673 = !DILocation(line: 385, column: 14, scope: !3661)
!3674 = !DILocalVariable(name: "msg", scope: !3661, file: !135, line: 386, type: !96)
!3675 = !DILocation(line: 386, column: 33, scope: !3661)
!3676 = !DILocation(line: 387, column: 5, scope: !3661)
!3677 = !DILocation(line: 388, column: 33, scope: !3661)
!3678 = !DILocation(line: 388, column: 17, scope: !3661)
!3679 = !DILocation(line: 388, column: 15, scope: !3661)
!3680 = !DILocation(line: 391, column: 5, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3661, file: !135, line: 391, column: 5)
!3682 = !DILocation(line: 391, column: 5, scope: !3661)
!3683 = !DILocation(line: 391, column: 5, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !135, line: 391, column: 5)
!3685 = distinct !DILexicalBlock(scope: !3681, file: !135, line: 391, column: 5)
!3686 = !DILocation(line: 391, column: 5, scope: !3685)
!3687 = !DILocation(line: 391, column: 5, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3661, file: !135, line: 391, column: 5)
!3689 = !DILocation(line: 391, column: 5, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3688, file: !135, line: 391, column: 5)
!3691 = !DILocation(line: 391, column: 5, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3690, file: !135, line: 391, column: 5)
!3693 = !DILocation(line: 391, column: 5, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3688, file: !135, line: 391, column: 5)
!3695 = !DILocation(line: 391, column: 5, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3694, file: !135, line: 391, column: 5)
!3697 = !DILocation(line: 391, column: 5, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3696, file: !135, line: 391, column: 5)
!3699 = !DILocation(line: 391, column: 5, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3698, file: !135, line: 391, column: 5)
!3701 = !DILocation(line: 391, column: 5, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3700, file: !135, line: 391, column: 5)
!3703 = !DILocation(line: 391, column: 5, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3698, file: !135, line: 391, column: 5)
!3705 = !DILocation(line: 391, column: 5, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3704, file: !135, line: 391, column: 5)
!3707 = !DILocation(line: 391, column: 5, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3706, file: !135, line: 391, column: 5)
!3709 = !DILocation(line: 403, column: 5, scope: !3661)
!3710 = !DILocation(line: 403, column: 10, scope: !3661)
!3711 = !DILocation(line: 403, column: 23, scope: !3661)
!3712 = !DILocation(line: 404, column: 22, scope: !3661)
!3713 = !DILocation(line: 404, column: 5, scope: !3661)
!3714 = !DILocation(line: 404, column: 10, scope: !3661)
!3715 = !DILocation(line: 404, column: 20, scope: !3661)
!3716 = !DILocation(line: 406, column: 5, scope: !3661)
!3717 = !DILocation(line: 407, column: 5, scope: !3661)
!3718 = !DILocation(line: 408, column: 1, scope: !3661)
!3719 = distinct !DISubprogram(name: "mqtt_pack_subscribe_request", scope: !135, file: !135, line: 1462, type: !3720, scopeLine: 1462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!754, !100, !107, !40, null}
!3722 = !DILocalVariable(name: "buf", arg: 1, scope: !3719, file: !135, line: 1462, type: !100)
!3723 = !DILocation(line: 1462, column: 46, scope: !3719)
!3724 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3719, file: !135, line: 1462, type: !107)
!3725 = !DILocation(line: 1462, column: 58, scope: !3719)
!3726 = !DILocalVariable(name: "packet_id", arg: 3, scope: !3719, file: !135, line: 1462, type: !40)
!3727 = !DILocation(line: 1462, column: 78, scope: !3719)
!3728 = !DILocalVariable(name: "args", scope: !3719, file: !135, line: 1463, type: !3729)
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3730, line: 14, baseType: !3731)
!3730 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.0/include/stdarg.h", directory: "")
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !135, baseType: !3732)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3733, size: 192, elements: !3739)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3738}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3733, file: !135, line: 1463, baseType: !40, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3733, file: !135, line: 1463, baseType: !40, size: 32, offset: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3733, file: !135, line: 1463, baseType: !95, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3733, file: !135, line: 1463, baseType: !95, size: 64, offset: 128)
!3739 = !{!3740}
!3740 = !DISubrange(count: 1)
!3741 = !DILocation(line: 1463, column: 13, scope: !3719)
!3742 = !DILocalVariable(name: "start", scope: !3719, file: !135, line: 1464, type: !2007)
!3743 = !DILocation(line: 1464, column: 26, scope: !3719)
!3744 = !DILocation(line: 1464, column: 34, scope: !3719)
!3745 = !DILocalVariable(name: "rv", scope: !3719, file: !135, line: 1465, type: !754)
!3746 = !DILocation(line: 1465, column: 13, scope: !3719)
!3747 = !DILocalVariable(name: "fixed_header", scope: !3719, file: !135, line: 1466, type: !763)
!3748 = !DILocation(line: 1466, column: 30, scope: !3719)
!3749 = !DILocalVariable(name: "num_subs", scope: !3719, file: !135, line: 1467, type: !40)
!3750 = !DILocation(line: 1467, column: 18, scope: !3719)
!3751 = !DILocalVariable(name: "i", scope: !3719, file: !135, line: 1468, type: !40)
!3752 = !DILocation(line: 1468, column: 18, scope: !3719)
!3753 = !DILocalVariable(name: "topic", scope: !3719, file: !135, line: 1469, type: !3754)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 512, elements: !3755)
!3755 = !{!3756}
!3756 = !DISubrange(count: 8)
!3757 = !DILocation(line: 1469, column: 17, scope: !3719)
!3758 = !DILocalVariable(name: "max_qos", scope: !3719, file: !135, line: 1470, type: !3759)
!3759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !3755)
!3760 = !DILocation(line: 1470, column: 13, scope: !3719)
!3761 = !DILocation(line: 1473, column: 5, scope: !3719)
!3762 = !DILocation(line: 1474, column: 5, scope: !3719)
!3763 = !DILocation(line: 1475, column: 27, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3719, file: !135, line: 1474, column: 14)
!3765 = !DILocation(line: 1475, column: 15, scope: !3764)
!3766 = !DILocation(line: 1475, column: 9, scope: !3764)
!3767 = !DILocation(line: 1475, column: 25, scope: !3764)
!3768 = !DILocation(line: 1476, column: 19, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3764, file: !135, line: 1476, column: 13)
!3770 = !DILocation(line: 1476, column: 13, scope: !3769)
!3771 = !DILocation(line: 1476, column: 29, scope: !3769)
!3772 = !DILocation(line: 1476, column: 13, scope: !3764)
!3773 = !DILocation(line: 1478, column: 13, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3769, file: !135, line: 1476, column: 38)
!3775 = !DILocation(line: 1481, column: 39, scope: !3764)
!3776 = !DILocation(line: 1481, column: 29, scope: !3764)
!3777 = !DILocation(line: 1481, column: 17, scope: !3764)
!3778 = !DILocation(line: 1481, column: 9, scope: !3764)
!3779 = !DILocation(line: 1481, column: 27, scope: !3764)
!3780 = !DILocation(line: 1483, column: 9, scope: !3764)
!3781 = !DILocation(line: 1484, column: 13, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3764, file: !135, line: 1484, column: 13)
!3783 = !DILocation(line: 1484, column: 22, scope: !3782)
!3784 = !DILocation(line: 1484, column: 13, scope: !3764)
!3785 = !DILocation(line: 1485, column: 13, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3782, file: !135, line: 1484, column: 64)
!3787 = !DILocation(line: 1486, column: 13, scope: !3786)
!3788 = distinct !{!3788, !3762, !3789}
!3789 = !DILocation(line: 1488, column: 5, scope: !3719)
!3790 = !DILocation(line: 1489, column: 5, scope: !3719)
!3791 = !DILocation(line: 1492, column: 18, scope: !3719)
!3792 = !DILocation(line: 1492, column: 31, scope: !3719)
!3793 = !DILocation(line: 1493, column: 18, scope: !3719)
!3794 = !DILocation(line: 1493, column: 32, scope: !3719)
!3795 = !DILocation(line: 1494, column: 18, scope: !3719)
!3796 = !DILocation(line: 1494, column: 35, scope: !3719)
!3797 = !DILocation(line: 1495, column: 11, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3719, file: !135, line: 1495, column: 5)
!3799 = !DILocation(line: 1495, column: 9, scope: !3798)
!3800 = !DILocation(line: 1495, column: 16, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3798, file: !135, line: 1495, column: 5)
!3802 = !DILocation(line: 1495, column: 20, scope: !3801)
!3803 = !DILocation(line: 1495, column: 18, scope: !3801)
!3804 = !DILocation(line: 1495, column: 5, scope: !3798)
!3805 = !DILocation(line: 1497, column: 42, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3801, file: !135, line: 1495, column: 35)
!3807 = !DILocation(line: 1497, column: 74, scope: !3806)
!3808 = !DILocation(line: 1497, column: 22, scope: !3806)
!3809 = !DILocation(line: 1497, column: 39, scope: !3806)
!3810 = !DILocation(line: 1498, column: 5, scope: !3806)
!3811 = !DILocation(line: 1495, column: 30, scope: !3801)
!3812 = !DILocation(line: 1495, column: 5, scope: !3801)
!3813 = distinct !{!3813, !3804, !3814, !377}
!3814 = !DILocation(line: 1498, column: 5, scope: !3798)
!3815 = !DILocation(line: 1501, column: 33, scope: !3719)
!3816 = !DILocation(line: 1501, column: 38, scope: !3719)
!3817 = !DILocation(line: 1501, column: 10, scope: !3719)
!3818 = !DILocation(line: 1501, column: 8, scope: !3719)
!3819 = !DILocation(line: 1502, column: 9, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3719, file: !135, line: 1502, column: 9)
!3821 = !DILocation(line: 1502, column: 12, scope: !3820)
!3822 = !DILocation(line: 1502, column: 9, scope: !3719)
!3823 = !DILocation(line: 1503, column: 16, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3820, file: !135, line: 1502, column: 18)
!3825 = !DILocation(line: 1503, column: 9, scope: !3824)
!3826 = !DILocation(line: 1505, column: 12, scope: !3719)
!3827 = !DILocation(line: 1505, column: 9, scope: !3719)
!3828 = !DILocation(line: 1506, column: 14, scope: !3719)
!3829 = !DILocation(line: 1506, column: 11, scope: !3719)
!3830 = !DILocation(line: 1509, column: 9, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3719, file: !135, line: 1509, column: 9)
!3832 = !DILocation(line: 1509, column: 30, scope: !3831)
!3833 = !DILocation(line: 1509, column: 17, scope: !3831)
!3834 = !DILocation(line: 1509, column: 15, scope: !3831)
!3835 = !DILocation(line: 1509, column: 9, scope: !3719)
!3836 = !DILocation(line: 1510, column: 9, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3831, file: !135, line: 1509, column: 48)
!3838 = !DILocation(line: 1515, column: 31, scope: !3719)
!3839 = !DILocation(line: 1515, column: 36, scope: !3719)
!3840 = !DILocation(line: 1515, column: 12, scope: !3719)
!3841 = !DILocation(line: 1515, column: 9, scope: !3719)
!3842 = !DILocation(line: 1519, column: 11, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3719, file: !135, line: 1519, column: 5)
!3844 = !DILocation(line: 1519, column: 9, scope: !3843)
!3845 = !DILocation(line: 1519, column: 16, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3843, file: !135, line: 1519, column: 5)
!3847 = !DILocation(line: 1519, column: 20, scope: !3846)
!3848 = !DILocation(line: 1519, column: 18, scope: !3846)
!3849 = !DILocation(line: 1519, column: 5, scope: !3843)
!3850 = !DILocation(line: 1520, column: 32, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3846, file: !135, line: 1519, column: 35)
!3852 = !DILocation(line: 1520, column: 43, scope: !3851)
!3853 = !DILocation(line: 1520, column: 37, scope: !3851)
!3854 = !DILocation(line: 1520, column: 16, scope: !3851)
!3855 = !DILocation(line: 1520, column: 13, scope: !3851)
!3856 = !DILocation(line: 1521, column: 26, scope: !3851)
!3857 = !DILocation(line: 1521, column: 18, scope: !3851)
!3858 = !DILocation(line: 1521, column: 13, scope: !3851)
!3859 = !DILocation(line: 1521, column: 16, scope: !3851)
!3860 = !DILocation(line: 1522, column: 5, scope: !3851)
!3861 = !DILocation(line: 1519, column: 30, scope: !3846)
!3862 = !DILocation(line: 1519, column: 5, scope: !3846)
!3863 = distinct !{!3863, !3849, !3864, !377}
!3864 = !DILocation(line: 1522, column: 5, scope: !3843)
!3865 = !DILocation(line: 1524, column: 12, scope: !3719)
!3866 = !DILocation(line: 1524, column: 18, scope: !3719)
!3867 = !DILocation(line: 1524, column: 16, scope: !3719)
!3868 = !DILocation(line: 1524, column: 5, scope: !3719)
!3869 = !DILocation(line: 1525, column: 1, scope: !3719)
!3870 = distinct !DISubprogram(name: "mqtt_unsubscribe", scope: !135, file: !135, line: 410, type: !3871, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!5, !587, !124}
!3873 = !DILocalVariable(name: "client", arg: 1, scope: !3870, file: !135, line: 410, type: !587)
!3874 = !DILocation(line: 410, column: 54, scope: !3870)
!3875 = !DILocalVariable(name: "topic_name", arg: 2, scope: !3870, file: !135, line: 411, type: !124)
!3876 = !DILocation(line: 411, column: 38, scope: !3870)
!3877 = !DILocalVariable(name: "packet_id", scope: !3870, file: !135, line: 413, type: !120)
!3878 = !DILocation(line: 413, column: 14, scope: !3870)
!3879 = !DILocation(line: 413, column: 42, scope: !3870)
!3880 = !DILocation(line: 413, column: 26, scope: !3870)
!3881 = !DILocalVariable(name: "rv", scope: !3870, file: !135, line: 414, type: !754)
!3882 = !DILocation(line: 414, column: 13, scope: !3870)
!3883 = !DILocalVariable(name: "msg", scope: !3870, file: !135, line: 415, type: !96)
!3884 = !DILocation(line: 415, column: 33, scope: !3870)
!3885 = !DILocation(line: 416, column: 5, scope: !3870)
!3886 = !DILocation(line: 419, column: 5, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3870, file: !135, line: 419, column: 5)
!3888 = !DILocation(line: 419, column: 5, scope: !3870)
!3889 = !DILocation(line: 419, column: 5, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !135, line: 419, column: 5)
!3891 = distinct !DILexicalBlock(scope: !3887, file: !135, line: 419, column: 5)
!3892 = !DILocation(line: 419, column: 5, scope: !3891)
!3893 = !DILocation(line: 419, column: 5, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3870, file: !135, line: 419, column: 5)
!3895 = !DILocation(line: 419, column: 5, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3894, file: !135, line: 419, column: 5)
!3897 = !DILocation(line: 419, column: 5, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3896, file: !135, line: 419, column: 5)
!3899 = !DILocation(line: 419, column: 5, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3894, file: !135, line: 419, column: 5)
!3901 = !DILocation(line: 419, column: 5, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3900, file: !135, line: 419, column: 5)
!3903 = !DILocation(line: 419, column: 5, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3902, file: !135, line: 419, column: 5)
!3905 = !DILocation(line: 419, column: 5, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3904, file: !135, line: 419, column: 5)
!3907 = !DILocation(line: 419, column: 5, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3906, file: !135, line: 419, column: 5)
!3909 = !DILocation(line: 419, column: 5, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3904, file: !135, line: 419, column: 5)
!3911 = !DILocation(line: 419, column: 5, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3910, file: !135, line: 419, column: 5)
!3913 = !DILocation(line: 419, column: 5, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3912, file: !135, line: 419, column: 5)
!3915 = !DILocation(line: 430, column: 5, scope: !3870)
!3916 = !DILocation(line: 430, column: 10, scope: !3870)
!3917 = !DILocation(line: 430, column: 23, scope: !3870)
!3918 = !DILocation(line: 431, column: 22, scope: !3870)
!3919 = !DILocation(line: 431, column: 5, scope: !3870)
!3920 = !DILocation(line: 431, column: 10, scope: !3870)
!3921 = !DILocation(line: 431, column: 20, scope: !3870)
!3922 = !DILocation(line: 433, column: 5, scope: !3870)
!3923 = !DILocation(line: 434, column: 5, scope: !3870)
!3924 = !DILocation(line: 435, column: 1, scope: !3870)
!3925 = distinct !DISubprogram(name: "mqtt_pack_unsubscribe_request", scope: !135, file: !135, line: 1544, type: !3720, scopeLine: 1544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3926 = !DILocalVariable(name: "buf", arg: 1, scope: !3925, file: !135, line: 1544, type: !100)
!3927 = !DILocation(line: 1544, column: 48, scope: !3925)
!3928 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3925, file: !135, line: 1544, type: !107)
!3929 = !DILocation(line: 1544, column: 60, scope: !3925)
!3930 = !DILocalVariable(name: "packet_id", arg: 3, scope: !3925, file: !135, line: 1544, type: !40)
!3931 = !DILocation(line: 1544, column: 80, scope: !3925)
!3932 = !DILocalVariable(name: "args", scope: !3925, file: !135, line: 1545, type: !3729)
!3933 = !DILocation(line: 1545, column: 13, scope: !3925)
!3934 = !DILocalVariable(name: "start", scope: !3925, file: !135, line: 1546, type: !2007)
!3935 = !DILocation(line: 1546, column: 26, scope: !3925)
!3936 = !DILocation(line: 1546, column: 34, scope: !3925)
!3937 = !DILocalVariable(name: "rv", scope: !3925, file: !135, line: 1547, type: !754)
!3938 = !DILocation(line: 1547, column: 13, scope: !3925)
!3939 = !DILocalVariable(name: "fixed_header", scope: !3925, file: !135, line: 1548, type: !763)
!3940 = !DILocation(line: 1548, column: 30, scope: !3925)
!3941 = !DILocalVariable(name: "num_subs", scope: !3925, file: !135, line: 1549, type: !40)
!3942 = !DILocation(line: 1549, column: 18, scope: !3925)
!3943 = !DILocalVariable(name: "i", scope: !3925, file: !135, line: 1550, type: !40)
!3944 = !DILocation(line: 1550, column: 18, scope: !3925)
!3945 = !DILocalVariable(name: "topic", scope: !3925, file: !135, line: 1551, type: !3754)
!3946 = !DILocation(line: 1551, column: 17, scope: !3925)
!3947 = !DILocation(line: 1554, column: 5, scope: !3925)
!3948 = !DILocation(line: 1555, column: 5, scope: !3925)
!3949 = !DILocation(line: 1556, column: 27, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3925, file: !135, line: 1555, column: 14)
!3951 = !DILocation(line: 1556, column: 15, scope: !3950)
!3952 = !DILocation(line: 1556, column: 9, scope: !3950)
!3953 = !DILocation(line: 1556, column: 25, scope: !3950)
!3954 = !DILocation(line: 1557, column: 19, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3950, file: !135, line: 1557, column: 13)
!3956 = !DILocation(line: 1557, column: 13, scope: !3955)
!3957 = !DILocation(line: 1557, column: 29, scope: !3955)
!3958 = !DILocation(line: 1557, column: 13, scope: !3950)
!3959 = !DILocation(line: 1559, column: 13, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3955, file: !135, line: 1557, column: 38)
!3961 = !DILocation(line: 1562, column: 9, scope: !3950)
!3962 = !DILocation(line: 1563, column: 13, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3950, file: !135, line: 1563, column: 13)
!3964 = !DILocation(line: 1563, column: 22, scope: !3963)
!3965 = !DILocation(line: 1563, column: 13, scope: !3950)
!3966 = !DILocation(line: 1564, column: 13, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3963, file: !135, line: 1563, column: 66)
!3968 = !DILocation(line: 1565, column: 13, scope: !3967)
!3969 = distinct !{!3969, !3948, !3970}
!3970 = !DILocation(line: 1567, column: 5, scope: !3925)
!3971 = !DILocation(line: 1568, column: 5, scope: !3925)
!3972 = !DILocation(line: 1571, column: 18, scope: !3925)
!3973 = !DILocation(line: 1571, column: 31, scope: !3925)
!3974 = !DILocation(line: 1572, column: 18, scope: !3925)
!3975 = !DILocation(line: 1572, column: 32, scope: !3925)
!3976 = !DILocation(line: 1573, column: 18, scope: !3925)
!3977 = !DILocation(line: 1573, column: 35, scope: !3925)
!3978 = !DILocation(line: 1574, column: 11, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3925, file: !135, line: 1574, column: 5)
!3980 = !DILocation(line: 1574, column: 9, scope: !3979)
!3981 = !DILocation(line: 1574, column: 16, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3979, file: !135, line: 1574, column: 5)
!3983 = !DILocation(line: 1574, column: 20, scope: !3982)
!3984 = !DILocation(line: 1574, column: 18, scope: !3982)
!3985 = !DILocation(line: 1574, column: 5, scope: !3979)
!3986 = !DILocation(line: 1576, column: 42, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3982, file: !135, line: 1574, column: 35)
!3988 = !DILocation(line: 1576, column: 22, scope: !3987)
!3989 = !DILocation(line: 1576, column: 39, scope: !3987)
!3990 = !DILocation(line: 1577, column: 5, scope: !3987)
!3991 = !DILocation(line: 1574, column: 30, scope: !3982)
!3992 = !DILocation(line: 1574, column: 5, scope: !3982)
!3993 = distinct !{!3993, !3985, !3994, !377}
!3994 = !DILocation(line: 1577, column: 5, scope: !3979)
!3995 = !DILocation(line: 1580, column: 33, scope: !3925)
!3996 = !DILocation(line: 1580, column: 38, scope: !3925)
!3997 = !DILocation(line: 1580, column: 10, scope: !3925)
!3998 = !DILocation(line: 1580, column: 8, scope: !3925)
!3999 = !DILocation(line: 1581, column: 9, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3925, file: !135, line: 1581, column: 9)
!4001 = !DILocation(line: 1581, column: 12, scope: !4000)
!4002 = !DILocation(line: 1581, column: 9, scope: !3925)
!4003 = !DILocation(line: 1582, column: 16, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4000, file: !135, line: 1581, column: 18)
!4005 = !DILocation(line: 1582, column: 9, scope: !4004)
!4006 = !DILocation(line: 1584, column: 12, scope: !3925)
!4007 = !DILocation(line: 1584, column: 9, scope: !3925)
!4008 = !DILocation(line: 1585, column: 14, scope: !3925)
!4009 = !DILocation(line: 1585, column: 11, scope: !3925)
!4010 = !DILocation(line: 1588, column: 9, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3925, file: !135, line: 1588, column: 9)
!4012 = !DILocation(line: 1588, column: 30, scope: !4011)
!4013 = !DILocation(line: 1588, column: 17, scope: !4011)
!4014 = !DILocation(line: 1588, column: 15, scope: !4011)
!4015 = !DILocation(line: 1588, column: 9, scope: !3925)
!4016 = !DILocation(line: 1589, column: 9, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4011, file: !135, line: 1588, column: 48)
!4018 = !DILocation(line: 1593, column: 31, scope: !3925)
!4019 = !DILocation(line: 1593, column: 36, scope: !3925)
!4020 = !DILocation(line: 1593, column: 12, scope: !3925)
!4021 = !DILocation(line: 1593, column: 9, scope: !3925)
!4022 = !DILocation(line: 1597, column: 11, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3925, file: !135, line: 1597, column: 5)
!4024 = !DILocation(line: 1597, column: 9, scope: !4023)
!4025 = !DILocation(line: 1597, column: 16, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4023, file: !135, line: 1597, column: 5)
!4027 = !DILocation(line: 1597, column: 20, scope: !4026)
!4028 = !DILocation(line: 1597, column: 18, scope: !4026)
!4029 = !DILocation(line: 1597, column: 5, scope: !4023)
!4030 = !DILocation(line: 1598, column: 32, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4026, file: !135, line: 1597, column: 35)
!4032 = !DILocation(line: 1598, column: 43, scope: !4031)
!4033 = !DILocation(line: 1598, column: 37, scope: !4031)
!4034 = !DILocation(line: 1598, column: 16, scope: !4031)
!4035 = !DILocation(line: 1598, column: 13, scope: !4031)
!4036 = !DILocation(line: 1599, column: 5, scope: !4031)
!4037 = !DILocation(line: 1597, column: 30, scope: !4026)
!4038 = !DILocation(line: 1597, column: 5, scope: !4026)
!4039 = distinct !{!4039, !4029, !4040, !377}
!4040 = !DILocation(line: 1599, column: 5, scope: !4023)
!4041 = !DILocation(line: 1601, column: 12, scope: !3925)
!4042 = !DILocation(line: 1601, column: 18, scope: !3925)
!4043 = !DILocation(line: 1601, column: 16, scope: !3925)
!4044 = !DILocation(line: 1601, column: 5, scope: !3925)
!4045 = !DILocation(line: 1602, column: 1, scope: !3925)
!4046 = distinct !DISubprogram(name: "mqtt_ping", scope: !135, file: !135, line: 437, type: !585, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!4047 = !DILocalVariable(name: "client", arg: 1, scope: !4046, file: !135, line: 437, type: !587)
!4048 = !DILocation(line: 437, column: 47, scope: !4046)
!4049 = !DILocalVariable(name: "rv", scope: !4046, file: !135, line: 438, type: !5)
!4050 = !DILocation(line: 438, column: 21, scope: !4046)
!4051 = !DILocation(line: 439, column: 5, scope: !4046)
!4052 = !DILocation(line: 440, column: 22, scope: !4046)
!4053 = !DILocation(line: 440, column: 10, scope: !4046)
!4054 = !DILocation(line: 440, column: 8, scope: !4046)
!4055 = !DILocation(line: 441, column: 5, scope: !4046)
!4056 = !DILocation(line: 442, column: 12, scope: !4046)
!4057 = !DILocation(line: 442, column: 5, scope: !4046)
!4058 = distinct !DISubprogram(name: "mqtt_reconnect", scope: !135, file: !135, line: 465, type: !585, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!4059 = !DILocalVariable(name: "client", arg: 1, scope: !4058, file: !135, line: 465, type: !587)
!4060 = !DILocation(line: 465, column: 52, scope: !4058)
!4061 = !DILocalVariable(name: "err", scope: !4058, file: !135, line: 467, type: !5)
!4062 = !DILocation(line: 467, column: 21, scope: !4058)
!4063 = !DILocation(line: 467, column: 43, scope: !4058)
!4064 = !DILocation(line: 467, column: 27, scope: !4058)
!4065 = !DILocation(line: 469, column: 9, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4058, file: !135, line: 469, column: 9)
!4067 = !DILocation(line: 469, column: 13, scope: !4066)
!4068 = !DILocation(line: 469, column: 9, scope: !4058)
!4069 = !DILocation(line: 470, column: 9, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4066, file: !135, line: 469, column: 25)
!4071 = !DILocation(line: 471, column: 9, scope: !4070)
!4072 = !DILocation(line: 471, column: 17, scope: !4070)
!4073 = !DILocation(line: 471, column: 23, scope: !4070)
!4074 = !DILocation(line: 472, column: 9, scope: !4070)
!4075 = !DILocation(line: 473, column: 5, scope: !4070)
!4076 = !DILocation(line: 474, column: 12, scope: !4058)
!4077 = !DILocation(line: 474, column: 5, scope: !4058)
!4078 = distinct !DISubprogram(name: "mqtt_disconnect", scope: !135, file: !135, line: 477, type: !585, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!4079 = !DILocalVariable(name: "client", arg: 1, scope: !4078, file: !135, line: 477, type: !587)
!4080 = !DILocation(line: 477, column: 53, scope: !4078)
!4081 = !DILocalVariable(name: "rv", scope: !4078, file: !135, line: 479, type: !754)
!4082 = !DILocation(line: 479, column: 13, scope: !4078)
!4083 = !DILocalVariable(name: "msg", scope: !4078, file: !135, line: 480, type: !96)
!4084 = !DILocation(line: 480, column: 33, scope: !4078)
!4085 = !DILocation(line: 481, column: 5, scope: !4078)
!4086 = !DILocation(line: 484, column: 5, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4078, file: !135, line: 484, column: 5)
!4088 = !DILocation(line: 484, column: 5, scope: !4078)
!4089 = !DILocation(line: 484, column: 5, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !135, line: 484, column: 5)
!4091 = distinct !DILexicalBlock(scope: !4087, file: !135, line: 484, column: 5)
!4092 = !DILocation(line: 484, column: 5, scope: !4091)
!4093 = !DILocation(line: 484, column: 5, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4078, file: !135, line: 484, column: 5)
!4095 = !DILocation(line: 484, column: 5, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4094, file: !135, line: 484, column: 5)
!4097 = !DILocation(line: 484, column: 5, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4096, file: !135, line: 484, column: 5)
!4099 = !DILocation(line: 484, column: 5, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4094, file: !135, line: 484, column: 5)
!4101 = !DILocation(line: 484, column: 5, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4100, file: !135, line: 484, column: 5)
!4103 = !DILocation(line: 484, column: 5, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4102, file: !135, line: 484, column: 5)
!4105 = !DILocation(line: 484, column: 5, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4104, file: !135, line: 484, column: 5)
!4107 = !DILocation(line: 484, column: 5, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4106, file: !135, line: 484, column: 5)
!4109 = !DILocation(line: 484, column: 5, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4104, file: !135, line: 484, column: 5)
!4111 = !DILocation(line: 484, column: 5, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4110, file: !135, line: 484, column: 5)
!4113 = !DILocation(line: 484, column: 5, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4112, file: !135, line: 484, column: 5)
!4115 = !DILocation(line: 492, column: 5, scope: !4078)
!4116 = !DILocation(line: 492, column: 10, scope: !4078)
!4117 = !DILocation(line: 492, column: 23, scope: !4078)
!4118 = !DILocation(line: 494, column: 5, scope: !4078)
!4119 = !DILocation(line: 495, column: 5, scope: !4078)
!4120 = !DILocation(line: 496, column: 1, scope: !4078)
!4121 = distinct !DISubprogram(name: "mqtt_pack_disconnect", scope: !135, file: !135, line: 1244, type: !1664, scopeLine: 1244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!4122 = !DILocalVariable(name: "buf", arg: 1, scope: !4121, file: !135, line: 1244, type: !100)
!4123 = !DILocation(line: 1244, column: 39, scope: !4121)
!4124 = !DILocalVariable(name: "bufsz", arg: 2, scope: !4121, file: !135, line: 1244, type: !107)
!4125 = !DILocation(line: 1244, column: 51, scope: !4121)
!4126 = !DILocalVariable(name: "fixed_header", scope: !4121, file: !135, line: 1245, type: !763)
!4127 = !DILocation(line: 1245, column: 30, scope: !4121)
!4128 = !DILocation(line: 1246, column: 18, scope: !4121)
!4129 = !DILocation(line: 1246, column: 31, scope: !4121)
!4130 = !DILocation(line: 1247, column: 18, scope: !4121)
!4131 = !DILocation(line: 1247, column: 32, scope: !4121)
!4132 = !DILocation(line: 1248, column: 18, scope: !4121)
!4133 = !DILocation(line: 1248, column: 35, scope: !4121)
!4134 = !DILocation(line: 1249, column: 35, scope: !4121)
!4135 = !DILocation(line: 1249, column: 40, scope: !4121)
!4136 = !DILocation(line: 1249, column: 12, scope: !4121)
!4137 = !DILocation(line: 1249, column: 5, scope: !4121)
!4138 = distinct !DISubprogram(name: "mqtt_error_str", scope: !135, file: !135, line: 1770, type: !4139, scopeLine: 1770, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!124, !5}
!4141 = !DILocalVariable(name: "error", arg: 1, scope: !4138, file: !135, line: 1770, type: !5)
!4142 = !DILocation(line: 1770, column: 44, scope: !4138)
!4143 = !DILocalVariable(name: "offset", scope: !4138, file: !135, line: 1771, type: !7)
!4144 = !DILocation(line: 1771, column: 9, scope: !4138)
!4145 = !DILocation(line: 1771, column: 18, scope: !4138)
!4146 = !DILocation(line: 1771, column: 24, scope: !4138)
!4147 = !DILocation(line: 1772, column: 9, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4138, file: !135, line: 1772, column: 9)
!4149 = !DILocation(line: 1772, column: 16, scope: !4148)
!4150 = !DILocation(line: 1772, column: 9, scope: !4138)
!4151 = !DILocation(line: 1773, column: 32, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4148, file: !135, line: 1772, column: 22)
!4153 = !DILocation(line: 1773, column: 16, scope: !4152)
!4154 = !DILocation(line: 1773, column: 9, scope: !4152)
!4155 = !DILocation(line: 1774, column: 16, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4148, file: !135, line: 1774, column: 16)
!4157 = !DILocation(line: 1774, column: 22, scope: !4156)
!4158 = !DILocation(line: 1774, column: 16, scope: !4148)
!4159 = !DILocation(line: 1775, column: 9, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4156, file: !135, line: 1774, column: 28)
!4161 = !DILocation(line: 1776, column: 16, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4156, file: !135, line: 1776, column: 16)
!4163 = !DILocation(line: 1776, column: 22, scope: !4162)
!4164 = !DILocation(line: 1776, column: 16, scope: !4156)
!4165 = !DILocation(line: 1777, column: 9, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4162, file: !135, line: 1776, column: 27)
!4167 = !DILocation(line: 1779, column: 16, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4162, file: !135, line: 1778, column: 12)
!4169 = !DILocation(line: 1779, column: 9, scope: !4168)
!4170 = !DILocation(line: 1781, column: 1, scope: !4138)
!4171 = distinct !DISubprogram(name: "mqtt_pal_sendall", scope: !4172, file: !4172, line: 311, type: !4173, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !261, retainedNodes: !273)
!4172 = !DIFile(filename: "src/mqtt_pal.c", directory: "/home/ryan/git/MQTT-C")
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!754, !123, !191, !107, !7}
!4175 = !DILocalVariable(name: "fd", arg: 1, scope: !4171, file: !4172, line: 311, type: !123)
!4176 = !DILocation(line: 311, column: 49, scope: !4171)
!4177 = !DILocalVariable(name: "buf", arg: 2, scope: !4171, file: !4172, line: 311, type: !191)
!4178 = !DILocation(line: 311, column: 65, scope: !4171)
!4179 = !DILocalVariable(name: "len", arg: 3, scope: !4171, file: !4172, line: 311, type: !107)
!4180 = !DILocation(line: 311, column: 77, scope: !4171)
!4181 = !DILocalVariable(name: "flags", arg: 4, scope: !4171, file: !4172, line: 311, type: !7)
!4182 = !DILocation(line: 311, column: 86, scope: !4171)
!4183 = !DILocalVariable(name: "sent", scope: !4171, file: !4172, line: 312, type: !107)
!4184 = !DILocation(line: 312, column: 12, scope: !4171)
!4185 = !DILocation(line: 313, column: 5, scope: !4171)
!4186 = !DILocation(line: 313, column: 11, scope: !4171)
!4187 = !DILocation(line: 313, column: 18, scope: !4171)
!4188 = !DILocation(line: 313, column: 16, scope: !4171)
!4189 = !DILocalVariable(name: "tmp", scope: !4190, file: !4172, line: 314, type: !754)
!4190 = distinct !DILexicalBlock(scope: !4171, file: !4172, line: 313, column: 23)
!4191 = !DILocation(line: 314, column: 17, scope: !4190)
!4192 = !DILocation(line: 314, column: 28, scope: !4190)
!4193 = !DILocation(line: 314, column: 32, scope: !4190)
!4194 = !DILocation(line: 314, column: 38, scope: !4190)
!4195 = !DILocation(line: 314, column: 36, scope: !4190)
!4196 = !DILocation(line: 314, column: 44, scope: !4190)
!4197 = !DILocation(line: 314, column: 50, scope: !4190)
!4198 = !DILocation(line: 314, column: 48, scope: !4190)
!4199 = !DILocation(line: 314, column: 56, scope: !4190)
!4200 = !DILocation(line: 314, column: 23, scope: !4190)
!4201 = !DILocation(line: 315, column: 13, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4190, file: !4172, line: 315, column: 13)
!4203 = !DILocation(line: 315, column: 17, scope: !4202)
!4204 = !DILocation(line: 315, column: 13, scope: !4190)
!4205 = !DILocation(line: 316, column: 17, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4207, file: !4172, line: 316, column: 17)
!4207 = distinct !DILexicalBlock(scope: !4202, file: !4172, line: 315, column: 22)
!4208 = !DILocation(line: 316, column: 23, scope: !4206)
!4209 = !DILocation(line: 316, column: 17, scope: !4207)
!4210 = !DILocation(line: 317, column: 15, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4206, file: !4172, line: 316, column: 34)
!4212 = !DILocation(line: 319, column: 9, scope: !4207)
!4213 = !DILocation(line: 320, column: 30, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4202, file: !4172, line: 319, column: 16)
!4215 = !DILocation(line: 320, column: 18, scope: !4214)
!4216 = distinct !{!4216, !4185, !4217, !377}
!4217 = !DILocation(line: 322, column: 5, scope: !4171)
!4218 = !DILocation(line: 323, column: 12, scope: !4171)
!4219 = !DILocation(line: 323, column: 5, scope: !4171)
!4220 = !DILocation(line: 324, column: 1, scope: !4171)
!4221 = distinct !DISubprogram(name: "mqtt_pal_recvall", scope: !4172, file: !4172, line: 326, type: !4222, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !261, retainedNodes: !273)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!754, !123, !95, !107, !7}
!4224 = !DILocalVariable(name: "fd", arg: 1, scope: !4221, file: !4172, line: 326, type: !123)
!4225 = !DILocation(line: 326, column: 49, scope: !4221)
!4226 = !DILocalVariable(name: "buf", arg: 2, scope: !4221, file: !4172, line: 326, type: !95)
!4227 = !DILocation(line: 326, column: 59, scope: !4221)
!4228 = !DILocalVariable(name: "bufsz", arg: 3, scope: !4221, file: !4172, line: 326, type: !107)
!4229 = !DILocation(line: 326, column: 71, scope: !4221)
!4230 = !DILocalVariable(name: "flags", arg: 4, scope: !4221, file: !4172, line: 326, type: !7)
!4231 = !DILocation(line: 326, column: 82, scope: !4221)
!4232 = !DILocalVariable(name: "start", scope: !4221, file: !4172, line: 327, type: !4233)
!4233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!4234 = !DILocation(line: 327, column: 23, scope: !4221)
!4235 = !DILocation(line: 327, column: 31, scope: !4221)
!4236 = !DILocalVariable(name: "rv", scope: !4221, file: !4172, line: 328, type: !754)
!4237 = !DILocation(line: 328, column: 13, scope: !4221)
!4238 = !DILocation(line: 329, column: 5, scope: !4221)
!4239 = !DILocation(line: 330, column: 19, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4221, file: !4172, line: 329, column: 8)
!4241 = !DILocation(line: 330, column: 23, scope: !4240)
!4242 = !DILocation(line: 330, column: 28, scope: !4240)
!4243 = !DILocation(line: 330, column: 35, scope: !4240)
!4244 = !DILocation(line: 330, column: 14, scope: !4240)
!4245 = !DILocation(line: 330, column: 12, scope: !4240)
!4246 = !DILocation(line: 331, column: 13, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4240, file: !4172, line: 331, column: 13)
!4248 = !DILocation(line: 331, column: 16, scope: !4247)
!4249 = !DILocation(line: 331, column: 13, scope: !4240)
!4250 = !DILocation(line: 333, column: 20, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4247, file: !4172, line: 331, column: 21)
!4252 = !DILocation(line: 333, column: 17, scope: !4251)
!4253 = !DILocation(line: 334, column: 22, scope: !4251)
!4254 = !DILocation(line: 334, column: 19, scope: !4251)
!4255 = !DILocation(line: 335, column: 9, scope: !4251)
!4256 = !DILocation(line: 335, column: 20, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4247, file: !4172, line: 335, column: 20)
!4258 = !DILocation(line: 335, column: 23, scope: !4257)
!4259 = !DILocation(line: 335, column: 28, scope: !4257)
!4260 = !DILocation(line: 335, column: 32, scope: !4257)
!4261 = !DILocation(line: 335, column: 35, scope: !4257)
!4262 = !DILocation(line: 335, column: 39, scope: !4257)
!4263 = !DILocation(line: 335, column: 42, scope: !4257)
!4264 = !DILocation(line: 335, column: 48, scope: !4257)
!4265 = !DILocation(line: 335, column: 58, scope: !4257)
!4266 = !DILocation(line: 335, column: 61, scope: !4257)
!4267 = !DILocation(line: 335, column: 67, scope: !4257)
!4268 = !DILocation(line: 335, column: 20, scope: !4247)
!4269 = !DILocation(line: 337, column: 13, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4257, file: !4172, line: 335, column: 84)
!4271 = !DILocation(line: 339, column: 5, scope: !4240)
!4272 = !DILocation(line: 339, column: 14, scope: !4221)
!4273 = !DILocation(line: 339, column: 17, scope: !4221)
!4274 = !DILocation(line: 339, column: 21, scope: !4221)
!4275 = !DILocation(line: 339, column: 24, scope: !4221)
!4276 = !DILocation(line: 339, column: 30, scope: !4221)
!4277 = !DILocation(line: 0, scope: !4221)
!4278 = distinct !{!4278, !4238, !4279, !377}
!4279 = !DILocation(line: 339, column: 33, scope: !4221)
!4280 = !DILocation(line: 341, column: 12, scope: !4221)
!4281 = !DILocation(line: 341, column: 18, scope: !4221)
!4282 = !DILocation(line: 341, column: 16, scope: !4221)
!4283 = !DILocation(line: 341, column: 5, scope: !4221)
!4284 = !DILocation(line: 342, column: 1, scope: !4221)

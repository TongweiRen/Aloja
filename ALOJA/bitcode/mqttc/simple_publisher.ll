; ModuleID = 'simple_publisher.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
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
@.str.1 = private unnamed_addr constant [19 x i8] c"test.mosquitto.org\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1883\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"datetime\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to open socket: \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to start client daemon.\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"%s is ready to begin publishing the time.\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Press ENTER to publish the current time.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Press CTRL-D (or any other key) to exit.\0A\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"The time is %s\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"%s published : \22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\0A%s disconnecting from %s\0A\00", align 1
@mqtt_fixed_header_rules = dso_local global %struct.anon.0 { [16 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", [16 x i8] c"\00\00\00\00\00\00\02\00\02\00\02\00\00\00\00\00", [16 x i8] c"\00\0F\0F\00\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00" }, align 1, !dbg !0
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MQTT_ERRORS_STR = internal global [29 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3.21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4.22, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.23, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.24, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7.25, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8.26, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9.27, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10.28, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11.29, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12.30, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13.31, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14.32, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0)], align 16, !dbg !133
@.str.1.19 = private unnamed_addr constant [30 x i8] c"MQTT_ERROR: Buffer too small.\00", align 1
@.str.2.20 = private unnamed_addr constant [8 x i8] c"MQTT_OK\00", align 1
@.str.3.21 = private unnamed_addr constant [19 x i8] c"MQTT_UNKNOWN_ERROR\00", align 1
@.str.4.22 = private unnamed_addr constant [19 x i8] c"MQTT_ERROR_NULLPTR\00", align 1
@.str.5.23 = private unnamed_addr constant [34 x i8] c"MQTT_ERROR_CONTROL_FORBIDDEN_TYPE\00", align 1
@.str.6.24 = private unnamed_addr constant [33 x i8] c"MQTT_ERROR_CONTROL_INVALID_FLAGS\00", align 1
@.str.7.25 = private unnamed_addr constant [30 x i8] c"MQTT_ERROR_CONTROL_WRONG_TYPE\00", align 1
@.str.8.26 = private unnamed_addr constant [37 x i8] c"MQTT_ERROR_CONNECT_CLIENT_ID_REFUSED\00", align 1
@.str.9.27 = private unnamed_addr constant [37 x i8] c"MQTT_ERROR_CONNECT_NULL_WILL_MESSAGE\00", align 1
@.str.10.28 = private unnamed_addr constant [38 x i8] c"MQTT_ERROR_CONNECT_FORBIDDEN_WILL_QOS\00", align 1
@.str.11.29 = private unnamed_addr constant [35 x i8] c"MQTT_ERROR_CONNACK_FORBIDDEN_FLAGS\00", align 1
@.str.12.30 = private unnamed_addr constant [34 x i8] c"MQTT_ERROR_CONNACK_FORBIDDEN_CODE\00", align 1
@.str.13.31 = private unnamed_addr constant [33 x i8] c"MQTT_ERROR_PUBLISH_FORBIDDEN_QOS\00", align 1
@.str.14.32 = private unnamed_addr constant [37 x i8] c"MQTT_ERROR_SUBSCRIBE_TOO_MANY_TOPICS\00", align 1
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
define dso_local i32 @open_nb_socket(i8* %0, i8* %1) #0 !dbg !268 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !273, metadata !DIExpression()), !dbg !274
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata %struct.addrinfo* %6, metadata !277, metadata !DIExpression()), !dbg !305
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
  %16 = alloca i64, align 8
  %17 = alloca %struct.tm*, align 8
  %18 = alloca [26 x i8], align 16
  %19 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !397, metadata !DIExpression()), !dbg !398
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i8** %6, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i8** %7, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata i8** %8, metadata !405, metadata !DIExpression()), !dbg !406
  %20 = load i32, i32* %4, align 4, !dbg !407
  %21 = icmp sgt i32 %20, 1, !dbg !409
  br i1 %21, label %22, label %26, !dbg !410

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8, !dbg !411
  %24 = getelementptr inbounds i8*, i8** %23, i64 1, !dbg !411
  %25 = load i8*, i8** %24, align 8, !dbg !411
  store i8* %25, i8** %6, align 8, !dbg !413
  br label %27, !dbg !414

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8, !dbg !415
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %4, align 4, !dbg !417
  %29 = icmp sgt i32 %28, 2, !dbg !419
  br i1 %29, label %30, label %34, !dbg !420

30:                                               ; preds = %27
  %31 = load i8**, i8*** %5, align 8, !dbg !421
  %32 = getelementptr inbounds i8*, i8** %31, i64 2, !dbg !421
  %33 = load i8*, i8** %32, align 8, !dbg !421
  store i8* %33, i8** %7, align 8, !dbg !423
  br label %35, !dbg !424

34:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8, !dbg !425
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %4, align 4, !dbg !427
  %37 = icmp sgt i32 %36, 3, !dbg !429
  br i1 %37, label %38, label %42, !dbg !430

38:                                               ; preds = %35
  %39 = load i8**, i8*** %5, align 8, !dbg !431
  %40 = getelementptr inbounds i8*, i8** %39, i64 3, !dbg !431
  %41 = load i8*, i8** %40, align 8, !dbg !431
  store i8* %41, i8** %8, align 8, !dbg !433
  br label %43, !dbg !434

42:                                               ; preds = %35
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8, !dbg !435
  br label %43

43:                                               ; preds = %42, %38
  call void @llvm.dbg.declare(metadata i32* %9, metadata !437, metadata !DIExpression()), !dbg !438
  %44 = load i8*, i8** %6, align 8, !dbg !439
  %45 = load i8*, i8** %7, align 8, !dbg !440
  %46 = call i32 @open_nb_socket(i8* %44, i8* %45), !dbg !441
  store i32 %46, i32* %9, align 4, !dbg !438
  %47 = load i32, i32* %9, align 4, !dbg !442
  %48 = icmp eq i32 %47, -1, !dbg !444
  br i1 %48, label %49, label %51, !dbg !445

49:                                               ; preds = %43
  call void @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0)), !dbg !446
  %50 = load i32, i32* %9, align 4, !dbg !448
  call void @exit_example(i32 1, i32 %50, i64* null), !dbg !449
  br label %51, !dbg !450

51:                                               ; preds = %49, %43
  call void @llvm.dbg.declare(metadata %struct.mqtt_client* %10, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata [2048 x i8]* %11, metadata !453, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata [1024 x i8]* %12, metadata !458, metadata !DIExpression()), !dbg !462
  %52 = load i32, i32* %9, align 4, !dbg !463
  %53 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0, !dbg !464
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0, !dbg !465
  %55 = call i32 bitcast (i32 (%struct.mqtt_client.7*, i32, i8*, i64, i8*, i64, void (i8**, %struct.mqtt_response_publish*)*)* @mqtt_init to i32 (%struct.mqtt_client*, i32, i8*, i64, i8*, i64, void (i8**, %struct.mqtt_response_publish*)*)*)(%struct.mqtt_client* %10, i32 %52, i8* %53, i64 2048, i8* %54, i64 1024, void (i8**, %struct.mqtt_response_publish*)* @publish_callback), !dbg !466
  call void @llvm.dbg.declare(metadata i8** %13, metadata !467, metadata !DIExpression()), !dbg !468
  store i8* null, i8** %13, align 8, !dbg !468
  call void @llvm.dbg.declare(metadata i8* %14, metadata !469, metadata !DIExpression()), !dbg !470
  store i8 2, i8* %14, align 1, !dbg !470
  %56 = load i8*, i8** %13, align 8, !dbg !471
  %57 = load i8, i8* %14, align 1, !dbg !472
  %58 = call i32 bitcast (i32 (%struct.mqtt_client.7*, i8*, i8*, i8*, i64, i8*, i8*, i8, i16)* @mqtt_connect to i32 (%struct.mqtt_client*, i8*, i8*, i8*, i64, i8*, i8*, i8, i16)*)(%struct.mqtt_client* %10, i8* %56, i8* null, i8* null, i64 0, i8* null, i8* null, i8 zeroext %57, i16 zeroext 400), !dbg !473
  %59 = getelementptr inbounds %struct.mqtt_client, %struct.mqtt_client* %10, i32 0, i32 6, !dbg !474
  %60 = load i32, i32* %59, align 8, !dbg !474
  %61 = icmp ne i32 %60, 1, !dbg !476
  br i1 %61, label %62, label %69, !dbg !477

62:                                               ; preds = %51
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !478
  %64 = getelementptr inbounds %struct.mqtt_client, %struct.mqtt_client* %10, i32 0, i32 6, !dbg !480
  %65 = load i32, i32* %64, align 8, !dbg !480
  %66 = call i8* @mqtt_error_str(i32 %65), !dbg !481
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %66), !dbg !482
  %68 = load i32, i32* %9, align 4, !dbg !483
  call void @exit_example(i32 1, i32 %68, i64* null), !dbg !484
  br label %69, !dbg !485

69:                                               ; preds = %62, %51
  call void @llvm.dbg.declare(metadata i64* %15, metadata !486, metadata !DIExpression()), !dbg !488
  %70 = bitcast %struct.mqtt_client* %10 to i8*, !dbg !489
  %71 = call i32 @pthread_create(i64* %15, %union.pthread_attr_t* null, i8* (i8*)* @client_refresher, i8* %70) #10, !dbg !491
  %72 = icmp ne i32 %71, 0, !dbg !491
  br i1 %72, label %73, label %77, !dbg !492

73:                                               ; preds = %69
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !493
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0)), !dbg !495
  %76 = load i32, i32* %9, align 4, !dbg !496
  call void @exit_example(i32 1, i32 %76, i64* null), !dbg !497
  br label %77, !dbg !498

77:                                               ; preds = %73, %69
  %78 = load i8**, i8*** %5, align 8, !dbg !499
  %79 = getelementptr inbounds i8*, i8** %78, i64 0, !dbg !499
  %80 = load i8*, i8** %79, align 8, !dbg !499
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %80), !dbg !500
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0)), !dbg !501
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0)), !dbg !502
  br label %84, !dbg !503

84:                                               ; preds = %118, %77
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !504
  %86 = call i32 @fgetc(%struct._IO_FILE* %85), !dbg !505
  %87 = icmp eq i32 %86, 10, !dbg !506
  br i1 %87, label %88, label %119, !dbg !503

88:                                               ; preds = %84
  call void @llvm.dbg.declare(metadata i64* %16, metadata !507, metadata !DIExpression()), !dbg !509
  %89 = call i64 @time(i64* %16) #10, !dbg !510
  call void @llvm.dbg.declare(metadata %struct.tm** %17, metadata !511, metadata !DIExpression()), !dbg !527
  %90 = call %struct.tm* @localtime(i64* %16) #10, !dbg !528
  store %struct.tm* %90, %struct.tm** %17, align 8, !dbg !527
  call void @llvm.dbg.declare(metadata [26 x i8]* %18, metadata !529, metadata !DIExpression()), !dbg !533
  %91 = getelementptr inbounds [26 x i8], [26 x i8]* %18, i64 0, i64 0, !dbg !534
  %92 = load %struct.tm*, %struct.tm** %17, align 8, !dbg !535
  %93 = call i64 @strftime(i8* %91, i64 26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), %struct.tm* %92) #10, !dbg !536
  call void @llvm.dbg.declare(metadata [256 x i8]* %19, metadata !537, metadata !DIExpression()), !dbg !541
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !542
  %95 = getelementptr inbounds [26 x i8], [26 x i8]* %18, i64 0, i64 0, !dbg !543
  %96 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %94, i64 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %95) #10, !dbg !544
  %97 = load i8**, i8*** %5, align 8, !dbg !545
  %98 = getelementptr inbounds i8*, i8** %97, i64 0, !dbg !545
  %99 = load i8*, i8** %98, align 8, !dbg !545
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !546
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %99, i8* %100), !dbg !547
  %102 = load i8*, i8** %8, align 8, !dbg !548
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !549
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !550
  %105 = call i64 @strlen(i8* %104) #11, !dbg !551
  %106 = add i64 %105, 1, !dbg !552
  %107 = call i32 bitcast (i32 (%struct.mqtt_client.7*, i8*, i8*, i64, i8)* @mqtt_publish to i32 (%struct.mqtt_client*, i8*, i8*, i64, i8)*)(%struct.mqtt_client* %10, i8* %102, i8* %103, i64 %106, i8 zeroext 0), !dbg !553
  %108 = getelementptr inbounds %struct.mqtt_client, %struct.mqtt_client* %10, i32 0, i32 6, !dbg !554
  %109 = load i32, i32* %108, align 8, !dbg !554
  %110 = icmp ne i32 %109, 1, !dbg !556
  br i1 %110, label %111, label %118, !dbg !557

111:                                              ; preds = %88
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !558
  %113 = getelementptr inbounds %struct.mqtt_client, %struct.mqtt_client* %10, i32 0, i32 6, !dbg !560
  %114 = load i32, i32* %113, align 8, !dbg !560
  %115 = call i8* @mqtt_error_str(i32 %114), !dbg !561
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %115), !dbg !562
  %117 = load i32, i32* %9, align 4, !dbg !563
  call void @exit_example(i32 1, i32 %117, i64* %15), !dbg !564
  br label %118, !dbg !565

118:                                              ; preds = %111, %88
  br label %84, !dbg !503, !llvm.loop !566

119:                                              ; preds = %84
  %120 = load i8**, i8*** %5, align 8, !dbg !568
  %121 = getelementptr inbounds i8*, i8** %120, i64 0, !dbg !568
  %122 = load i8*, i8** %121, align 8, !dbg !568
  %123 = load i8*, i8** %6, align 8, !dbg !569
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %122, i8* %123), !dbg !570
  %125 = call i32 @sleep(i32 1), !dbg !571
  %126 = load i32, i32* %9, align 4, !dbg !572
  call void @exit_example(i32 0, i32 %126, i64* %15), !dbg !573
  %127 = load i32, i32* %3, align 4, !dbg !574
  ret i32 %127, !dbg !574
}

declare dso_local void @perror(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_example(i32 %0, i32 %1, i64* %2) #0 !dbg !575 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !579, metadata !DIExpression()), !dbg !580
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !581, metadata !DIExpression()), !dbg !582
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !583, metadata !DIExpression()), !dbg !584
  %7 = load i32, i32* %5, align 4, !dbg !585
  %8 = icmp ne i32 %7, -1, !dbg !587
  br i1 %8, label %9, label %12, !dbg !588

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4, !dbg !589
  %11 = call i32 @close(i32 %10), !dbg !590
  br label %12, !dbg !590

12:                                               ; preds = %9, %3
  %13 = load i64*, i64** %6, align 8, !dbg !591
  %14 = icmp ne i64* %13, null, !dbg !593
  br i1 %14, label %15, label %19, !dbg !594

15:                                               ; preds = %12
  %16 = load i64*, i64** %6, align 8, !dbg !595
  %17 = load i64, i64* %16, align 8, !dbg !596
  %18 = call i32 @pthread_cancel(i64 %17), !dbg !597
  br label %19, !dbg !597

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %4, align 4, !dbg !598
  call void @exit(i32 %20) #12, !dbg !599
  unreachable, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @publish_callback(i8** %0, %struct.mqtt_response_publish* %1) #0 !dbg !600 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.mqtt_response_publish*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !601, metadata !DIExpression()), !dbg !602
  store %struct.mqtt_response_publish* %1, %struct.mqtt_response_publish** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response_publish** %4, metadata !603, metadata !DIExpression()), !dbg !604
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @client_refresher(i8* %0) #0 !dbg !606 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !609, metadata !DIExpression()), !dbg !610
  br label %3, !dbg !611

3:                                                ; preds = %1, %3
  %4 = load i8*, i8** %2, align 8, !dbg !612
  %5 = bitcast i8* %4 to %struct.mqtt_client*, !dbg !614
  %6 = call i32 bitcast (i32 (%struct.mqtt_client.7*)* @mqtt_sync to i32 (%struct.mqtt_client*)*)(%struct.mqtt_client* %5), !dbg !615
  %7 = call i32 @usleep(i32 100000), !dbg !616
  br label %3, !dbg !611, !llvm.loop !617
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @fgetc(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) #4

; Function Attrs: nounwind
declare dso_local i64 @strftime(i8*, i64, i8*, %struct.tm*) #4

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i32 @sleep(i32) #3

declare dso_local i32 @usleep(i32) #3

declare dso_local i32 @pthread_cancel(i64) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_sync(%struct.mqtt_client.7* %0) #0 !dbg !619 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mqtt_client.7*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %3, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata i32* %4, metadata !699, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.declare(metadata i32* %5, metadata !701, metadata !DIExpression()), !dbg !702
  store i32 0, i32* %5, align 4, !dbg !702
  %6 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !703
  %7 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %6, i32 0, i32 16, !dbg !703
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %7) #10, !dbg !703
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !704
  %10 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %9, i32 0, i32 6, !dbg !706
  %11 = load i32, i32* %10, align 8, !dbg !706
  %12 = icmp ne i32 %11, -2147483620, !dbg !707
  br i1 %12, label %13, label %30, !dbg !708

13:                                               ; preds = %1
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !709
  %15 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %14, i32 0, i32 6, !dbg !710
  %16 = load i32, i32* %15, align 8, !dbg !710
  %17 = icmp ne i32 %16, 1, !dbg !711
  br i1 %17, label %18, label %30, !dbg !712

18:                                               ; preds = %13
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !713
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 13, !dbg !714
  %21 = load void (%struct.mqtt_client.7*, i8**)*, void (%struct.mqtt_client.7*, i8**)** %20, align 8, !dbg !714
  %22 = icmp ne void (%struct.mqtt_client.7*, i8**)* %21, null, !dbg !715
  br i1 %22, label %23, label %30, !dbg !716

23:                                               ; preds = %18
  %24 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !717
  %25 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %24, i32 0, i32 13, !dbg !719
  %26 = load void (%struct.mqtt_client.7*, i8**)*, void (%struct.mqtt_client.7*, i8**)** %25, align 8, !dbg !719
  %27 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !720
  %28 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !721
  %29 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %28, i32 0, i32 14, !dbg !722
  call void %26(%struct.mqtt_client.7* %27, i8** %29), !dbg !717
  br label %42, !dbg !723

30:                                               ; preds = %18, %13, %1
  %31 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !724
  %32 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %31, i32 0, i32 6, !dbg !727
  %33 = load i32, i32* %32, align 8, !dbg !727
  %34 = icmp eq i32 %33, -2147483620, !dbg !728
  br i1 %34, label %35, label %38, !dbg !729

35:                                               ; preds = %30
  store i32 1, i32* %5, align 4, !dbg !730
  %36 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !732
  %37 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %36, i32 0, i32 6, !dbg !733
  store i32 1, i32* %37, align 8, !dbg !734
  br label %38, !dbg !735

38:                                               ; preds = %35, %30
  %39 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !736
  %40 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %39, i32 0, i32 16, !dbg !736
  %41 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %40) #10, !dbg !736
  br label %42

42:                                               ; preds = %38, %23
  %43 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !737
  %44 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %43, i32 0, i32 12, !dbg !739
  %45 = bitcast {}** %44 to i32 (%struct.mqtt_client.7*)**, !dbg !739
  %46 = load i32 (%struct.mqtt_client.7*)*, i32 (%struct.mqtt_client.7*)** %45, align 8, !dbg !739
  %47 = icmp ne i32 (%struct.mqtt_client.7*)* %46, null, !dbg !740
  br i1 %47, label %48, label %66, !dbg !741

48:                                               ; preds = %42
  %49 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !742
  %50 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %49, i32 0, i32 16, !dbg !742
  %51 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %50) #10, !dbg !742
  %52 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !744
  %53 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %52, i32 0, i32 12, !dbg !745
  %54 = bitcast {}** %53 to i32 (%struct.mqtt_client.7*)**, !dbg !745
  %55 = load i32 (%struct.mqtt_client.7*)*, i32 (%struct.mqtt_client.7*)** %54, align 8, !dbg !745
  %56 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !746
  %57 = call i32 %55(%struct.mqtt_client.7* %56), !dbg !744
  store i32 %57, i32* %4, align 4, !dbg !747
  %58 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !748
  %59 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %58, i32 0, i32 16, !dbg !748
  %60 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %59) #10, !dbg !748
  %61 = load i32, i32* %4, align 4, !dbg !749
  %62 = icmp ne i32 %61, 1, !dbg !751
  br i1 %62, label %63, label %65, !dbg !752

63:                                               ; preds = %48
  %64 = load i32, i32* %4, align 4, !dbg !753
  store i32 %64, i32* %2, align 4, !dbg !754
  br label %97, !dbg !754

65:                                               ; preds = %48
  br label %66, !dbg !755

66:                                               ; preds = %65, %42
  %67 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !756
  %68 = call i64 @__mqtt_recv(%struct.mqtt_client.7* %67), !dbg !757
  %69 = trunc i64 %68 to i32, !dbg !757
  store i32 %69, i32* %4, align 4, !dbg !758
  %70 = load i32, i32* %4, align 4, !dbg !759
  %71 = icmp ne i32 %70, 1, !dbg !761
  br i1 %71, label %72, label %74, !dbg !762

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4, !dbg !763
  store i32 %73, i32* %2, align 4, !dbg !764
  br label %97, !dbg !764

74:                                               ; preds = %66
  %75 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !765
  %76 = call i64 @__mqtt_send(%struct.mqtt_client.7* %75), !dbg !766
  %77 = trunc i64 %76 to i32, !dbg !766
  store i32 %77, i32* %4, align 4, !dbg !767
  %78 = load i32, i32* %5, align 4, !dbg !768
  %79 = icmp ne i32 %78, 0, !dbg !768
  br i1 %79, label %80, label %95, !dbg !770

80:                                               ; preds = %74
  %81 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !771
  %82 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %81, i32 0, i32 13, !dbg !772
  %83 = load void (%struct.mqtt_client.7*, i8**)*, void (%struct.mqtt_client.7*, i8**)** %82, align 8, !dbg !772
  %84 = icmp ne void (%struct.mqtt_client.7*, i8**)* %83, null, !dbg !773
  br i1 %84, label %85, label %95, !dbg !774

85:                                               ; preds = %80
  %86 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !775
  %87 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %86, i32 0, i32 16, !dbg !775
  %88 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %87) #10, !dbg !775
  %89 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !777
  %90 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %89, i32 0, i32 13, !dbg !778
  %91 = load void (%struct.mqtt_client.7*, i8**)*, void (%struct.mqtt_client.7*, i8**)** %90, align 8, !dbg !778
  %92 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !779
  %93 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !780
  %94 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %93, i32 0, i32 14, !dbg !781
  call void %91(%struct.mqtt_client.7* %92, i8** %94), !dbg !777
  br label %95, !dbg !782

95:                                               ; preds = %85, %80, %74
  %96 = load i32, i32* %4, align 4, !dbg !783
  store i32 %96, i32* %2, align 4, !dbg !784
  br label %97, !dbg !784

97:                                               ; preds = %95, %72, %63
  %98 = load i32, i32* %2, align 4, !dbg !785
  ret i32 %98, !dbg !785
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #4

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_recv(%struct.mqtt_client.7* %0) #0 !dbg !786 {
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
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %3, metadata !792, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata %struct.mqtt_response* %4, metadata !794, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.declare(metadata i64* %5, metadata !844, metadata !DIExpression()), !dbg !845
  store i64 1, i64* %5, align 8, !dbg !845
  %12 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !846
  %13 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %12, i32 0, i32 16, !dbg !846
  %14 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %13) #10, !dbg !846
  br label %15, !dbg !847

15:                                               ; preds = %464, %1
  %16 = load i64, i64* %5, align 8, !dbg !848
  %17 = icmp eq i64 %16, 1, !dbg !849
  br i1 %17, label %18, label %504, !dbg !847

18:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata i64* %6, metadata !850, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.declare(metadata i64* %7, metadata !853, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %8, metadata !855, metadata !DIExpression()), !dbg !856
  store %struct.mqtt_queued_message* null, %struct.mqtt_queued_message** %8, align 8, !dbg !856
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !857
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 0, !dbg !858
  %21 = load i32, i32* %20, align 8, !dbg !858
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !859
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 15, !dbg !860
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 2, !dbg !861
  %25 = load i8*, i8** %24, align 8, !dbg !861
  %26 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !862
  %27 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %26, i32 0, i32 15, !dbg !863
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 3, !dbg !864
  %29 = load i64, i64* %28, align 8, !dbg !864
  %30 = call i64 @mqtt_pal_recvall(i32 %21, i8* %25, i64 %29, i32 0), !dbg !865
  store i64 %30, i64* %6, align 8, !dbg !866
  %31 = load i64, i64* %6, align 8, !dbg !867
  %32 = icmp slt i64 %31, 0, !dbg !869
  br i1 %32, label %33, label %42, !dbg !870

33:                                               ; preds = %18
  %34 = load i64, i64* %6, align 8, !dbg !871
  %35 = trunc i64 %34 to i32, !dbg !871
  %36 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !873
  %37 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %36, i32 0, i32 6, !dbg !874
  store i32 %35, i32* %37, align 8, !dbg !875
  %38 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !876
  %39 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %38, i32 0, i32 16, !dbg !876
  %40 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %39) #10, !dbg !876
  %41 = load i64, i64* %6, align 8, !dbg !877
  store i64 %41, i64* %2, align 8, !dbg !878
  br label %509, !dbg !878

42:                                               ; preds = %18
  %43 = load i64, i64* %6, align 8, !dbg !879
  %44 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !881
  %45 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %44, i32 0, i32 15, !dbg !882
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 2, !dbg !883
  %47 = load i8*, i8** %46, align 8, !dbg !884
  %48 = getelementptr inbounds i8, i8* %47, i64 %43, !dbg !884
  store i8* %48, i8** %46, align 8, !dbg !884
  %49 = load i64, i64* %6, align 8, !dbg !885
  %50 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !886
  %51 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %50, i32 0, i32 15, !dbg !887
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 3, !dbg !888
  %53 = load i64, i64* %52, align 8, !dbg !889
  %54 = sub i64 %53, %49, !dbg !889
  store i64 %54, i64* %52, align 8, !dbg !889
  br label %55

55:                                               ; preds = %42
  %56 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !890
  %57 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %56, i32 0, i32 15, !dbg !891
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0, !dbg !892
  %59 = load i8*, i8** %58, align 8, !dbg !892
  %60 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !893
  %61 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %60, i32 0, i32 15, !dbg !894
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 2, !dbg !895
  %63 = load i8*, i8** %62, align 8, !dbg !895
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !896
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 15, !dbg !897
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0, !dbg !898
  %67 = load i8*, i8** %66, align 8, !dbg !898
  %68 = ptrtoint i8* %63 to i64, !dbg !899
  %69 = ptrtoint i8* %67 to i64, !dbg !899
  %70 = sub i64 %68, %69, !dbg !899
  %71 = call i64 @mqtt_unpack_response(%struct.mqtt_response* %4, i8* %59, i64 %70), !dbg !900
  store i64 %71, i64* %7, align 8, !dbg !901
  %72 = load i64, i64* %7, align 8, !dbg !902
  %73 = icmp slt i64 %72, 0, !dbg !904
  br i1 %73, label %74, label %83, !dbg !905

74:                                               ; preds = %55
  %75 = load i64, i64* %7, align 8, !dbg !906
  %76 = trunc i64 %75 to i32, !dbg !906
  %77 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !908
  %78 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %77, i32 0, i32 6, !dbg !909
  store i32 %76, i32* %78, align 8, !dbg !910
  %79 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !911
  %80 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %79, i32 0, i32 16, !dbg !911
  %81 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %80) #10, !dbg !911
  %82 = load i64, i64* %7, align 8, !dbg !912
  store i64 %82, i64* %2, align 8, !dbg !913
  br label %509, !dbg !913

83:                                               ; preds = %55
  %84 = load i64, i64* %7, align 8, !dbg !914
  %85 = icmp eq i64 %84, 0, !dbg !916
  br i1 %85, label %86, label %102, !dbg !917

86:                                               ; preds = %83
  %87 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !918
  %88 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %87, i32 0, i32 15, !dbg !921
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 3, !dbg !922
  %90 = load i64, i64* %89, align 8, !dbg !922
  %91 = icmp eq i64 %90, 0, !dbg !923
  br i1 %91, label %92, label %98, !dbg !924

92:                                               ; preds = %86
  %93 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !925
  %94 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %93, i32 0, i32 6, !dbg !927
  store i32 -2147483629, i32* %94, align 8, !dbg !928
  %95 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !929
  %96 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %95, i32 0, i32 16, !dbg !929
  %97 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %96) #10, !dbg !929
  store i64 -2147483629, i64* %2, align 8, !dbg !930
  br label %509, !dbg !930

98:                                               ; preds = %86
  %99 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !931
  %100 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %99, i32 0, i32 16, !dbg !931
  %101 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %100) #10, !dbg !931
  store i64 1, i64* %2, align 8, !dbg !932
  br label %509, !dbg !932

102:                                              ; preds = %83
  br label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 0, !dbg !933
  %105 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %104, i32 0, i32 0, !dbg !934
  %106 = load i32, i32* %105, align 8, !dbg !934
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
  ], !dbg !935

107:                                              ; preds = %103
  %108 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !936
  %109 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %108, i32 0, i32 17, !dbg !938
  %110 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %109, i32 1, i16* null), !dbg !939
  store %struct.mqtt_queued_message* %110, %struct.mqtt_queued_message** %8, align 8, !dbg !940
  %111 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !941
  %112 = icmp eq %struct.mqtt_queued_message* %111, null, !dbg !943
  br i1 %112, label %113, label %116, !dbg !944

113:                                              ; preds = %107
  %114 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !945
  %115 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %114, i32 0, i32 6, !dbg !947
  store i32 -2147483628, i32* %115, align 8, !dbg !948
  store i64 -2147483628, i64* %5, align 8, !dbg !949
  br label %464, !dbg !950

116:                                              ; preds = %107
  %117 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !951
  %118 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %117, i32 0, i32 2, !dbg !952
  store i32 2, i32* %118, align 8, !dbg !953
  %119 = call i64 @time(i64* null) #10, !dbg !954
  %120 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !955
  %121 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %120, i32 0, i32 3, !dbg !956
  %122 = load i64, i64* %121, align 8, !dbg !956
  %123 = sub nsw i64 %119, %122, !dbg !957
  %124 = sitofp i64 %123 to double, !dbg !958
  %125 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !959
  %126 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %125, i32 0, i32 9, !dbg !960
  store double %124, double* %126, align 8, !dbg !961
  %127 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !962
  %128 = bitcast %union.anon* %127 to %struct.mqtt_response_connack*, !dbg !964
  %129 = getelementptr inbounds %struct.mqtt_response_connack, %struct.mqtt_response_connack* %128, i32 0, i32 1, !dbg !965
  %130 = load i32, i32* %129, align 4, !dbg !965
  %131 = icmp ne i32 %130, 0, !dbg !966
  br i1 %131, label %132, label %145, !dbg !967

132:                                              ; preds = %116
  %133 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !968
  %134 = bitcast %union.anon* %133 to %struct.mqtt_response_connack*, !dbg !971
  %135 = getelementptr inbounds %struct.mqtt_response_connack, %struct.mqtt_response_connack* %134, i32 0, i32 1, !dbg !972
  %136 = load i32, i32* %135, align 4, !dbg !972
  %137 = icmp eq i32 %136, 2, !dbg !973
  br i1 %137, label %138, label %141, !dbg !974

138:                                              ; preds = %132
  %139 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !975
  %140 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %139, i32 0, i32 6, !dbg !977
  store i32 -2147483643, i32* %140, align 8, !dbg !978
  store i64 -2147483643, i64* %5, align 8, !dbg !979
  br label %144, !dbg !980

141:                                              ; preds = %132
  %142 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !981
  %143 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %142, i32 0, i32 6, !dbg !983
  store i32 -2147483626, i32* %143, align 8, !dbg !984
  store i64 -2147483626, i64* %5, align 8, !dbg !985
  br label %144

144:                                              ; preds = %141, %138
  br label %464, !dbg !986

145:                                              ; preds = %116
  br label %464, !dbg !987

146:                                              ; preds = %103
  %147 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !988
  %148 = bitcast %union.anon* %147 to %struct.mqtt_response_publish*, !dbg !990
  %149 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %148, i32 0, i32 1, !dbg !991
  %150 = load i8, i8* %149, align 1, !dbg !991
  %151 = zext i8 %150 to i32, !dbg !992
  %152 = icmp eq i32 %151, 1, !dbg !993
  br i1 %152, label %153, label %169, !dbg !994

153:                                              ; preds = %146
  %154 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !995
  %155 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !997
  %156 = bitcast %union.anon* %155 to %struct.mqtt_response_publish*, !dbg !998
  %157 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %156, i32 0, i32 5, !dbg !999
  %158 = load i16, i16* %157, align 8, !dbg !999
  %159 = call i64 @__mqtt_puback(%struct.mqtt_client.7* %154, i16 zeroext %158), !dbg !1000
  store i64 %159, i64* %6, align 8, !dbg !1001
  %160 = load i64, i64* %6, align 8, !dbg !1002
  %161 = icmp ne i64 %160, 1, !dbg !1004
  br i1 %161, label %162, label %168, !dbg !1005

162:                                              ; preds = %153
  %163 = load i64, i64* %6, align 8, !dbg !1006
  %164 = trunc i64 %163 to i32, !dbg !1006
  %165 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1008
  %166 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %165, i32 0, i32 6, !dbg !1009
  store i32 %164, i32* %166, align 8, !dbg !1010
  %167 = load i64, i64* %6, align 8, !dbg !1011
  store i64 %167, i64* %5, align 8, !dbg !1012
  br label %464, !dbg !1013

168:                                              ; preds = %153
  br label %202, !dbg !1014

169:                                              ; preds = %146
  %170 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1015
  %171 = bitcast %union.anon* %170 to %struct.mqtt_response_publish*, !dbg !1017
  %172 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %171, i32 0, i32 1, !dbg !1018
  %173 = load i8, i8* %172, align 1, !dbg !1018
  %174 = zext i8 %173 to i32, !dbg !1019
  %175 = icmp eq i32 %174, 2, !dbg !1020
  br i1 %175, label %176, label %201, !dbg !1021

176:                                              ; preds = %169
  %177 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1022
  %178 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %177, i32 0, i32 17, !dbg !1025
  %179 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1026
  %180 = bitcast %union.anon* %179 to %struct.mqtt_response_publish*, !dbg !1027
  %181 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %180, i32 0, i32 5, !dbg !1028
  %182 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %178, i32 5, i16* %181), !dbg !1029
  %183 = icmp ne %struct.mqtt_queued_message* %182, null, !dbg !1030
  br i1 %183, label %184, label %185, !dbg !1031

184:                                              ; preds = %176
  br label %464, !dbg !1032

185:                                              ; preds = %176
  %186 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1034
  %187 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1035
  %188 = bitcast %union.anon* %187 to %struct.mqtt_response_publish*, !dbg !1036
  %189 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %188, i32 0, i32 5, !dbg !1037
  %190 = load i16, i16* %189, align 8, !dbg !1037
  %191 = call i64 @__mqtt_pubrec(%struct.mqtt_client.7* %186, i16 zeroext %190), !dbg !1038
  store i64 %191, i64* %6, align 8, !dbg !1039
  %192 = load i64, i64* %6, align 8, !dbg !1040
  %193 = icmp ne i64 %192, 1, !dbg !1042
  br i1 %193, label %194, label %200, !dbg !1043

194:                                              ; preds = %185
  %195 = load i64, i64* %6, align 8, !dbg !1044
  %196 = trunc i64 %195 to i32, !dbg !1044
  %197 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1046
  %198 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %197, i32 0, i32 6, !dbg !1047
  store i32 %196, i32* %198, align 8, !dbg !1048
  %199 = load i64, i64* %6, align 8, !dbg !1049
  store i64 %199, i64* %5, align 8, !dbg !1050
  br label %464, !dbg !1051

200:                                              ; preds = %185
  br label %201, !dbg !1052

201:                                              ; preds = %200, %169
  br label %202

202:                                              ; preds = %201, %168
  %203 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1053
  %204 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %203, i32 0, i32 10, !dbg !1054
  %205 = load void (i8**, %struct.mqtt_response_publish*)*, void (i8**, %struct.mqtt_response_publish*)** %204, align 8, !dbg !1054
  %206 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1055
  %207 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %206, i32 0, i32 11, !dbg !1056
  %208 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1057
  %209 = bitcast %union.anon* %208 to %struct.mqtt_response_publish*, !dbg !1058
  call void %205(i8** %207, %struct.mqtt_response_publish* %209), !dbg !1053
  br label %464, !dbg !1059

210:                                              ; preds = %103
  %211 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1060
  %212 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %211, i32 0, i32 17, !dbg !1061
  %213 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1062
  %214 = bitcast %union.anon* %213 to %struct.mqtt_response_puback*, !dbg !1063
  %215 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %214, i32 0, i32 0, !dbg !1064
  %216 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %212, i32 3, i16* %215), !dbg !1065
  store %struct.mqtt_queued_message* %216, %struct.mqtt_queued_message** %8, align 8, !dbg !1066
  %217 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1067
  %218 = icmp eq %struct.mqtt_queued_message* %217, null, !dbg !1069
  br i1 %218, label %219, label %222, !dbg !1070

219:                                              ; preds = %210
  %220 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1071
  %221 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %220, i32 0, i32 6, !dbg !1073
  store i32 -2147483628, i32* %221, align 8, !dbg !1074
  store i64 -2147483628, i64* %5, align 8, !dbg !1075
  br label %464, !dbg !1076

222:                                              ; preds = %210
  %223 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1077
  %224 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %223, i32 0, i32 2, !dbg !1078
  store i32 2, i32* %224, align 8, !dbg !1079
  %225 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1080
  %226 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %225, i32 0, i32 9, !dbg !1081
  %227 = load double, double* %226, align 8, !dbg !1081
  %228 = fmul double 8.750000e-01, %227, !dbg !1082
  %229 = call i64 @time(i64* null) #10, !dbg !1083
  %230 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1084
  %231 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %230, i32 0, i32 3, !dbg !1085
  %232 = load i64, i64* %231, align 8, !dbg !1085
  %233 = sub nsw i64 %229, %232, !dbg !1086
  %234 = sitofp i64 %233 to double, !dbg !1087
  %235 = fmul double 1.250000e-01, %234, !dbg !1088
  %236 = fadd double %228, %235, !dbg !1089
  %237 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1090
  %238 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %237, i32 0, i32 9, !dbg !1091
  store double %236, double* %238, align 8, !dbg !1092
  br label %464, !dbg !1093

239:                                              ; preds = %103
  %240 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1094
  %241 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %240, i32 0, i32 17, !dbg !1096
  %242 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1097
  %243 = bitcast %union.anon* %242 to %struct.mqtt_response_puback*, !dbg !1098
  %244 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %243, i32 0, i32 0, !dbg !1099
  %245 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %241, i32 6, i16* %244), !dbg !1100
  %246 = icmp ne %struct.mqtt_queued_message* %245, null, !dbg !1101
  br i1 %246, label %247, label %248, !dbg !1102

247:                                              ; preds = %239
  br label %464, !dbg !1103

248:                                              ; preds = %239
  %249 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1105
  %250 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %249, i32 0, i32 17, !dbg !1106
  %251 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1107
  %252 = bitcast %union.anon* %251 to %struct.mqtt_response_puback*, !dbg !1108
  %253 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %252, i32 0, i32 0, !dbg !1109
  %254 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %250, i32 3, i16* %253), !dbg !1110
  store %struct.mqtt_queued_message* %254, %struct.mqtt_queued_message** %8, align 8, !dbg !1111
  %255 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1112
  %256 = icmp eq %struct.mqtt_queued_message* %255, null, !dbg !1114
  br i1 %256, label %257, label %260, !dbg !1115

257:                                              ; preds = %248
  %258 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1116
  %259 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %258, i32 0, i32 6, !dbg !1118
  store i32 -2147483628, i32* %259, align 8, !dbg !1119
  store i64 -2147483628, i64* %5, align 8, !dbg !1120
  br label %464, !dbg !1121

260:                                              ; preds = %248
  %261 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1122
  %262 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %261, i32 0, i32 2, !dbg !1123
  store i32 2, i32* %262, align 8, !dbg !1124
  %263 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1125
  %264 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %263, i32 0, i32 9, !dbg !1126
  %265 = load double, double* %264, align 8, !dbg !1126
  %266 = fmul double 8.750000e-01, %265, !dbg !1127
  %267 = call i64 @time(i64* null) #10, !dbg !1128
  %268 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1129
  %269 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %268, i32 0, i32 3, !dbg !1130
  %270 = load i64, i64* %269, align 8, !dbg !1130
  %271 = sub nsw i64 %267, %270, !dbg !1131
  %272 = sitofp i64 %271 to double, !dbg !1132
  %273 = fmul double 1.250000e-01, %272, !dbg !1133
  %274 = fadd double %266, %273, !dbg !1134
  %275 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1135
  %276 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %275, i32 0, i32 9, !dbg !1136
  store double %274, double* %276, align 8, !dbg !1137
  %277 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1138
  %278 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1139
  %279 = bitcast %union.anon* %278 to %struct.mqtt_response_puback*, !dbg !1140
  %280 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %279, i32 0, i32 0, !dbg !1141
  %281 = load i16, i16* %280, align 8, !dbg !1141
  %282 = call i64 @__mqtt_pubrel(%struct.mqtt_client.7* %277, i16 zeroext %281), !dbg !1142
  store i64 %282, i64* %6, align 8, !dbg !1143
  %283 = load i64, i64* %6, align 8, !dbg !1144
  %284 = icmp ne i64 %283, 1, !dbg !1146
  br i1 %284, label %285, label %291, !dbg !1147

285:                                              ; preds = %260
  %286 = load i64, i64* %6, align 8, !dbg !1148
  %287 = trunc i64 %286 to i32, !dbg !1148
  %288 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1150
  %289 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %288, i32 0, i32 6, !dbg !1151
  store i32 %287, i32* %289, align 8, !dbg !1152
  %290 = load i64, i64* %6, align 8, !dbg !1153
  store i64 %290, i64* %5, align 8, !dbg !1154
  br label %464, !dbg !1155

291:                                              ; preds = %260
  br label %464, !dbg !1156

292:                                              ; preds = %103
  %293 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1157
  %294 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %293, i32 0, i32 17, !dbg !1158
  %295 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1159
  %296 = bitcast %union.anon* %295 to %struct.mqtt_response_puback*, !dbg !1160
  %297 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %296, i32 0, i32 0, !dbg !1161
  %298 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %294, i32 5, i16* %297), !dbg !1162
  store %struct.mqtt_queued_message* %298, %struct.mqtt_queued_message** %8, align 8, !dbg !1163
  %299 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1164
  %300 = icmp eq %struct.mqtt_queued_message* %299, null, !dbg !1166
  br i1 %300, label %301, label %304, !dbg !1167

301:                                              ; preds = %292
  %302 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1168
  %303 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %302, i32 0, i32 6, !dbg !1170
  store i32 -2147483628, i32* %303, align 8, !dbg !1171
  store i64 -2147483628, i64* %5, align 8, !dbg !1172
  br label %464, !dbg !1173

304:                                              ; preds = %292
  %305 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1174
  %306 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %305, i32 0, i32 2, !dbg !1175
  store i32 2, i32* %306, align 8, !dbg !1176
  %307 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1177
  %308 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %307, i32 0, i32 9, !dbg !1178
  %309 = load double, double* %308, align 8, !dbg !1178
  %310 = fmul double 8.750000e-01, %309, !dbg !1179
  %311 = call i64 @time(i64* null) #10, !dbg !1180
  %312 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1181
  %313 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %312, i32 0, i32 3, !dbg !1182
  %314 = load i64, i64* %313, align 8, !dbg !1182
  %315 = sub nsw i64 %311, %314, !dbg !1183
  %316 = sitofp i64 %315 to double, !dbg !1184
  %317 = fmul double 1.250000e-01, %316, !dbg !1185
  %318 = fadd double %310, %317, !dbg !1186
  %319 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1187
  %320 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %319, i32 0, i32 9, !dbg !1188
  store double %318, double* %320, align 8, !dbg !1189
  %321 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1190
  %322 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1191
  %323 = bitcast %union.anon* %322 to %struct.mqtt_response_puback*, !dbg !1192
  %324 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %323, i32 0, i32 0, !dbg !1193
  %325 = load i16, i16* %324, align 8, !dbg !1193
  %326 = call i64 @__mqtt_pubcomp(%struct.mqtt_client.7* %321, i16 zeroext %325), !dbg !1194
  store i64 %326, i64* %6, align 8, !dbg !1195
  %327 = load i64, i64* %6, align 8, !dbg !1196
  %328 = icmp ne i64 %327, 1, !dbg !1198
  br i1 %328, label %329, label %335, !dbg !1199

329:                                              ; preds = %304
  %330 = load i64, i64* %6, align 8, !dbg !1200
  %331 = trunc i64 %330 to i32, !dbg !1200
  %332 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1202
  %333 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %332, i32 0, i32 6, !dbg !1203
  store i32 %331, i32* %333, align 8, !dbg !1204
  %334 = load i64, i64* %6, align 8, !dbg !1205
  store i64 %334, i64* %5, align 8, !dbg !1206
  br label %464, !dbg !1207

335:                                              ; preds = %304
  br label %464, !dbg !1208

336:                                              ; preds = %103
  %337 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1209
  %338 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %337, i32 0, i32 17, !dbg !1210
  %339 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1211
  %340 = bitcast %union.anon* %339 to %struct.mqtt_response_puback*, !dbg !1212
  %341 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %340, i32 0, i32 0, !dbg !1213
  %342 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %338, i32 6, i16* %341), !dbg !1214
  store %struct.mqtt_queued_message* %342, %struct.mqtt_queued_message** %8, align 8, !dbg !1215
  %343 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1216
  %344 = icmp eq %struct.mqtt_queued_message* %343, null, !dbg !1218
  br i1 %344, label %345, label %348, !dbg !1219

345:                                              ; preds = %336
  %346 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1220
  %347 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %346, i32 0, i32 6, !dbg !1222
  store i32 -2147483628, i32* %347, align 8, !dbg !1223
  store i64 -2147483628, i64* %5, align 8, !dbg !1224
  br label %464, !dbg !1225

348:                                              ; preds = %336
  %349 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1226
  %350 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %349, i32 0, i32 2, !dbg !1227
  store i32 2, i32* %350, align 8, !dbg !1228
  %351 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1229
  %352 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %351, i32 0, i32 9, !dbg !1230
  %353 = load double, double* %352, align 8, !dbg !1230
  %354 = fmul double 8.750000e-01, %353, !dbg !1231
  %355 = call i64 @time(i64* null) #10, !dbg !1232
  %356 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1233
  %357 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %356, i32 0, i32 3, !dbg !1234
  %358 = load i64, i64* %357, align 8, !dbg !1234
  %359 = sub nsw i64 %355, %358, !dbg !1235
  %360 = sitofp i64 %359 to double, !dbg !1236
  %361 = fmul double 1.250000e-01, %360, !dbg !1237
  %362 = fadd double %354, %361, !dbg !1238
  %363 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1239
  %364 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %363, i32 0, i32 9, !dbg !1240
  store double %362, double* %364, align 8, !dbg !1241
  br label %464, !dbg !1242

365:                                              ; preds = %103
  %366 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1243
  %367 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %366, i32 0, i32 17, !dbg !1244
  %368 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1245
  %369 = bitcast %union.anon* %368 to %struct.mqtt_response_suback*, !dbg !1246
  %370 = getelementptr inbounds %struct.mqtt_response_suback, %struct.mqtt_response_suback* %369, i32 0, i32 0, !dbg !1247
  %371 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %367, i32 8, i16* %370), !dbg !1248
  store %struct.mqtt_queued_message* %371, %struct.mqtt_queued_message** %8, align 8, !dbg !1249
  %372 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1250
  %373 = icmp eq %struct.mqtt_queued_message* %372, null, !dbg !1252
  br i1 %373, label %374, label %377, !dbg !1253

374:                                              ; preds = %365
  %375 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1254
  %376 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %375, i32 0, i32 6, !dbg !1256
  store i32 -2147483628, i32* %376, align 8, !dbg !1257
  store i64 -2147483628, i64* %5, align 8, !dbg !1258
  br label %464, !dbg !1259

377:                                              ; preds = %365
  %378 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1260
  %379 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %378, i32 0, i32 2, !dbg !1261
  store i32 2, i32* %379, align 8, !dbg !1262
  %380 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1263
  %381 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %380, i32 0, i32 9, !dbg !1264
  %382 = load double, double* %381, align 8, !dbg !1264
  %383 = fmul double 8.750000e-01, %382, !dbg !1265
  %384 = call i64 @time(i64* null) #10, !dbg !1266
  %385 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1267
  %386 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %385, i32 0, i32 3, !dbg !1268
  %387 = load i64, i64* %386, align 8, !dbg !1268
  %388 = sub nsw i64 %384, %387, !dbg !1269
  %389 = sitofp i64 %388 to double, !dbg !1270
  %390 = fmul double 1.250000e-01, %389, !dbg !1271
  %391 = fadd double %383, %390, !dbg !1272
  %392 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1273
  %393 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %392, i32 0, i32 9, !dbg !1274
  store double %391, double* %393, align 8, !dbg !1275
  %394 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1276
  %395 = bitcast %union.anon* %394 to %struct.mqtt_response_suback*, !dbg !1278
  %396 = getelementptr inbounds %struct.mqtt_response_suback, %struct.mqtt_response_suback* %395, i32 0, i32 1, !dbg !1279
  %397 = load i8*, i8** %396, align 8, !dbg !1279
  %398 = getelementptr inbounds i8, i8* %397, i64 0, !dbg !1280
  %399 = load i8, i8* %398, align 1, !dbg !1280
  %400 = zext i8 %399 to i32, !dbg !1280
  %401 = icmp eq i32 %400, 128, !dbg !1281
  br i1 %401, label %402, label %405, !dbg !1282

402:                                              ; preds = %377
  %403 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1283
  %404 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %403, i32 0, i32 6, !dbg !1285
  store i32 -2147483625, i32* %404, align 8, !dbg !1286
  store i64 -2147483625, i64* %5, align 8, !dbg !1287
  br label %464, !dbg !1288

405:                                              ; preds = %377
  br label %464, !dbg !1289

406:                                              ; preds = %103
  %407 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1290
  %408 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %407, i32 0, i32 17, !dbg !1291
  %409 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %4, i32 0, i32 1, !dbg !1292
  %410 = bitcast %union.anon* %409 to %struct.mqtt_response_puback*, !dbg !1293
  %411 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %410, i32 0, i32 0, !dbg !1294
  %412 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %408, i32 10, i16* %411), !dbg !1295
  store %struct.mqtt_queued_message* %412, %struct.mqtt_queued_message** %8, align 8, !dbg !1296
  %413 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1297
  %414 = icmp eq %struct.mqtt_queued_message* %413, null, !dbg !1299
  br i1 %414, label %415, label %418, !dbg !1300

415:                                              ; preds = %406
  %416 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1301
  %417 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %416, i32 0, i32 6, !dbg !1303
  store i32 -2147483628, i32* %417, align 8, !dbg !1304
  store i64 -2147483628, i64* %5, align 8, !dbg !1305
  br label %464, !dbg !1306

418:                                              ; preds = %406
  %419 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1307
  %420 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %419, i32 0, i32 2, !dbg !1308
  store i32 2, i32* %420, align 8, !dbg !1309
  %421 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1310
  %422 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %421, i32 0, i32 9, !dbg !1311
  %423 = load double, double* %422, align 8, !dbg !1311
  %424 = fmul double 8.750000e-01, %423, !dbg !1312
  %425 = call i64 @time(i64* null) #10, !dbg !1313
  %426 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1314
  %427 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %426, i32 0, i32 3, !dbg !1315
  %428 = load i64, i64* %427, align 8, !dbg !1315
  %429 = sub nsw i64 %425, %428, !dbg !1316
  %430 = sitofp i64 %429 to double, !dbg !1317
  %431 = fmul double 1.250000e-01, %430, !dbg !1318
  %432 = fadd double %424, %431, !dbg !1319
  %433 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1320
  %434 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %433, i32 0, i32 9, !dbg !1321
  store double %432, double* %434, align 8, !dbg !1322
  br label %464, !dbg !1323

435:                                              ; preds = %103
  %436 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1324
  %437 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %436, i32 0, i32 17, !dbg !1325
  %438 = call %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %437, i32 12, i16* null), !dbg !1326
  store %struct.mqtt_queued_message* %438, %struct.mqtt_queued_message** %8, align 8, !dbg !1327
  %439 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1328
  %440 = icmp eq %struct.mqtt_queued_message* %439, null, !dbg !1330
  br i1 %440, label %441, label %444, !dbg !1331

441:                                              ; preds = %435
  %442 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1332
  %443 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %442, i32 0, i32 6, !dbg !1334
  store i32 -2147483628, i32* %443, align 8, !dbg !1335
  store i64 -2147483628, i64* %5, align 8, !dbg !1336
  br label %464, !dbg !1337

444:                                              ; preds = %435
  %445 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1338
  %446 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %445, i32 0, i32 2, !dbg !1339
  store i32 2, i32* %446, align 8, !dbg !1340
  %447 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1341
  %448 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %447, i32 0, i32 9, !dbg !1342
  %449 = load double, double* %448, align 8, !dbg !1342
  %450 = fmul double 8.750000e-01, %449, !dbg !1343
  %451 = call i64 @time(i64* null) #10, !dbg !1344
  %452 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1345
  %453 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %452, i32 0, i32 3, !dbg !1346
  %454 = load i64, i64* %453, align 8, !dbg !1346
  %455 = sub nsw i64 %451, %454, !dbg !1347
  %456 = sitofp i64 %455 to double, !dbg !1348
  %457 = fmul double 1.250000e-01, %456, !dbg !1349
  %458 = fadd double %450, %457, !dbg !1350
  %459 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1351
  %460 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %459, i32 0, i32 9, !dbg !1352
  store double %458, double* %460, align 8, !dbg !1353
  br label %464, !dbg !1354

461:                                              ; preds = %103
  %462 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1355
  %463 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %462, i32 0, i32 6, !dbg !1356
  store i32 -2147483636, i32* %463, align 8, !dbg !1357
  store i64 -2147483636, i64* %5, align 8, !dbg !1358
  br label %464, !dbg !1359

464:                                              ; preds = %461, %444, %441, %418, %415, %405, %402, %374, %348, %345, %335, %329, %301, %291, %285, %257, %247, %222, %219, %202, %194, %184, %162, %145, %144, %113
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1360, metadata !DIExpression()), !dbg !1362
  %465 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1363
  %466 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %465, i32 0, i32 15, !dbg !1364
  %467 = getelementptr inbounds %struct.anon, %struct.anon* %466, i32 0, i32 0, !dbg !1365
  %468 = load i8*, i8** %467, align 8, !dbg !1365
  store i8* %468, i8** %9, align 8, !dbg !1362
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1366, metadata !DIExpression()), !dbg !1367
  %469 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1368
  %470 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %469, i32 0, i32 15, !dbg !1369
  %471 = getelementptr inbounds %struct.anon, %struct.anon* %470, i32 0, i32 0, !dbg !1370
  %472 = load i8*, i8** %471, align 8, !dbg !1370
  %473 = load i64, i64* %7, align 8, !dbg !1371
  %474 = getelementptr inbounds i8, i8* %472, i64 %473, !dbg !1372
  store i8* %474, i8** %10, align 8, !dbg !1367
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1373, metadata !DIExpression()), !dbg !1374
  %475 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1375
  %476 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %475, i32 0, i32 15, !dbg !1376
  %477 = getelementptr inbounds %struct.anon, %struct.anon* %476, i32 0, i32 2, !dbg !1377
  %478 = load i8*, i8** %477, align 8, !dbg !1377
  %479 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1378
  %480 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %479, i32 0, i32 15, !dbg !1379
  %481 = getelementptr inbounds %struct.anon, %struct.anon* %480, i32 0, i32 0, !dbg !1380
  %482 = load i8*, i8** %481, align 8, !dbg !1380
  %483 = ptrtoint i8* %478 to i64, !dbg !1381
  %484 = ptrtoint i8* %482 to i64, !dbg !1381
  %485 = sub i64 %483, %484, !dbg !1381
  %486 = load i64, i64* %7, align 8, !dbg !1382
  %487 = sub nsw i64 %485, %486, !dbg !1383
  store i64 %487, i64* %11, align 8, !dbg !1374
  %488 = load i8*, i8** %9, align 8, !dbg !1384
  %489 = load i8*, i8** %10, align 8, !dbg !1385
  %490 = load i64, i64* %11, align 8, !dbg !1386
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %488, i8* align 1 %489, i64 %490, i1 false), !dbg !1387
  %491 = load i64, i64* %7, align 8, !dbg !1388
  %492 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1389
  %493 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %492, i32 0, i32 15, !dbg !1390
  %494 = getelementptr inbounds %struct.anon, %struct.anon* %493, i32 0, i32 2, !dbg !1391
  %495 = load i8*, i8** %494, align 8, !dbg !1392
  %496 = sub i64 0, %491, !dbg !1392
  %497 = getelementptr inbounds i8, i8* %495, i64 %496, !dbg !1392
  store i8* %497, i8** %494, align 8, !dbg !1392
  %498 = load i64, i64* %7, align 8, !dbg !1393
  %499 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1394
  %500 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %499, i32 0, i32 15, !dbg !1395
  %501 = getelementptr inbounds %struct.anon, %struct.anon* %500, i32 0, i32 3, !dbg !1396
  %502 = load i64, i64* %501, align 8, !dbg !1397
  %503 = add i64 %502, %498, !dbg !1397
  store i64 %503, i64* %501, align 8, !dbg !1397
  br label %15, !dbg !847, !llvm.loop !1398

504:                                              ; preds = %15
  %505 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1400
  %506 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %505, i32 0, i32 16, !dbg !1400
  %507 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %506) #10, !dbg !1400
  %508 = load i64, i64* %5, align 8, !dbg !1401
  store i64 %508, i64* %2, align 8, !dbg !1402
  br label %509, !dbg !1402

509:                                              ; preds = %504, %98, %92, %74, %33
  %510 = load i64, i64* %2, align 8, !dbg !1403
  ret i64 %510, !dbg !1403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_send(%struct.mqtt_client.7* %0) #0 !dbg !1404 {
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
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %3, metadata !1405, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1407, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1409, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1411, metadata !DIExpression()), !dbg !1412
  store i32 0, i32* %6, align 4, !dbg !1412
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1413, metadata !DIExpression()), !dbg !1414
  store i32 0, i32* %7, align 4, !dbg !1414
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1415
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 16, !dbg !1415
  %15 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %14) #10, !dbg !1415
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1416
  %17 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %16, i32 0, i32 6, !dbg !1418
  %18 = load i32, i32* %17, align 8, !dbg !1418
  %19 = icmp slt i32 %18, 0, !dbg !1419
  br i1 %19, label %20, label %33, !dbg !1420

20:                                               ; preds = %1
  %21 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1421
  %22 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %21, i32 0, i32 6, !dbg !1422
  %23 = load i32, i32* %22, align 8, !dbg !1422
  %24 = icmp ne i32 %23, -2147483632, !dbg !1423
  br i1 %24, label %25, label %33, !dbg !1424

25:                                               ; preds = %20
  %26 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1425
  %27 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %26, i32 0, i32 16, !dbg !1425
  %28 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %27) #10, !dbg !1425
  %29 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1427
  %30 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %29, i32 0, i32 6, !dbg !1428
  %31 = load i32, i32* %30, align 8, !dbg !1428
  %32 = sext i32 %31 to i64, !dbg !1427
  store i64 %32, i64* %2, align 8, !dbg !1429
  br label %278, !dbg !1429

33:                                               ; preds = %20, %1
  %34 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1430
  %35 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %34, i32 0, i32 17, !dbg !1430
  %36 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %35, i32 0, i32 1, !dbg !1430
  %37 = load i8*, i8** %36, align 8, !dbg !1430
  %38 = bitcast i8* %37 to %struct.mqtt_queued_message*, !dbg !1430
  %39 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1430
  %40 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %39, i32 0, i32 17, !dbg !1430
  %41 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %40, i32 0, i32 4, !dbg !1430
  %42 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %41, align 8, !dbg !1430
  %43 = ptrtoint %struct.mqtt_queued_message* %38 to i64, !dbg !1430
  %44 = ptrtoint %struct.mqtt_queued_message* %42 to i64, !dbg !1430
  %45 = sub i64 %43, %44, !dbg !1430
  %46 = sdiv exact i64 %45, 40, !dbg !1430
  store i64 %46, i64* %5, align 8, !dbg !1431
  br label %47, !dbg !1432

47:                                               ; preds = %240, %33
  %48 = load i32, i32* %7, align 4, !dbg !1433
  %49 = sext i32 %48 to i64, !dbg !1433
  %50 = load i64, i64* %5, align 8, !dbg !1436
  %51 = icmp slt i64 %49, %50, !dbg !1437
  br i1 %51, label %52, label %243, !dbg !1438

52:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %8, metadata !1439, metadata !DIExpression()), !dbg !1441
  %53 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1442
  %54 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %53, i32 0, i32 17, !dbg !1442
  %55 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %54, i32 0, i32 1, !dbg !1442
  %56 = load i8*, i8** %55, align 8, !dbg !1442
  %57 = bitcast i8* %56 to %struct.mqtt_queued_message*, !dbg !1442
  %58 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %57, i64 -1, !dbg !1442
  %59 = load i32, i32* %7, align 4, !dbg !1442
  %60 = sext i32 %59 to i64, !dbg !1442
  %61 = sub i64 0, %60, !dbg !1442
  %62 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %58, i64 %61, !dbg !1442
  store %struct.mqtt_queued_message* %62, %struct.mqtt_queued_message** %8, align 8, !dbg !1441
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i32 0, i32* %9, align 4, !dbg !1444
  %63 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1445
  %64 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %63, i32 0, i32 2, !dbg !1447
  %65 = load i32, i32* %64, align 8, !dbg !1447
  %66 = icmp eq i32 %65, 0, !dbg !1448
  br i1 %66, label %67, label %68, !dbg !1449

67:                                               ; preds = %52
  store i32 1, i32* %9, align 4, !dbg !1450
  br label %93, !dbg !1452

68:                                               ; preds = %52
  %69 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1453
  %70 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %69, i32 0, i32 2, !dbg !1455
  %71 = load i32, i32* %70, align 8, !dbg !1455
  %72 = icmp eq i32 %71, 1, !dbg !1456
  br i1 %72, label %73, label %92, !dbg !1457

73:                                               ; preds = %68
  %74 = call i64 @time(i64* null) #10, !dbg !1458
  %75 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1461
  %76 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %75, i32 0, i32 3, !dbg !1462
  %77 = load i64, i64* %76, align 8, !dbg !1462
  %78 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1463
  %79 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %78, i32 0, i32 7, !dbg !1464
  %80 = load i32, i32* %79, align 4, !dbg !1464
  %81 = sext i32 %80 to i64, !dbg !1463
  %82 = add nsw i64 %77, %81, !dbg !1465
  %83 = icmp sgt i64 %74, %82, !dbg !1466
  br i1 %83, label %84, label %91, !dbg !1467

84:                                               ; preds = %73
  store i32 1, i32* %9, align 4, !dbg !1468
  %85 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1470
  %86 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %85, i32 0, i32 8, !dbg !1471
  %87 = load i32, i32* %86, align 8, !dbg !1472
  %88 = add nsw i32 %87, 1, !dbg !1472
  store i32 %88, i32* %86, align 8, !dbg !1472
  %89 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1473
  %90 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %89, i32 0, i32 4, !dbg !1474
  store i64 0, i64* %90, align 8, !dbg !1475
  br label %91, !dbg !1476

91:                                               ; preds = %84, %73
  br label %92, !dbg !1477

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %67
  %94 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1478
  %95 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %94, i32 0, i32 4, !dbg !1480
  %96 = load i32, i32* %95, align 8, !dbg !1480
  %97 = icmp eq i32 %96, 3, !dbg !1481
  br i1 %97, label %98, label %127, !dbg !1482

98:                                               ; preds = %93
  %99 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1483
  %100 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %99, i32 0, i32 2, !dbg !1484
  %101 = load i32, i32* %100, align 8, !dbg !1484
  %102 = icmp eq i32 %101, 0, !dbg !1485
  br i1 %102, label %108, label %103, !dbg !1486

103:                                              ; preds = %98
  %104 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1487
  %105 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %104, i32 0, i32 2, !dbg !1488
  %106 = load i32, i32* %105, align 8, !dbg !1488
  %107 = icmp eq i32 %106, 1, !dbg !1489
  br i1 %107, label %108, label %127, !dbg !1490

108:                                              ; preds = %103, %98
  %109 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1491
  %110 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %109, i32 0, i32 0, !dbg !1493
  %111 = load i8*, i8** %110, align 8, !dbg !1493
  %112 = getelementptr inbounds i8, i8* %111, i64 0, !dbg !1491
  %113 = load i8, i8* %112, align 1, !dbg !1491
  %114 = zext i8 %113 to i32, !dbg !1494
  %115 = ashr i32 %114, 1, !dbg !1495
  %116 = and i32 3, %115, !dbg !1496
  %117 = trunc i32 %116 to i8, !dbg !1497
  store i8 %117, i8* %4, align 1, !dbg !1498
  %118 = load i8, i8* %4, align 1, !dbg !1499
  %119 = zext i8 %118 to i32, !dbg !1499
  %120 = icmp eq i32 %119, 2, !dbg !1501
  br i1 %120, label %121, label %126, !dbg !1502

121:                                              ; preds = %108
  %122 = load i32, i32* %6, align 4, !dbg !1503
  %123 = icmp ne i32 %122, 0, !dbg !1503
  br i1 %123, label %124, label %125, !dbg !1506

124:                                              ; preds = %121
  store i32 0, i32* %9, align 4, !dbg !1507
  br label %125, !dbg !1509

125:                                              ; preds = %124, %121
  store i32 1, i32* %6, align 4, !dbg !1510
  br label %126, !dbg !1511

126:                                              ; preds = %125, %108
  br label %127, !dbg !1512

127:                                              ; preds = %126, %103, %93
  %128 = load i32, i32* %9, align 4, !dbg !1513
  %129 = icmp ne i32 %128, 0, !dbg !1513
  br i1 %129, label %131, label %130, !dbg !1515

130:                                              ; preds = %127
  br label %240, !dbg !1516

131:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1518, metadata !DIExpression()), !dbg !1520
  %132 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1521
  %133 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %132, i32 0, i32 0, !dbg !1522
  %134 = load i32, i32* %133, align 8, !dbg !1522
  %135 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1523
  %136 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %135, i32 0, i32 0, !dbg !1524
  %137 = load i8*, i8** %136, align 8, !dbg !1524
  %138 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1525
  %139 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %138, i32 0, i32 4, !dbg !1526
  %140 = load i64, i64* %139, align 8, !dbg !1526
  %141 = getelementptr inbounds i8, i8* %137, i64 %140, !dbg !1527
  %142 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1528
  %143 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %142, i32 0, i32 1, !dbg !1529
  %144 = load i64, i64* %143, align 8, !dbg !1529
  %145 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1530
  %146 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %145, i32 0, i32 4, !dbg !1531
  %147 = load i64, i64* %146, align 8, !dbg !1531
  %148 = sub i64 %144, %147, !dbg !1532
  %149 = call i64 @mqtt_pal_sendall(i32 %134, i8* %141, i64 %148, i32 0), !dbg !1533
  store i64 %149, i64* %10, align 8, !dbg !1520
  %150 = load i64, i64* %10, align 8, !dbg !1534
  %151 = icmp slt i64 %150, 0, !dbg !1536
  br i1 %151, label %152, label %161, !dbg !1537

152:                                              ; preds = %131
  %153 = load i64, i64* %10, align 8, !dbg !1538
  %154 = trunc i64 %153 to i32, !dbg !1538
  %155 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1540
  %156 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %155, i32 0, i32 6, !dbg !1541
  store i32 %154, i32* %156, align 8, !dbg !1542
  %157 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1543
  %158 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %157, i32 0, i32 16, !dbg !1543
  %159 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %158) #10, !dbg !1543
  %160 = load i64, i64* %10, align 8, !dbg !1544
  store i64 %160, i64* %2, align 8, !dbg !1545
  br label %278, !dbg !1545

161:                                              ; preds = %131
  %162 = load i64, i64* %10, align 8, !dbg !1546
  %163 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1548
  %164 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %163, i32 0, i32 4, !dbg !1549
  %165 = load i64, i64* %164, align 8, !dbg !1550
  %166 = add i64 %165, %162, !dbg !1550
  store i64 %166, i64* %164, align 8, !dbg !1550
  %167 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1551
  %168 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %167, i32 0, i32 4, !dbg !1553
  %169 = load i64, i64* %168, align 8, !dbg !1553
  %170 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1554
  %171 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %170, i32 0, i32 1, !dbg !1555
  %172 = load i64, i64* %171, align 8, !dbg !1555
  %173 = icmp ult i64 %169, %172, !dbg !1556
  br i1 %173, label %174, label %175, !dbg !1557

174:                                              ; preds = %161
  br label %243, !dbg !1558

175:                                              ; preds = %161
  %176 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1560
  %177 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %176, i32 0, i32 4, !dbg !1562
  store i64 0, i64* %177, align 8, !dbg !1563
  br label %178

178:                                              ; preds = %175
  br label %179

179:                                              ; preds = %178
  %180 = call i64 @time(i64* null) #10, !dbg !1564
  %181 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1565
  %182 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %181, i32 0, i32 5, !dbg !1566
  store i64 %180, i64* %182, align 8, !dbg !1567
  %183 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1568
  %184 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %183, i32 0, i32 5, !dbg !1569
  %185 = load i64, i64* %184, align 8, !dbg !1569
  %186 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1570
  %187 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %186, i32 0, i32 3, !dbg !1571
  store i64 %185, i64* %187, align 8, !dbg !1572
  %188 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1573
  %189 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %188, i32 0, i32 4, !dbg !1574
  %190 = load i32, i32* %189, align 8, !dbg !1574
  switch i32 %190, label %233 [
    i32 4, label %191
    i32 7, label %191
    i32 14, label %191
    i32 3, label %194
    i32 1, label %230
    i32 5, label %230
    i32 6, label %230
    i32 8, label %230
    i32 10, label %230
    i32 12, label %230
  ], !dbg !1575

191:                                              ; preds = %179, %179, %179
  %192 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1576
  %193 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %192, i32 0, i32 2, !dbg !1578
  store i32 2, i32* %193, align 8, !dbg !1579
  br label %239, !dbg !1580

194:                                              ; preds = %179
  %195 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1581
  %196 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %195, i32 0, i32 0, !dbg !1582
  %197 = load i8*, i8** %196, align 8, !dbg !1582
  %198 = getelementptr inbounds i8, i8* %197, i64 0, !dbg !1581
  %199 = load i8, i8* %198, align 1, !dbg !1581
  %200 = zext i8 %199 to i32, !dbg !1583
  %201 = and i32 6, %200, !dbg !1584
  %202 = ashr i32 %201, 1, !dbg !1585
  %203 = trunc i32 %202 to i8, !dbg !1586
  store i8 %203, i8* %4, align 1, !dbg !1587
  %204 = load i8, i8* %4, align 1, !dbg !1588
  %205 = zext i8 %204 to i32, !dbg !1588
  %206 = icmp eq i32 %205, 0, !dbg !1590
  br i1 %206, label %207, label %210, !dbg !1591

207:                                              ; preds = %194
  %208 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1592
  %209 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %208, i32 0, i32 2, !dbg !1594
  store i32 2, i32* %209, align 8, !dbg !1595
  br label %229, !dbg !1596

210:                                              ; preds = %194
  %211 = load i8, i8* %4, align 1, !dbg !1597
  %212 = zext i8 %211 to i32, !dbg !1597
  %213 = icmp eq i32 %212, 1, !dbg !1599
  br i1 %213, label %214, label %225, !dbg !1600

214:                                              ; preds = %210
  %215 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1601
  %216 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %215, i32 0, i32 2, !dbg !1603
  store i32 1, i32* %216, align 8, !dbg !1604
  %217 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1605
  %218 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %217, i32 0, i32 0, !dbg !1606
  %219 = load i8*, i8** %218, align 8, !dbg !1606
  %220 = getelementptr inbounds i8, i8* %219, i64 0, !dbg !1605
  %221 = load i8, i8* %220, align 1, !dbg !1607
  %222 = zext i8 %221 to i32, !dbg !1607
  %223 = or i32 %222, 8, !dbg !1607
  %224 = trunc i32 %223 to i8, !dbg !1607
  store i8 %224, i8* %220, align 1, !dbg !1607
  br label %228, !dbg !1608

225:                                              ; preds = %210
  %226 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1609
  %227 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %226, i32 0, i32 2, !dbg !1611
  store i32 1, i32* %227, align 8, !dbg !1612
  br label %228

228:                                              ; preds = %225, %214
  br label %229

229:                                              ; preds = %228, %207
  br label %239, !dbg !1613

230:                                              ; preds = %179, %179, %179, %179, %179, %179
  %231 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !1614
  %232 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %231, i32 0, i32 2, !dbg !1615
  store i32 1, i32* %232, align 8, !dbg !1616
  br label %239, !dbg !1617

233:                                              ; preds = %179
  %234 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1618
  %235 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %234, i32 0, i32 6, !dbg !1619
  store i32 -2147483630, i32* %235, align 8, !dbg !1620
  %236 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1621
  %237 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %236, i32 0, i32 16, !dbg !1621
  %238 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %237) #10, !dbg !1621
  store i64 -2147483630, i64* %2, align 8, !dbg !1622
  br label %278, !dbg !1622

239:                                              ; preds = %230, %229, %191
  br label %240, !dbg !1623

240:                                              ; preds = %239, %130
  %241 = load i32, i32* %7, align 4, !dbg !1624
  %242 = add nsw i32 %241, 1, !dbg !1624
  store i32 %242, i32* %7, align 4, !dbg !1624
  br label %47, !dbg !1625, !llvm.loop !1626

243:                                              ; preds = %174, %47
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1628, metadata !DIExpression()), !dbg !1630
  %244 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1631
  %245 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %244, i32 0, i32 5, !dbg !1632
  %246 = load i64, i64* %245, align 8, !dbg !1632
  %247 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1633
  %248 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %247, i32 0, i32 2, !dbg !1634
  %249 = load i16, i16* %248, align 2, !dbg !1634
  %250 = uitofp i16 %249 to float, !dbg !1635
  %251 = fpext float %250 to double, !dbg !1635
  %252 = fmul double %251, 7.500000e-01, !dbg !1636
  %253 = fptosi double %252 to i64, !dbg !1637
  %254 = add nsw i64 %246, %253, !dbg !1638
  store i64 %254, i64* %11, align 8, !dbg !1630
  %255 = call i64 @time(i64* null) #10, !dbg !1639
  %256 = load i64, i64* %11, align 8, !dbg !1641
  %257 = icmp sgt i64 %255, %256, !dbg !1642
  br i1 %257, label %258, label %274, !dbg !1643

258:                                              ; preds = %243
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1644, metadata !DIExpression()), !dbg !1646
  %259 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1647
  %260 = call i32 @__mqtt_ping(%struct.mqtt_client.7* %259), !dbg !1648
  %261 = sext i32 %260 to i64, !dbg !1648
  store i64 %261, i64* %12, align 8, !dbg !1646
  %262 = load i64, i64* %12, align 8, !dbg !1649
  %263 = icmp ne i64 %262, 1, !dbg !1651
  br i1 %263, label %264, label %273, !dbg !1652

264:                                              ; preds = %258
  %265 = load i64, i64* %12, align 8, !dbg !1653
  %266 = trunc i64 %265 to i32, !dbg !1653
  %267 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1655
  %268 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %267, i32 0, i32 6, !dbg !1656
  store i32 %266, i32* %268, align 8, !dbg !1657
  %269 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1658
  %270 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %269, i32 0, i32 16, !dbg !1658
  %271 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %270) #10, !dbg !1658
  %272 = load i64, i64* %12, align 8, !dbg !1659
  store i64 %272, i64* %2, align 8, !dbg !1660
  br label %278, !dbg !1660

273:                                              ; preds = %258
  br label %274, !dbg !1661

274:                                              ; preds = %273, %243
  %275 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1662
  %276 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %275, i32 0, i32 16, !dbg !1662
  %277 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %276) #10, !dbg !1662
  store i64 1, i64* %2, align 8, !dbg !1663
  br label %278, !dbg !1663

278:                                              ; preds = %274, %264, %233, %152, %25
  %279 = load i64, i64* %2, align 8, !dbg !1664
  ret i64 %279, !dbg !1664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mqtt_ping(%struct.mqtt_client.7* %0) #0 !dbg !1665 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mqtt_client.7*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %3, metadata !1666, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1668, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %5, metadata !1670, metadata !DIExpression()), !dbg !1671
  %6 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1672
  %7 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %6, i32 0, i32 6, !dbg !1672
  %8 = load i32, i32* %7, align 8, !dbg !1672
  %9 = icmp slt i32 %8, 0, !dbg !1672
  br i1 %9, label %10, label %14, !dbg !1674

10:                                               ; preds = %1
  %11 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1675
  %12 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %11, i32 0, i32 6, !dbg !1675
  %13 = load i32, i32* %12, align 8, !dbg !1675
  store i32 %13, i32* %2, align 4, !dbg !1675
  br label %73, !dbg !1675

14:                                               ; preds = %1
  %15 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1674
  %16 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %15, i32 0, i32 17, !dbg !1674
  %17 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %16, i32 0, i32 2, !dbg !1674
  %18 = load i8*, i8** %17, align 8, !dbg !1674
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1674
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 17, !dbg !1674
  %21 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %20, i32 0, i32 3, !dbg !1674
  %22 = load i64, i64* %21, align 8, !dbg !1674
  %23 = call i64 @mqtt_pack_ping_request(i8* %18, i64 %22), !dbg !1674
  store i64 %23, i64* %4, align 8, !dbg !1674
  %24 = load i64, i64* %4, align 8, !dbg !1677
  %25 = icmp slt i64 %24, 0, !dbg !1677
  br i1 %25, label %26, label %33, !dbg !1674

26:                                               ; preds = %14
  %27 = load i64, i64* %4, align 8, !dbg !1679
  %28 = trunc i64 %27 to i32, !dbg !1679
  %29 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1679
  %30 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %29, i32 0, i32 6, !dbg !1679
  store i32 %28, i32* %30, align 8, !dbg !1679
  %31 = load i64, i64* %4, align 8, !dbg !1679
  %32 = trunc i64 %31 to i32, !dbg !1679
  store i32 %32, i32* %2, align 4, !dbg !1679
  br label %73, !dbg !1679

33:                                               ; preds = %14
  %34 = load i64, i64* %4, align 8, !dbg !1681
  %35 = icmp eq i64 %34, 0, !dbg !1681
  br i1 %35, label %36, label %65, !dbg !1677

36:                                               ; preds = %33
  %37 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1683
  %38 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %37, i32 0, i32 17, !dbg !1683
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %38), !dbg !1683
  %39 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1683
  %40 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %39, i32 0, i32 17, !dbg !1683
  %41 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %40, i32 0, i32 2, !dbg !1683
  %42 = load i8*, i8** %41, align 8, !dbg !1683
  %43 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1683
  %44 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %43, i32 0, i32 17, !dbg !1683
  %45 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %44, i32 0, i32 3, !dbg !1683
  %46 = load i64, i64* %45, align 8, !dbg !1683
  %47 = call i64 @mqtt_pack_ping_request(i8* %42, i64 %46), !dbg !1683
  store i64 %47, i64* %4, align 8, !dbg !1683
  %48 = load i64, i64* %4, align 8, !dbg !1685
  %49 = icmp slt i64 %48, 0, !dbg !1685
  br i1 %49, label %50, label %57, !dbg !1683

50:                                               ; preds = %36
  %51 = load i64, i64* %4, align 8, !dbg !1687
  %52 = trunc i64 %51 to i32, !dbg !1687
  %53 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1687
  %54 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %53, i32 0, i32 6, !dbg !1687
  store i32 %52, i32* %54, align 8, !dbg !1687
  %55 = load i64, i64* %4, align 8, !dbg !1687
  %56 = trunc i64 %55 to i32, !dbg !1687
  store i32 %56, i32* %2, align 4, !dbg !1687
  br label %73, !dbg !1687

57:                                               ; preds = %36
  %58 = load i64, i64* %4, align 8, !dbg !1689
  %59 = icmp eq i64 %58, 0, !dbg !1689
  br i1 %59, label %60, label %63, !dbg !1685

60:                                               ; preds = %57
  %61 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1691
  %62 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %61, i32 0, i32 6, !dbg !1691
  store i32 -2147483632, i32* %62, align 8, !dbg !1691
  store i32 -2147483632, i32* %2, align 4, !dbg !1691
  br label %73, !dbg !1691

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  br label %65, !dbg !1683

65:                                               ; preds = %64, %33
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !1674
  %68 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %67, i32 0, i32 17, !dbg !1674
  %69 = load i64, i64* %4, align 8, !dbg !1674
  %70 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %68, i64 %69), !dbg !1674
  store %struct.mqtt_queued_message* %70, %struct.mqtt_queued_message** %5, align 8, !dbg !1674
  %71 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %5, align 8, !dbg !1693
  %72 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %71, i32 0, i32 4, !dbg !1694
  store i32 12, i32* %72, align 8, !dbg !1695
  store i32 1, i32* %2, align 4, !dbg !1696
  br label %73, !dbg !1696

73:                                               ; preds = %66, %60, %50, %26, %10
  %74 = load i32, i32* %2, align 4, !dbg !1697
  ret i32 %74, !dbg !1697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_ping_request(i8* %0, i64 %1) #0 !dbg !1698 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_fixed_header, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1701, metadata !DIExpression()), !dbg !1702
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1703, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %5, metadata !1705, metadata !DIExpression()), !dbg !1706
  %6 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 0, !dbg !1707
  store i32 12, i32* %6, align 4, !dbg !1708
  %7 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 1, !dbg !1709
  %8 = load i8, i8* %7, align 4, !dbg !1710
  %9 = and i8 %8, -16, !dbg !1710
  store i8 %9, i8* %7, align 4, !dbg !1710
  %10 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 2, !dbg !1711
  store i32 0, i32* %10, align 4, !dbg !1712
  %11 = load i8*, i8** %3, align 8, !dbg !1713
  %12 = load i64, i64* %4, align 8, !dbg !1714
  %13 = call i64 @mqtt_pack_fixed_header(i8* %11, i64 %12, %struct.mqtt_fixed_header* %5), !dbg !1715
  ret i64 %13, !dbg !1716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mqtt_mq_clean(%struct.mqtt_message_queue* %0) #0 !dbg !1717 {
  %2 = alloca %struct.mqtt_message_queue*, align 8
  %3 = alloca %struct.mqtt_queued_message*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mqtt_message_queue* %0, %struct.mqtt_message_queue** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_message_queue** %2, metadata !1721, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %3, metadata !1723, metadata !DIExpression()), !dbg !1724
  %8 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1725
  %9 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %8, i32 0, i32 1, !dbg !1725
  %10 = load i8*, i8** %9, align 8, !dbg !1725
  %11 = bitcast i8* %10 to %struct.mqtt_queued_message*, !dbg !1725
  %12 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %11, i64 -1, !dbg !1725
  %13 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %12, i64 0, !dbg !1725
  store %struct.mqtt_queued_message* %13, %struct.mqtt_queued_message** %3, align 8, !dbg !1727
  br label %14, !dbg !1728

14:                                               ; preds = %27, %1
  %15 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1729
  %16 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1731
  %17 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %16, i32 0, i32 4, !dbg !1732
  %18 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %17, align 8, !dbg !1732
  %19 = icmp uge %struct.mqtt_queued_message* %15, %18, !dbg !1733
  br i1 %19, label %20, label %30, !dbg !1734

20:                                               ; preds = %14
  %21 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1735
  %22 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %21, i32 0, i32 2, !dbg !1738
  %23 = load i32, i32* %22, align 8, !dbg !1738
  %24 = icmp ne i32 %23, 2, !dbg !1739
  br i1 %24, label %25, label %26, !dbg !1740

25:                                               ; preds = %20
  br label %30, !dbg !1741

26:                                               ; preds = %20
  br label %27, !dbg !1742

27:                                               ; preds = %26
  %28 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1743
  %29 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %28, i32 -1, !dbg !1743
  store %struct.mqtt_queued_message* %29, %struct.mqtt_queued_message** %3, align 8, !dbg !1743
  br label %14, !dbg !1744, !llvm.loop !1745

30:                                               ; preds = %25, %14
  %31 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1747
  %32 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1749
  %33 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %32, i32 0, i32 4, !dbg !1750
  %34 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %33, align 8, !dbg !1750
  %35 = icmp ult %struct.mqtt_queued_message* %31, %34, !dbg !1751
  br i1 %35, label %36, label %74, !dbg !1752

36:                                               ; preds = %30
  %37 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1753
  %38 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %37, i32 0, i32 0, !dbg !1755
  %39 = load i8*, i8** %38, align 8, !dbg !1755
  %40 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1756
  %41 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %40, i32 0, i32 2, !dbg !1757
  store i8* %39, i8** %41, align 8, !dbg !1758
  %42 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1759
  %43 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %42, i32 0, i32 1, !dbg !1760
  %44 = load i8*, i8** %43, align 8, !dbg !1760
  %45 = bitcast i8* %44 to %struct.mqtt_queued_message*, !dbg !1759
  %46 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1761
  %47 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %46, i32 0, i32 4, !dbg !1762
  store %struct.mqtt_queued_message* %45, %struct.mqtt_queued_message** %47, align 8, !dbg !1763
  %48 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1764
  %49 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %48, i32 0, i32 2, !dbg !1764
  %50 = load i8*, i8** %49, align 8, !dbg !1764
  %51 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1764
  %52 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %51, i32 0, i32 4, !dbg !1764
  %53 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %52, align 8, !dbg !1764
  %54 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %53, i64 -1, !dbg !1764
  %55 = bitcast %struct.mqtt_queued_message* %54 to i8*, !dbg !1764
  %56 = icmp uge i8* %50, %55, !dbg !1764
  br i1 %56, label %57, label %58, !dbg !1764

57:                                               ; preds = %36
  br label %70, !dbg !1764

58:                                               ; preds = %36
  %59 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1764
  %60 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %59, i32 0, i32 4, !dbg !1764
  %61 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %60, align 8, !dbg !1764
  %62 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %61, i64 -1, !dbg !1764
  %63 = bitcast %struct.mqtt_queued_message* %62 to i8*, !dbg !1764
  %64 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1764
  %65 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %64, i32 0, i32 2, !dbg !1764
  %66 = load i8*, i8** %65, align 8, !dbg !1764
  %67 = ptrtoint i8* %63 to i64, !dbg !1764
  %68 = ptrtoint i8* %66 to i64, !dbg !1764
  %69 = sub i64 %67, %68, !dbg !1764
  br label %70, !dbg !1764

70:                                               ; preds = %58, %57
  %71 = phi i64 [ 0, %57 ], [ %69, %58 ], !dbg !1764
  %72 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1765
  %73 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %72, i32 0, i32 3, !dbg !1766
  store i64 %71, i64* %73, align 8, !dbg !1767
  br label %201, !dbg !1768

74:                                               ; preds = %30
  %75 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1769
  %76 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1771
  %77 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %76, i32 0, i32 1, !dbg !1771
  %78 = load i8*, i8** %77, align 8, !dbg !1771
  %79 = bitcast i8* %78 to %struct.mqtt_queued_message*, !dbg !1771
  %80 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %79, i64 -1, !dbg !1771
  %81 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %80, i64 0, !dbg !1771
  %82 = icmp eq %struct.mqtt_queued_message* %75, %81, !dbg !1772
  br i1 %82, label %83, label %84, !dbg !1773

83:                                               ; preds = %74
  br label %201, !dbg !1774

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1776, metadata !DIExpression()), !dbg !1778
  %86 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1779
  %87 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %86, i32 0, i32 2, !dbg !1780
  %88 = load i8*, i8** %87, align 8, !dbg !1780
  %89 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1781
  %90 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %89, i32 0, i32 0, !dbg !1782
  %91 = load i8*, i8** %90, align 8, !dbg !1782
  %92 = ptrtoint i8* %88 to i64, !dbg !1783
  %93 = ptrtoint i8* %91 to i64, !dbg !1783
  %94 = sub i64 %92, %93, !dbg !1783
  store i64 %94, i64* %4, align 8, !dbg !1778
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1784, metadata !DIExpression()), !dbg !1785
  %95 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1786
  %96 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %95, i32 0, i32 0, !dbg !1787
  %97 = load i8*, i8** %96, align 8, !dbg !1787
  %98 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1788
  %99 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %98, i32 0, i32 0, !dbg !1789
  %100 = load i8*, i8** %99, align 8, !dbg !1789
  %101 = ptrtoint i8* %97 to i64, !dbg !1790
  %102 = ptrtoint i8* %100 to i64, !dbg !1790
  %103 = sub i64 %101, %102, !dbg !1790
  store i64 %103, i64* %5, align 8, !dbg !1785
  %104 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1791
  %105 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %104, i32 0, i32 0, !dbg !1792
  %106 = load i8*, i8** %105, align 8, !dbg !1792
  %107 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1793
  %108 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %107, i32 0, i32 0, !dbg !1794
  %109 = load i8*, i8** %108, align 8, !dbg !1794
  %110 = load i64, i64* %4, align 8, !dbg !1795
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %106, i8* align 1 %109, i64 %110, i1 false), !dbg !1796
  %111 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1797
  %112 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %111, i32 0, i32 0, !dbg !1798
  %113 = load i8*, i8** %112, align 8, !dbg !1798
  %114 = load i64, i64* %4, align 8, !dbg !1799
  %115 = getelementptr inbounds i8, i8* %113, i64 %114, !dbg !1800
  %116 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1801
  %117 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %116, i32 0, i32 2, !dbg !1802
  store i8* %115, i8** %117, align 8, !dbg !1803
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1804, metadata !DIExpression()), !dbg !1806
  %118 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %3, align 8, !dbg !1807
  %119 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1808
  %120 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %119, i32 0, i32 4, !dbg !1809
  %121 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %120, align 8, !dbg !1809
  %122 = ptrtoint %struct.mqtt_queued_message* %118 to i64, !dbg !1810
  %123 = ptrtoint %struct.mqtt_queued_message* %121 to i64, !dbg !1810
  %124 = sub i64 %122, %123, !dbg !1810
  %125 = sdiv exact i64 %124, 40, !dbg !1810
  store i64 %125, i64* %6, align 8, !dbg !1806
  %126 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1811
  %127 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %126, i32 0, i32 1, !dbg !1811
  %128 = load i8*, i8** %127, align 8, !dbg !1811
  %129 = bitcast i8* %128 to %struct.mqtt_queued_message*, !dbg !1811
  %130 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %129, i64 -1, !dbg !1811
  %131 = load i64, i64* %6, align 8, !dbg !1811
  %132 = sub i64 0, %131, !dbg !1811
  %133 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %130, i64 %132, !dbg !1811
  %134 = bitcast %struct.mqtt_queued_message* %133 to i8*, !dbg !1812
  %135 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1813
  %136 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %135, i32 0, i32 4, !dbg !1814
  %137 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %136, align 8, !dbg !1814
  %138 = bitcast %struct.mqtt_queued_message* %137 to i8*, !dbg !1812
  %139 = load i64, i64* %6, align 8, !dbg !1815
  %140 = add nsw i64 %139, 1, !dbg !1816
  %141 = mul i64 40, %140, !dbg !1817
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %138, i64 %141, i1 false), !dbg !1812
  %142 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1818
  %143 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %142, i32 0, i32 1, !dbg !1818
  %144 = load i8*, i8** %143, align 8, !dbg !1818
  %145 = bitcast i8* %144 to %struct.mqtt_queued_message*, !dbg !1818
  %146 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %145, i64 -1, !dbg !1818
  %147 = load i64, i64* %6, align 8, !dbg !1818
  %148 = sub i64 0, %147, !dbg !1818
  %149 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %146, i64 %148, !dbg !1818
  %150 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1819
  %151 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %150, i32 0, i32 4, !dbg !1820
  store %struct.mqtt_queued_message* %149, %struct.mqtt_queued_message** %151, align 8, !dbg !1821
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1822, metadata !DIExpression()), !dbg !1824
  store i64 0, i64* %7, align 8, !dbg !1824
  br label %152, !dbg !1825

152:                                              ; preds = %171, %85
  %153 = load i64, i64* %7, align 8, !dbg !1826
  %154 = load i64, i64* %6, align 8, !dbg !1829
  %155 = add nsw i64 %154, 1, !dbg !1830
  %156 = icmp slt i64 %153, %155, !dbg !1831
  br i1 %156, label %157, label %174, !dbg !1832

157:                                              ; preds = %152
  %158 = load i64, i64* %5, align 8, !dbg !1833
  %159 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1835
  %160 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %159, i32 0, i32 1, !dbg !1835
  %161 = load i8*, i8** %160, align 8, !dbg !1835
  %162 = bitcast i8* %161 to %struct.mqtt_queued_message*, !dbg !1835
  %163 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %162, i64 -1, !dbg !1835
  %164 = load i64, i64* %7, align 8, !dbg !1835
  %165 = sub i64 0, %164, !dbg !1835
  %166 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %163, i64 %165, !dbg !1835
  %167 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %166, i32 0, i32 0, !dbg !1836
  %168 = load i8*, i8** %167, align 8, !dbg !1837
  %169 = sub i64 0, %158, !dbg !1837
  %170 = getelementptr inbounds i8, i8* %168, i64 %169, !dbg !1837
  store i8* %170, i8** %167, align 8, !dbg !1837
  br label %171, !dbg !1838

171:                                              ; preds = %157
  %172 = load i64, i64* %7, align 8, !dbg !1839
  %173 = add nsw i64 %172, 1, !dbg !1839
  store i64 %173, i64* %7, align 8, !dbg !1839
  br label %152, !dbg !1840, !llvm.loop !1841

174:                                              ; preds = %152
  %175 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1843
  %176 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %175, i32 0, i32 2, !dbg !1843
  %177 = load i8*, i8** %176, align 8, !dbg !1843
  %178 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1843
  %179 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %178, i32 0, i32 4, !dbg !1843
  %180 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %179, align 8, !dbg !1843
  %181 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %180, i64 -1, !dbg !1843
  %182 = bitcast %struct.mqtt_queued_message* %181 to i8*, !dbg !1843
  %183 = icmp uge i8* %177, %182, !dbg !1843
  br i1 %183, label %184, label %185, !dbg !1843

184:                                              ; preds = %174
  br label %197, !dbg !1843

185:                                              ; preds = %174
  %186 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1843
  %187 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %186, i32 0, i32 4, !dbg !1843
  %188 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %187, align 8, !dbg !1843
  %189 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %188, i64 -1, !dbg !1843
  %190 = bitcast %struct.mqtt_queued_message* %189 to i8*, !dbg !1843
  %191 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1843
  %192 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %191, i32 0, i32 2, !dbg !1843
  %193 = load i8*, i8** %192, align 8, !dbg !1843
  %194 = ptrtoint i8* %190 to i64, !dbg !1843
  %195 = ptrtoint i8* %193 to i64, !dbg !1843
  %196 = sub i64 %194, %195, !dbg !1843
  br label %197, !dbg !1843

197:                                              ; preds = %185, %184
  %198 = phi i64 [ 0, %184 ], [ %196, %185 ], !dbg !1843
  %199 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %2, align 8, !dbg !1844
  %200 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %199, i32 0, i32 3, !dbg !1845
  store i64 %198, i64* %200, align 8, !dbg !1846
  br label %201, !dbg !1847

201:                                              ; preds = %197, %83, %70
  ret void, !dbg !1847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %0, i64 %1) #0 !dbg !1848 {
  %3 = alloca %struct.mqtt_message_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.mqtt_message_queue* %0, %struct.mqtt_message_queue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_message_queue** %3, metadata !1851, metadata !DIExpression()), !dbg !1852
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1853, metadata !DIExpression()), !dbg !1854
  %5 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1855
  %6 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %5, i32 0, i32 4, !dbg !1856
  %7 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %6, align 8, !dbg !1857
  %8 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %7, i32 -1, !dbg !1857
  store %struct.mqtt_queued_message* %8, %struct.mqtt_queued_message** %6, align 8, !dbg !1857
  %9 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1858
  %10 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %9, i32 0, i32 2, !dbg !1859
  %11 = load i8*, i8** %10, align 8, !dbg !1859
  %12 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1860
  %13 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %12, i32 0, i32 4, !dbg !1861
  %14 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %13, align 8, !dbg !1861
  %15 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %14, i32 0, i32 0, !dbg !1862
  store i8* %11, i8** %15, align 8, !dbg !1863
  %16 = load i64, i64* %4, align 8, !dbg !1864
  %17 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1865
  %18 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %17, i32 0, i32 4, !dbg !1866
  %19 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %18, align 8, !dbg !1866
  %20 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %19, i32 0, i32 1, !dbg !1867
  store i64 %16, i64* %20, align 8, !dbg !1868
  %21 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1869
  %22 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %21, i32 0, i32 4, !dbg !1870
  %23 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %22, align 8, !dbg !1870
  %24 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %23, i32 0, i32 2, !dbg !1871
  store i32 0, i32* %24, align 8, !dbg !1872
  %25 = load i64, i64* %4, align 8, !dbg !1873
  %26 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1874
  %27 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %26, i32 0, i32 2, !dbg !1875
  %28 = load i8*, i8** %27, align 8, !dbg !1876
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1876
  store i8* %29, i8** %27, align 8, !dbg !1876
  %30 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1877
  %31 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %30, i32 0, i32 2, !dbg !1877
  %32 = load i8*, i8** %31, align 8, !dbg !1877
  %33 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1877
  %34 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %33, i32 0, i32 4, !dbg !1877
  %35 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %34, align 8, !dbg !1877
  %36 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %35, i64 -1, !dbg !1877
  %37 = bitcast %struct.mqtt_queued_message* %36 to i8*, !dbg !1877
  %38 = icmp uge i8* %32, %37, !dbg !1877
  br i1 %38, label %39, label %40, !dbg !1877

39:                                               ; preds = %2
  br label %52, !dbg !1877

40:                                               ; preds = %2
  %41 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1877
  %42 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %41, i32 0, i32 4, !dbg !1877
  %43 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %42, align 8, !dbg !1877
  %44 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %43, i64 -1, !dbg !1877
  %45 = bitcast %struct.mqtt_queued_message* %44 to i8*, !dbg !1877
  %46 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1877
  %47 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %46, i32 0, i32 2, !dbg !1877
  %48 = load i8*, i8** %47, align 8, !dbg !1877
  %49 = ptrtoint i8* %45 to i64, !dbg !1877
  %50 = ptrtoint i8* %48 to i64, !dbg !1877
  %51 = sub i64 %49, %50, !dbg !1877
  br label %52, !dbg !1877

52:                                               ; preds = %40, %39
  %53 = phi i64 [ 0, %39 ], [ %51, %40 ], !dbg !1877
  %54 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1878
  %55 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %54, i32 0, i32 3, !dbg !1879
  store i64 %53, i64* %55, align 8, !dbg !1880
  %56 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %3, align 8, !dbg !1881
  %57 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %56, i32 0, i32 4, !dbg !1882
  %58 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %57, align 8, !dbg !1882
  ret %struct.mqtt_queued_message* %58, !dbg !1883
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_fixed_header(i8* %0, i64 %1, %struct.mqtt_fixed_header* %2) #0 !dbg !1884 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mqtt_fixed_header*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1889, metadata !DIExpression()), !dbg !1890
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1891, metadata !DIExpression()), !dbg !1892
  store %struct.mqtt_fixed_header* %2, %struct.mqtt_fixed_header** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header** %7, metadata !1893, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1895, metadata !DIExpression()), !dbg !1896
  %11 = load i8*, i8** %5, align 8, !dbg !1897
  store i8* %11, i8** %8, align 8, !dbg !1896
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1898, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1900, metadata !DIExpression()), !dbg !1901
  %12 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1902
  %13 = icmp eq %struct.mqtt_fixed_header* %12, null, !dbg !1904
  br i1 %13, label %17, label %14, !dbg !1905

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !1906
  %16 = icmp eq i8* %15, null, !dbg !1907
  br i1 %16, label %17, label %18, !dbg !1908

17:                                               ; preds = %14, %3
  store i64 -2147483647, i64* %4, align 8, !dbg !1909
  br label %107, !dbg !1909

18:                                               ; preds = %14
  %19 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1911
  %20 = call i64 @mqtt_fixed_header_rule_violation(%struct.mqtt_fixed_header* %19), !dbg !1912
  store i64 %20, i64* %9, align 8, !dbg !1913
  %21 = load i64, i64* %9, align 8, !dbg !1914
  %22 = icmp ne i64 %21, 0, !dbg !1914
  br i1 %22, label %23, label %25, !dbg !1916

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8, !dbg !1917
  store i64 %24, i64* %4, align 8, !dbg !1919
  br label %107, !dbg !1919

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8, !dbg !1920
  %27 = icmp eq i64 %26, 0, !dbg !1922
  br i1 %27, label %28, label %29, !dbg !1923

28:                                               ; preds = %25
  store i64 0, i64* %4, align 8, !dbg !1924
  br label %107, !dbg !1924

29:                                               ; preds = %25
  %30 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1925
  %31 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %30, i32 0, i32 0, !dbg !1926
  %32 = load i32, i32* %31, align 4, !dbg !1926
  %33 = trunc i32 %32 to i8, !dbg !1927
  %34 = zext i8 %33 to i32, !dbg !1928
  %35 = shl i32 %34, 4, !dbg !1929
  %36 = and i32 %35, 240, !dbg !1930
  %37 = trunc i32 %36 to i8, !dbg !1931
  %38 = load i8*, i8** %5, align 8, !dbg !1932
  store i8 %37, i8* %38, align 1, !dbg !1933
  %39 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1934
  %40 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %39, i32 0, i32 1, !dbg !1935
  %41 = load i8, i8* %40, align 4, !dbg !1935
  %42 = and i8 %41, 15, !dbg !1935
  %43 = zext i8 %42 to i32, !dbg !1935
  %44 = trunc i32 %43 to i8, !dbg !1936
  %45 = zext i8 %44 to i32, !dbg !1937
  %46 = and i32 %45, 15, !dbg !1938
  %47 = load i8*, i8** %5, align 8, !dbg !1939
  %48 = load i8, i8* %47, align 1, !dbg !1940
  %49 = zext i8 %48 to i32, !dbg !1940
  %50 = or i32 %49, %46, !dbg !1940
  %51 = trunc i32 %50 to i8, !dbg !1940
  store i8 %51, i8* %47, align 1, !dbg !1940
  %52 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1941
  %53 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %52, i32 0, i32 2, !dbg !1942
  %54 = load i32, i32* %53, align 4, !dbg !1942
  store i32 %54, i32* %10, align 4, !dbg !1943
  %55 = load i32, i32* %10, align 4, !dbg !1944
  %56 = icmp uge i32 %55, 268435456, !dbg !1946
  br i1 %56, label %57, label %58, !dbg !1947

57:                                               ; preds = %29
  store i64 -2147483622, i64* %4, align 8, !dbg !1948
  br label %107, !dbg !1948

58:                                               ; preds = %29
  br label %59, !dbg !1949

59:                                               ; preds = %83, %58
  %60 = load i64, i64* %6, align 8, !dbg !1950
  %61 = add i64 %60, -1, !dbg !1950
  store i64 %61, i64* %6, align 8, !dbg !1950
  %62 = load i8*, i8** %5, align 8, !dbg !1952
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !1952
  store i8* %63, i8** %5, align 8, !dbg !1952
  %64 = load i64, i64* %6, align 8, !dbg !1953
  %65 = icmp eq i64 %64, 0, !dbg !1955
  br i1 %65, label %66, label %67, !dbg !1956

66:                                               ; preds = %59
  store i64 0, i64* %4, align 8, !dbg !1957
  br label %107, !dbg !1957

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4, !dbg !1958
  %69 = and i32 %68, 127, !dbg !1959
  %70 = trunc i32 %69 to i8, !dbg !1958
  %71 = load i8*, i8** %5, align 8, !dbg !1960
  store i8 %70, i8* %71, align 1, !dbg !1961
  %72 = load i32, i32* %10, align 4, !dbg !1962
  %73 = icmp ugt i32 %72, 127, !dbg !1964
  br i1 %73, label %74, label %80, !dbg !1965

74:                                               ; preds = %67
  %75 = load i8*, i8** %5, align 8, !dbg !1966
  %76 = load i8, i8* %75, align 1, !dbg !1967
  %77 = zext i8 %76 to i32, !dbg !1967
  %78 = or i32 %77, 128, !dbg !1967
  %79 = trunc i32 %78 to i8, !dbg !1967
  store i8 %79, i8* %75, align 1, !dbg !1967
  br label %80, !dbg !1968

80:                                               ; preds = %74, %67
  %81 = load i32, i32* %10, align 4, !dbg !1969
  %82 = lshr i32 %81, 7, !dbg !1970
  store i32 %82, i32* %10, align 4, !dbg !1971
  br label %83, !dbg !1972

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8, !dbg !1973
  %85 = load i8, i8* %84, align 1, !dbg !1974
  %86 = zext i8 %85 to i32, !dbg !1974
  %87 = and i32 %86, 128, !dbg !1975
  %88 = icmp ne i32 %87, 0, !dbg !1972
  br i1 %88, label %59, label %89, !dbg !1972, !llvm.loop !1976

89:                                               ; preds = %83
  %90 = load i64, i64* %6, align 8, !dbg !1978
  %91 = add i64 %90, -1, !dbg !1978
  store i64 %91, i64* %6, align 8, !dbg !1978
  %92 = load i8*, i8** %5, align 8, !dbg !1979
  %93 = getelementptr inbounds i8, i8* %92, i32 1, !dbg !1979
  store i8* %93, i8** %5, align 8, !dbg !1979
  %94 = load i64, i64* %6, align 8, !dbg !1980
  %95 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !1982
  %96 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %95, i32 0, i32 2, !dbg !1983
  %97 = load i32, i32* %96, align 4, !dbg !1983
  %98 = zext i32 %97 to i64, !dbg !1982
  %99 = icmp ult i64 %94, %98, !dbg !1984
  br i1 %99, label %100, label %101, !dbg !1985

100:                                              ; preds = %89
  store i64 0, i64* %4, align 8, !dbg !1986
  br label %107, !dbg !1986

101:                                              ; preds = %89
  %102 = load i8*, i8** %5, align 8, !dbg !1988
  %103 = load i8*, i8** %8, align 8, !dbg !1989
  %104 = ptrtoint i8* %102 to i64, !dbg !1990
  %105 = ptrtoint i8* %103 to i64, !dbg !1990
  %106 = sub i64 %104, %105, !dbg !1990
  store i64 %106, i64* %4, align 8, !dbg !1991
  br label %107, !dbg !1991

107:                                              ; preds = %101, %100, %66, %57, %28, %23, %17
  %108 = load i64, i64* %4, align 8, !dbg !1992
  ret i64 %108, !dbg !1992
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mqtt_fixed_header_rule_violation(%struct.mqtt_fixed_header* %0) #0 !dbg !1993 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mqtt_fixed_header*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.mqtt_fixed_header* %0, %struct.mqtt_fixed_header** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header** %3, metadata !1996, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1998, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2000, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2002, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2004, metadata !DIExpression()), !dbg !2005
  %8 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %3, align 8, !dbg !2006
  %9 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %8, i32 0, i32 0, !dbg !2007
  %10 = load i32, i32* %9, align 4, !dbg !2007
  %11 = trunc i32 %10 to i8, !dbg !2006
  store i8 %11, i8* %4, align 1, !dbg !2008
  %12 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %3, align 8, !dbg !2009
  %13 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %12, i32 0, i32 1, !dbg !2010
  %14 = load i8, i8* %13, align 4, !dbg !2010
  %15 = and i8 %14, 15, !dbg !2010
  %16 = zext i8 %15 to i32, !dbg !2010
  %17 = trunc i32 %16 to i8, !dbg !2009
  store i8 %17, i8* %5, align 1, !dbg !2011
  %18 = load i8, i8* %4, align 1, !dbg !2012
  %19 = zext i8 %18 to i64, !dbg !2013
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mqtt_fixed_header_rules, i32 0, i32 1), i64 0, i64 %19, !dbg !2013
  %21 = load i8, i8* %20, align 1, !dbg !2013
  store i8 %21, i8* %6, align 1, !dbg !2014
  %22 = load i8, i8* %4, align 1, !dbg !2015
  %23 = zext i8 %22 to i64, !dbg !2016
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mqtt_fixed_header_rules, i32 0, i32 2), i64 0, i64 %23, !dbg !2016
  %25 = load i8, i8* %24, align 1, !dbg !2016
  store i8 %25, i8* %7, align 1, !dbg !2017
  %26 = load i8, i8* %4, align 1, !dbg !2018
  %27 = zext i8 %26 to i64, !dbg !2020
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mqtt_fixed_header_rules, i32 0, i32 0), i64 0, i64 %27, !dbg !2020
  %29 = load i8, i8* %28, align 1, !dbg !2020
  %30 = icmp ne i8 %29, 0, !dbg !2020
  br i1 %30, label %32, label %31, !dbg !2021

31:                                               ; preds = %1
  store i64 -2147483646, i64* %2, align 8, !dbg !2022
  br label %44, !dbg !2022

32:                                               ; preds = %1
  %33 = load i8, i8* %5, align 1, !dbg !2024
  %34 = zext i8 %33 to i32, !dbg !2024
  %35 = load i8, i8* %6, align 1, !dbg !2024
  %36 = zext i8 %35 to i32, !dbg !2024
  %37 = xor i32 %34, %36, !dbg !2024
  %38 = load i8, i8* %7, align 1, !dbg !2024
  %39 = zext i8 %38 to i32, !dbg !2024
  %40 = and i32 %37, %39, !dbg !2024
  %41 = icmp ne i32 %40, 0, !dbg !2024
  br i1 %41, label %42, label %43, !dbg !2026

42:                                               ; preds = %32
  store i64 -2147483645, i64* %2, align 8, !dbg !2027
  br label %44, !dbg !2027

43:                                               ; preds = %32
  store i64 0, i64* %2, align 8, !dbg !2029
  br label %44, !dbg !2029

44:                                               ; preds = %43, %42, %31
  %45 = load i64, i64* %2, align 8, !dbg !2030
  ret i64 %45, !dbg !2030
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_response(%struct.mqtt_response* %0, i8* %1, i64 %2) #0 !dbg !2031 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_response*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.mqtt_response* %0, %struct.mqtt_response** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %5, metadata !2035, metadata !DIExpression()), !dbg !2036
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2037, metadata !DIExpression()), !dbg !2038
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2039, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2041, metadata !DIExpression()), !dbg !2043
  %10 = load i8*, i8** %6, align 8, !dbg !2044
  store i8* %10, i8** %8, align 8, !dbg !2043
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2045, metadata !DIExpression()), !dbg !2046
  %11 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2047
  %12 = load i8*, i8** %6, align 8, !dbg !2048
  %13 = load i64, i64* %7, align 8, !dbg !2049
  %14 = call i64 @mqtt_unpack_fixed_header(%struct.mqtt_response* %11, i8* %12, i64 %13), !dbg !2050
  store i64 %14, i64* %9, align 8, !dbg !2046
  %15 = load i64, i64* %9, align 8, !dbg !2051
  %16 = icmp sle i64 %15, 0, !dbg !2053
  br i1 %16, label %17, label %19, !dbg !2054

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8, !dbg !2055
  store i64 %18, i64* %4, align 8, !dbg !2056
  br label %77, !dbg !2056

19:                                               ; preds = %3
  %20 = load i64, i64* %9, align 8, !dbg !2057
  %21 = load i8*, i8** %6, align 8, !dbg !2058
  %22 = getelementptr inbounds i8, i8* %21, i64 %20, !dbg !2058
  store i8* %22, i8** %6, align 8, !dbg !2058
  br label %23

23:                                               ; preds = %19
  %24 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2059
  %25 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %24, i32 0, i32 0, !dbg !2060
  %26 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %25, i32 0, i32 0, !dbg !2061
  %27 = load i32, i32* %26, align 8, !dbg !2061
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
  ], !dbg !2062

28:                                               ; preds = %23
  %29 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2063
  %30 = load i8*, i8** %6, align 8, !dbg !2065
  %31 = call i64 @mqtt_unpack_connack_response(%struct.mqtt_response* %29, i8* %30), !dbg !2066
  store i64 %31, i64* %9, align 8, !dbg !2067
  br label %63, !dbg !2068

32:                                               ; preds = %23
  %33 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2069
  %34 = load i8*, i8** %6, align 8, !dbg !2070
  %35 = call i64 @mqtt_unpack_publish_response(%struct.mqtt_response* %33, i8* %34), !dbg !2071
  store i64 %35, i64* %9, align 8, !dbg !2072
  br label %63, !dbg !2073

36:                                               ; preds = %23
  %37 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2074
  %38 = load i8*, i8** %6, align 8, !dbg !2075
  %39 = call i64 @mqtt_unpack_pubxxx_response(%struct.mqtt_response* %37, i8* %38), !dbg !2076
  store i64 %39, i64* %9, align 8, !dbg !2077
  br label %63, !dbg !2078

40:                                               ; preds = %23
  %41 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2079
  %42 = load i8*, i8** %6, align 8, !dbg !2080
  %43 = call i64 @mqtt_unpack_pubxxx_response(%struct.mqtt_response* %41, i8* %42), !dbg !2081
  store i64 %43, i64* %9, align 8, !dbg !2082
  br label %63, !dbg !2083

44:                                               ; preds = %23
  %45 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2084
  %46 = load i8*, i8** %6, align 8, !dbg !2085
  %47 = call i64 @mqtt_unpack_pubxxx_response(%struct.mqtt_response* %45, i8* %46), !dbg !2086
  store i64 %47, i64* %9, align 8, !dbg !2087
  br label %63, !dbg !2088

48:                                               ; preds = %23
  %49 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2089
  %50 = load i8*, i8** %6, align 8, !dbg !2090
  %51 = call i64 @mqtt_unpack_pubxxx_response(%struct.mqtt_response* %49, i8* %50), !dbg !2091
  store i64 %51, i64* %9, align 8, !dbg !2092
  br label %63, !dbg !2093

52:                                               ; preds = %23
  %53 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2094
  %54 = load i8*, i8** %6, align 8, !dbg !2095
  %55 = call i64 @mqtt_unpack_suback_response(%struct.mqtt_response* %53, i8* %54), !dbg !2096
  store i64 %55, i64* %9, align 8, !dbg !2097
  br label %63, !dbg !2098

56:                                               ; preds = %23
  %57 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2099
  %58 = load i8*, i8** %6, align 8, !dbg !2100
  %59 = call i64 @mqtt_unpack_unsuback_response(%struct.mqtt_response* %57, i8* %58), !dbg !2101
  store i64 %59, i64* %9, align 8, !dbg !2102
  br label %63, !dbg !2103

60:                                               ; preds = %23
  %61 = load i64, i64* %9, align 8, !dbg !2104
  store i64 %61, i64* %4, align 8, !dbg !2105
  br label %77, !dbg !2105

62:                                               ; preds = %23
  store i64 -2147483634, i64* %4, align 8, !dbg !2106
  br label %77, !dbg !2106

63:                                               ; preds = %56, %52, %48, %44, %40, %36, %32, %28
  %64 = load i64, i64* %9, align 8, !dbg !2107
  %65 = icmp slt i64 %64, 0, !dbg !2109
  br i1 %65, label %66, label %68, !dbg !2110

66:                                               ; preds = %63
  %67 = load i64, i64* %9, align 8, !dbg !2111
  store i64 %67, i64* %4, align 8, !dbg !2112
  br label %77, !dbg !2112

68:                                               ; preds = %63
  %69 = load i64, i64* %9, align 8, !dbg !2113
  %70 = load i8*, i8** %6, align 8, !dbg !2114
  %71 = getelementptr inbounds i8, i8* %70, i64 %69, !dbg !2114
  store i8* %71, i8** %6, align 8, !dbg !2114
  %72 = load i8*, i8** %6, align 8, !dbg !2115
  %73 = load i8*, i8** %8, align 8, !dbg !2116
  %74 = ptrtoint i8* %72 to i64, !dbg !2117
  %75 = ptrtoint i8* %73 to i64, !dbg !2117
  %76 = sub i64 %74, %75, !dbg !2117
  store i64 %76, i64* %4, align 8, !dbg !2118
  br label %77, !dbg !2118

77:                                               ; preds = %68, %66, %62, %60, %17
  %78 = load i64, i64* %4, align 8, !dbg !2119
  ret i64 %78, !dbg !2119
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mqtt_queued_message* @mqtt_mq_find(%struct.mqtt_message_queue* %0, i32 %1, i16* %2) #0 !dbg !2120 {
  %4 = alloca %struct.mqtt_queued_message*, align 8
  %5 = alloca %struct.mqtt_message_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_message_queue* %0, %struct.mqtt_message_queue** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_message_queue** %5, metadata !2124, metadata !DIExpression()), !dbg !2125
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2126, metadata !DIExpression()), !dbg !2127
  store i16* %2, i16** %7, align 8
  call void @llvm.dbg.declare(metadata i16** %7, metadata !2128, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %8, metadata !2130, metadata !DIExpression()), !dbg !2131
  %9 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %5, align 8, !dbg !2132
  %10 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %9, i32 0, i32 1, !dbg !2132
  %11 = load i8*, i8** %10, align 8, !dbg !2132
  %12 = bitcast i8* %11 to %struct.mqtt_queued_message*, !dbg !2132
  %13 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %12, i64 -1, !dbg !2132
  %14 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %13, i64 0, !dbg !2132
  store %struct.mqtt_queued_message* %14, %struct.mqtt_queued_message** %8, align 8, !dbg !2134
  br label %15, !dbg !2135

15:                                               ; preds = %51, %3
  %16 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2136
  %17 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %5, align 8, !dbg !2138
  %18 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %17, i32 0, i32 4, !dbg !2139
  %19 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %18, align 8, !dbg !2139
  %20 = icmp uge %struct.mqtt_queued_message* %16, %19, !dbg !2140
  br i1 %20, label %21, label %54, !dbg !2141

21:                                               ; preds = %15
  %22 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2142
  %23 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %22, i32 0, i32 4, !dbg !2145
  %24 = load i32, i32* %23, align 8, !dbg !2145
  %25 = load i32, i32* %6, align 4, !dbg !2146
  %26 = icmp eq i32 %24, %25, !dbg !2147
  br i1 %26, label %27, label %50, !dbg !2148

27:                                               ; preds = %21
  %28 = load i16*, i16** %7, align 8, !dbg !2149
  %29 = icmp eq i16* %28, null, !dbg !2152
  br i1 %29, label %30, label %35, !dbg !2153

30:                                               ; preds = %27
  %31 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2154
  %32 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %31, i32 0, i32 2, !dbg !2155
  %33 = load i32, i32* %32, align 8, !dbg !2155
  %34 = icmp ne i32 %33, 2, !dbg !2156
  br i1 %34, label %47, label %35, !dbg !2157

35:                                               ; preds = %30, %27
  %36 = load i16*, i16** %7, align 8, !dbg !2158
  %37 = icmp ne i16* %36, null, !dbg !2159
  br i1 %37, label %38, label %49, !dbg !2160

38:                                               ; preds = %35
  %39 = load i16*, i16** %7, align 8, !dbg !2161
  %40 = load i16, i16* %39, align 2, !dbg !2162
  %41 = zext i16 %40 to i32, !dbg !2162
  %42 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2163
  %43 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %42, i32 0, i32 5, !dbg !2164
  %44 = load i16, i16* %43, align 4, !dbg !2164
  %45 = zext i16 %44 to i32, !dbg !2163
  %46 = icmp eq i32 %41, %45, !dbg !2165
  br i1 %46, label %47, label %49, !dbg !2166

47:                                               ; preds = %38, %30
  %48 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2167
  store %struct.mqtt_queued_message* %48, %struct.mqtt_queued_message** %4, align 8, !dbg !2169
  br label %55, !dbg !2169

49:                                               ; preds = %38, %35
  br label %50, !dbg !2170

50:                                               ; preds = %49, %21
  br label %51, !dbg !2171

51:                                               ; preds = %50
  %52 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !2172
  %53 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %52, i32 -1, !dbg !2172
  store %struct.mqtt_queued_message* %53, %struct.mqtt_queued_message** %8, align 8, !dbg !2172
  br label %15, !dbg !2173, !llvm.loop !2174

54:                                               ; preds = %15
  store %struct.mqtt_queued_message* null, %struct.mqtt_queued_message** %4, align 8, !dbg !2176
  br label %55, !dbg !2176

55:                                               ; preds = %54, %47
  %56 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %4, align 8, !dbg !2177
  ret %struct.mqtt_queued_message* %56, !dbg !2177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_puback(%struct.mqtt_client.7* %0, i16 zeroext %1) #0 !dbg !2178 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_client.7*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %4, metadata !2181, metadata !DIExpression()), !dbg !2182
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2183, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2185, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %7, metadata !2187, metadata !DIExpression()), !dbg !2188
  %8 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2189
  %9 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %8, i32 0, i32 6, !dbg !2189
  %10 = load i32, i32* %9, align 8, !dbg !2189
  %11 = icmp slt i32 %10, 0, !dbg !2189
  br i1 %11, label %12, label %17, !dbg !2191

12:                                               ; preds = %2
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2192
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 6, !dbg !2192
  %15 = load i32, i32* %14, align 8, !dbg !2192
  %16 = sext i32 %15 to i64, !dbg !2192
  store i64 %16, i64* %3, align 8, !dbg !2192
  br label %79, !dbg !2192

17:                                               ; preds = %2
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2191
  %19 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %18, i32 0, i32 17, !dbg !2191
  %20 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %19, i32 0, i32 2, !dbg !2191
  %21 = load i8*, i8** %20, align 8, !dbg !2191
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2191
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 17, !dbg !2191
  %24 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %23, i32 0, i32 3, !dbg !2191
  %25 = load i64, i64* %24, align 8, !dbg !2191
  %26 = load i16, i16* %5, align 2, !dbg !2191
  %27 = call i64 @mqtt_pack_pubxxx_request(i8* %21, i64 %25, i32 4, i16 zeroext %26), !dbg !2191
  store i64 %27, i64* %6, align 8, !dbg !2191
  %28 = load i64, i64* %6, align 8, !dbg !2194
  %29 = icmp slt i64 %28, 0, !dbg !2194
  br i1 %29, label %30, label %36, !dbg !2191

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8, !dbg !2196
  %32 = trunc i64 %31 to i32, !dbg !2196
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2196
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 6, !dbg !2196
  store i32 %32, i32* %34, align 8, !dbg !2196
  %35 = load i64, i64* %6, align 8, !dbg !2196
  store i64 %35, i64* %3, align 8, !dbg !2196
  br label %79, !dbg !2196

36:                                               ; preds = %17
  %37 = load i64, i64* %6, align 8, !dbg !2198
  %38 = icmp eq i64 %37, 0, !dbg !2198
  br i1 %38, label %39, label %68, !dbg !2194

39:                                               ; preds = %36
  %40 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2200
  %41 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %40, i32 0, i32 17, !dbg !2200
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %41), !dbg !2200
  %42 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2200
  %43 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %42, i32 0, i32 17, !dbg !2200
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 2, !dbg !2200
  %45 = load i8*, i8** %44, align 8, !dbg !2200
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2200
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !2200
  %48 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %47, i32 0, i32 3, !dbg !2200
  %49 = load i64, i64* %48, align 8, !dbg !2200
  %50 = load i16, i16* %5, align 2, !dbg !2200
  %51 = call i64 @mqtt_pack_pubxxx_request(i8* %45, i64 %49, i32 4, i16 zeroext %50), !dbg !2200
  store i64 %51, i64* %6, align 8, !dbg !2200
  %52 = load i64, i64* %6, align 8, !dbg !2202
  %53 = icmp slt i64 %52, 0, !dbg !2202
  br i1 %53, label %54, label %60, !dbg !2200

54:                                               ; preds = %39
  %55 = load i64, i64* %6, align 8, !dbg !2204
  %56 = trunc i64 %55 to i32, !dbg !2204
  %57 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2204
  %58 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %57, i32 0, i32 6, !dbg !2204
  store i32 %56, i32* %58, align 8, !dbg !2204
  %59 = load i64, i64* %6, align 8, !dbg !2204
  store i64 %59, i64* %3, align 8, !dbg !2204
  br label %79, !dbg !2204

60:                                               ; preds = %39
  %61 = load i64, i64* %6, align 8, !dbg !2206
  %62 = icmp eq i64 %61, 0, !dbg !2206
  br i1 %62, label %63, label %66, !dbg !2202

63:                                               ; preds = %60
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2208
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 6, !dbg !2208
  store i32 -2147483632, i32* %65, align 8, !dbg !2208
  store i64 -2147483632, i64* %3, align 8, !dbg !2208
  br label %79, !dbg !2208

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  br label %68, !dbg !2200

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2191
  %71 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %70, i32 0, i32 17, !dbg !2191
  %72 = load i64, i64* %6, align 8, !dbg !2191
  %73 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %71, i64 %72), !dbg !2191
  store %struct.mqtt_queued_message* %73, %struct.mqtt_queued_message** %7, align 8, !dbg !2191
  %74 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2210
  %75 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %74, i32 0, i32 4, !dbg !2211
  store i32 4, i32* %75, align 8, !dbg !2212
  %76 = load i16, i16* %5, align 2, !dbg !2213
  %77 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2214
  %78 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %77, i32 0, i32 5, !dbg !2215
  store i16 %76, i16* %78, align 4, !dbg !2216
  store i64 1, i64* %3, align 8, !dbg !2217
  br label %79, !dbg !2217

79:                                               ; preds = %69, %63, %54, %30, %12
  %80 = load i64, i64* %3, align 8, !dbg !2218
  ret i64 %80, !dbg !2218
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_pubrec(%struct.mqtt_client.7* %0, i16 zeroext %1) #0 !dbg !2219 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_client.7*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %4, metadata !2220, metadata !DIExpression()), !dbg !2221
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2222, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2224, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %7, metadata !2226, metadata !DIExpression()), !dbg !2227
  %8 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2228
  %9 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %8, i32 0, i32 6, !dbg !2228
  %10 = load i32, i32* %9, align 8, !dbg !2228
  %11 = icmp slt i32 %10, 0, !dbg !2228
  br i1 %11, label %12, label %17, !dbg !2230

12:                                               ; preds = %2
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2231
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 6, !dbg !2231
  %15 = load i32, i32* %14, align 8, !dbg !2231
  %16 = sext i32 %15 to i64, !dbg !2231
  store i64 %16, i64* %3, align 8, !dbg !2231
  br label %79, !dbg !2231

17:                                               ; preds = %2
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2230
  %19 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %18, i32 0, i32 17, !dbg !2230
  %20 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %19, i32 0, i32 2, !dbg !2230
  %21 = load i8*, i8** %20, align 8, !dbg !2230
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2230
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 17, !dbg !2230
  %24 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %23, i32 0, i32 3, !dbg !2230
  %25 = load i64, i64* %24, align 8, !dbg !2230
  %26 = load i16, i16* %5, align 2, !dbg !2230
  %27 = call i64 @mqtt_pack_pubxxx_request(i8* %21, i64 %25, i32 5, i16 zeroext %26), !dbg !2230
  store i64 %27, i64* %6, align 8, !dbg !2230
  %28 = load i64, i64* %6, align 8, !dbg !2233
  %29 = icmp slt i64 %28, 0, !dbg !2233
  br i1 %29, label %30, label %36, !dbg !2230

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8, !dbg !2235
  %32 = trunc i64 %31 to i32, !dbg !2235
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2235
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 6, !dbg !2235
  store i32 %32, i32* %34, align 8, !dbg !2235
  %35 = load i64, i64* %6, align 8, !dbg !2235
  store i64 %35, i64* %3, align 8, !dbg !2235
  br label %79, !dbg !2235

36:                                               ; preds = %17
  %37 = load i64, i64* %6, align 8, !dbg !2237
  %38 = icmp eq i64 %37, 0, !dbg !2237
  br i1 %38, label %39, label %68, !dbg !2233

39:                                               ; preds = %36
  %40 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2239
  %41 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %40, i32 0, i32 17, !dbg !2239
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %41), !dbg !2239
  %42 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2239
  %43 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %42, i32 0, i32 17, !dbg !2239
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 2, !dbg !2239
  %45 = load i8*, i8** %44, align 8, !dbg !2239
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2239
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !2239
  %48 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %47, i32 0, i32 3, !dbg !2239
  %49 = load i64, i64* %48, align 8, !dbg !2239
  %50 = load i16, i16* %5, align 2, !dbg !2239
  %51 = call i64 @mqtt_pack_pubxxx_request(i8* %45, i64 %49, i32 5, i16 zeroext %50), !dbg !2239
  store i64 %51, i64* %6, align 8, !dbg !2239
  %52 = load i64, i64* %6, align 8, !dbg !2241
  %53 = icmp slt i64 %52, 0, !dbg !2241
  br i1 %53, label %54, label %60, !dbg !2239

54:                                               ; preds = %39
  %55 = load i64, i64* %6, align 8, !dbg !2243
  %56 = trunc i64 %55 to i32, !dbg !2243
  %57 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2243
  %58 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %57, i32 0, i32 6, !dbg !2243
  store i32 %56, i32* %58, align 8, !dbg !2243
  %59 = load i64, i64* %6, align 8, !dbg !2243
  store i64 %59, i64* %3, align 8, !dbg !2243
  br label %79, !dbg !2243

60:                                               ; preds = %39
  %61 = load i64, i64* %6, align 8, !dbg !2245
  %62 = icmp eq i64 %61, 0, !dbg !2245
  br i1 %62, label %63, label %66, !dbg !2241

63:                                               ; preds = %60
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2247
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 6, !dbg !2247
  store i32 -2147483632, i32* %65, align 8, !dbg !2247
  store i64 -2147483632, i64* %3, align 8, !dbg !2247
  br label %79, !dbg !2247

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  br label %68, !dbg !2239

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2230
  %71 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %70, i32 0, i32 17, !dbg !2230
  %72 = load i64, i64* %6, align 8, !dbg !2230
  %73 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %71, i64 %72), !dbg !2230
  store %struct.mqtt_queued_message* %73, %struct.mqtt_queued_message** %7, align 8, !dbg !2230
  %74 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2249
  %75 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %74, i32 0, i32 4, !dbg !2250
  store i32 5, i32* %75, align 8, !dbg !2251
  %76 = load i16, i16* %5, align 2, !dbg !2252
  %77 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2253
  %78 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %77, i32 0, i32 5, !dbg !2254
  store i16 %76, i16* %78, align 4, !dbg !2255
  store i64 1, i64* %3, align 8, !dbg !2256
  br label %79, !dbg !2256

79:                                               ; preds = %69, %63, %54, %30, %12
  %80 = load i64, i64* %3, align 8, !dbg !2257
  ret i64 %80, !dbg !2257
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_pubrel(%struct.mqtt_client.7* %0, i16 zeroext %1) #0 !dbg !2258 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_client.7*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %4, metadata !2259, metadata !DIExpression()), !dbg !2260
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2261, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2263, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %7, metadata !2265, metadata !DIExpression()), !dbg !2266
  %8 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2267
  %9 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %8, i32 0, i32 6, !dbg !2267
  %10 = load i32, i32* %9, align 8, !dbg !2267
  %11 = icmp slt i32 %10, 0, !dbg !2267
  br i1 %11, label %12, label %17, !dbg !2269

12:                                               ; preds = %2
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2270
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 6, !dbg !2270
  %15 = load i32, i32* %14, align 8, !dbg !2270
  %16 = sext i32 %15 to i64, !dbg !2270
  store i64 %16, i64* %3, align 8, !dbg !2270
  br label %79, !dbg !2270

17:                                               ; preds = %2
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2269
  %19 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %18, i32 0, i32 17, !dbg !2269
  %20 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %19, i32 0, i32 2, !dbg !2269
  %21 = load i8*, i8** %20, align 8, !dbg !2269
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2269
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 17, !dbg !2269
  %24 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %23, i32 0, i32 3, !dbg !2269
  %25 = load i64, i64* %24, align 8, !dbg !2269
  %26 = load i16, i16* %5, align 2, !dbg !2269
  %27 = call i64 @mqtt_pack_pubxxx_request(i8* %21, i64 %25, i32 6, i16 zeroext %26), !dbg !2269
  store i64 %27, i64* %6, align 8, !dbg !2269
  %28 = load i64, i64* %6, align 8, !dbg !2272
  %29 = icmp slt i64 %28, 0, !dbg !2272
  br i1 %29, label %30, label %36, !dbg !2269

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8, !dbg !2274
  %32 = trunc i64 %31 to i32, !dbg !2274
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2274
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 6, !dbg !2274
  store i32 %32, i32* %34, align 8, !dbg !2274
  %35 = load i64, i64* %6, align 8, !dbg !2274
  store i64 %35, i64* %3, align 8, !dbg !2274
  br label %79, !dbg !2274

36:                                               ; preds = %17
  %37 = load i64, i64* %6, align 8, !dbg !2276
  %38 = icmp eq i64 %37, 0, !dbg !2276
  br i1 %38, label %39, label %68, !dbg !2272

39:                                               ; preds = %36
  %40 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2278
  %41 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %40, i32 0, i32 17, !dbg !2278
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %41), !dbg !2278
  %42 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2278
  %43 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %42, i32 0, i32 17, !dbg !2278
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 2, !dbg !2278
  %45 = load i8*, i8** %44, align 8, !dbg !2278
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2278
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !2278
  %48 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %47, i32 0, i32 3, !dbg !2278
  %49 = load i64, i64* %48, align 8, !dbg !2278
  %50 = load i16, i16* %5, align 2, !dbg !2278
  %51 = call i64 @mqtt_pack_pubxxx_request(i8* %45, i64 %49, i32 6, i16 zeroext %50), !dbg !2278
  store i64 %51, i64* %6, align 8, !dbg !2278
  %52 = load i64, i64* %6, align 8, !dbg !2280
  %53 = icmp slt i64 %52, 0, !dbg !2280
  br i1 %53, label %54, label %60, !dbg !2278

54:                                               ; preds = %39
  %55 = load i64, i64* %6, align 8, !dbg !2282
  %56 = trunc i64 %55 to i32, !dbg !2282
  %57 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2282
  %58 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %57, i32 0, i32 6, !dbg !2282
  store i32 %56, i32* %58, align 8, !dbg !2282
  %59 = load i64, i64* %6, align 8, !dbg !2282
  store i64 %59, i64* %3, align 8, !dbg !2282
  br label %79, !dbg !2282

60:                                               ; preds = %39
  %61 = load i64, i64* %6, align 8, !dbg !2284
  %62 = icmp eq i64 %61, 0, !dbg !2284
  br i1 %62, label %63, label %66, !dbg !2280

63:                                               ; preds = %60
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2286
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 6, !dbg !2286
  store i32 -2147483632, i32* %65, align 8, !dbg !2286
  store i64 -2147483632, i64* %3, align 8, !dbg !2286
  br label %79, !dbg !2286

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  br label %68, !dbg !2278

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2269
  %71 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %70, i32 0, i32 17, !dbg !2269
  %72 = load i64, i64* %6, align 8, !dbg !2269
  %73 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %71, i64 %72), !dbg !2269
  store %struct.mqtt_queued_message* %73, %struct.mqtt_queued_message** %7, align 8, !dbg !2269
  %74 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2288
  %75 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %74, i32 0, i32 4, !dbg !2289
  store i32 6, i32* %75, align 8, !dbg !2290
  %76 = load i16, i16* %5, align 2, !dbg !2291
  %77 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2292
  %78 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %77, i32 0, i32 5, !dbg !2293
  store i16 %76, i16* %78, align 4, !dbg !2294
  store i64 1, i64* %3, align 8, !dbg !2295
  br label %79, !dbg !2295

79:                                               ; preds = %69, %63, %54, %30, %12
  %80 = load i64, i64* %3, align 8, !dbg !2296
  ret i64 %80, !dbg !2296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_pubcomp(%struct.mqtt_client.7* %0, i16 zeroext %1) #0 !dbg !2297 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_client.7*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %4, metadata !2298, metadata !DIExpression()), !dbg !2299
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2300, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %7, metadata !2304, metadata !DIExpression()), !dbg !2305
  %8 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2306
  %9 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %8, i32 0, i32 6, !dbg !2306
  %10 = load i32, i32* %9, align 8, !dbg !2306
  %11 = icmp slt i32 %10, 0, !dbg !2306
  br i1 %11, label %12, label %17, !dbg !2308

12:                                               ; preds = %2
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2309
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 6, !dbg !2309
  %15 = load i32, i32* %14, align 8, !dbg !2309
  %16 = sext i32 %15 to i64, !dbg !2309
  store i64 %16, i64* %3, align 8, !dbg !2309
  br label %79, !dbg !2309

17:                                               ; preds = %2
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2308
  %19 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %18, i32 0, i32 17, !dbg !2308
  %20 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %19, i32 0, i32 2, !dbg !2308
  %21 = load i8*, i8** %20, align 8, !dbg !2308
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2308
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 17, !dbg !2308
  %24 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %23, i32 0, i32 3, !dbg !2308
  %25 = load i64, i64* %24, align 8, !dbg !2308
  %26 = load i16, i16* %5, align 2, !dbg !2308
  %27 = call i64 @mqtt_pack_pubxxx_request(i8* %21, i64 %25, i32 7, i16 zeroext %26), !dbg !2308
  store i64 %27, i64* %6, align 8, !dbg !2308
  %28 = load i64, i64* %6, align 8, !dbg !2311
  %29 = icmp slt i64 %28, 0, !dbg !2311
  br i1 %29, label %30, label %36, !dbg !2308

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8, !dbg !2313
  %32 = trunc i64 %31 to i32, !dbg !2313
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2313
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 6, !dbg !2313
  store i32 %32, i32* %34, align 8, !dbg !2313
  %35 = load i64, i64* %6, align 8, !dbg !2313
  store i64 %35, i64* %3, align 8, !dbg !2313
  br label %79, !dbg !2313

36:                                               ; preds = %17
  %37 = load i64, i64* %6, align 8, !dbg !2315
  %38 = icmp eq i64 %37, 0, !dbg !2315
  br i1 %38, label %39, label %68, !dbg !2311

39:                                               ; preds = %36
  %40 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2317
  %41 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %40, i32 0, i32 17, !dbg !2317
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %41), !dbg !2317
  %42 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2317
  %43 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %42, i32 0, i32 17, !dbg !2317
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 2, !dbg !2317
  %45 = load i8*, i8** %44, align 8, !dbg !2317
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2317
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !2317
  %48 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %47, i32 0, i32 3, !dbg !2317
  %49 = load i64, i64* %48, align 8, !dbg !2317
  %50 = load i16, i16* %5, align 2, !dbg !2317
  %51 = call i64 @mqtt_pack_pubxxx_request(i8* %45, i64 %49, i32 7, i16 zeroext %50), !dbg !2317
  store i64 %51, i64* %6, align 8, !dbg !2317
  %52 = load i64, i64* %6, align 8, !dbg !2319
  %53 = icmp slt i64 %52, 0, !dbg !2319
  br i1 %53, label %54, label %60, !dbg !2317

54:                                               ; preds = %39
  %55 = load i64, i64* %6, align 8, !dbg !2321
  %56 = trunc i64 %55 to i32, !dbg !2321
  %57 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2321
  %58 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %57, i32 0, i32 6, !dbg !2321
  store i32 %56, i32* %58, align 8, !dbg !2321
  %59 = load i64, i64* %6, align 8, !dbg !2321
  store i64 %59, i64* %3, align 8, !dbg !2321
  br label %79, !dbg !2321

60:                                               ; preds = %39
  %61 = load i64, i64* %6, align 8, !dbg !2323
  %62 = icmp eq i64 %61, 0, !dbg !2323
  br i1 %62, label %63, label %66, !dbg !2319

63:                                               ; preds = %60
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2325
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 6, !dbg !2325
  store i32 -2147483632, i32* %65, align 8, !dbg !2325
  store i64 -2147483632, i64* %3, align 8, !dbg !2325
  br label %79, !dbg !2325

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  br label %68, !dbg !2317

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !2308
  %71 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %70, i32 0, i32 17, !dbg !2308
  %72 = load i64, i64* %6, align 8, !dbg !2308
  %73 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %71, i64 %72), !dbg !2308
  store %struct.mqtt_queued_message* %73, %struct.mqtt_queued_message** %7, align 8, !dbg !2308
  %74 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2327
  %75 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %74, i32 0, i32 4, !dbg !2328
  store i32 7, i32* %75, align 8, !dbg !2329
  %76 = load i16, i16* %5, align 2, !dbg !2330
  %77 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %7, align 8, !dbg !2331
  %78 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %77, i32 0, i32 5, !dbg !2332
  store i16 %76, i16* %78, align 4, !dbg !2333
  store i64 1, i64* %3, align 8, !dbg !2334
  br label %79, !dbg !2334

79:                                               ; preds = %69, %63, %54, %30, %12
  %80 = load i64, i64* %3, align 8, !dbg !2335
  ret i64 %80, !dbg !2335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_pubxxx_request(i8* %0, i64 %1, i32 %2, i16 zeroext %3) #0 !dbg !2336 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mqtt_fixed_header, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2339, metadata !DIExpression()), !dbg !2340
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2341, metadata !DIExpression()), !dbg !2342
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2343, metadata !DIExpression()), !dbg !2344
  store i16 %3, i16* %9, align 2
  call void @llvm.dbg.declare(metadata i16* %9, metadata !2345, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2347, metadata !DIExpression()), !dbg !2348
  %13 = load i8*, i8** %6, align 8, !dbg !2349
  store i8* %13, i8** %10, align 8, !dbg !2348
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %11, metadata !2350, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2352, metadata !DIExpression()), !dbg !2353
  %14 = load i8*, i8** %6, align 8, !dbg !2354
  %15 = icmp eq i8* %14, null, !dbg !2356
  br i1 %15, label %16, label %17, !dbg !2357

16:                                               ; preds = %4
  store i64 -2147483647, i64* %5, align 8, !dbg !2358
  br label %64, !dbg !2358

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4, !dbg !2360
  %19 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 0, !dbg !2361
  store i32 %18, i32* %19, align 4, !dbg !2362
  %20 = load i32, i32* %8, align 4, !dbg !2363
  %21 = icmp eq i32 %20, 6, !dbg !2365
  br i1 %21, label %22, label %27, !dbg !2366

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 1, !dbg !2367
  %24 = load i8, i8* %23, align 4, !dbg !2369
  %25 = and i8 %24, -16, !dbg !2369
  %26 = or i8 %25, 2, !dbg !2369
  store i8 %26, i8* %23, align 4, !dbg !2369
  br label %31, !dbg !2370

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 1, !dbg !2371
  %29 = load i8, i8* %28, align 4, !dbg !2373
  %30 = and i8 %29, -16, !dbg !2373
  store i8 %30, i8* %28, align 4, !dbg !2373
  br label %31

31:                                               ; preds = %27, %22
  %32 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !2374
  store i32 2, i32* %32, align 4, !dbg !2375
  %33 = load i8*, i8** %6, align 8, !dbg !2376
  %34 = load i64, i64* %7, align 8, !dbg !2377
  %35 = call i64 @mqtt_pack_fixed_header(i8* %33, i64 %34, %struct.mqtt_fixed_header* %11), !dbg !2378
  store i64 %35, i64* %12, align 8, !dbg !2379
  %36 = load i64, i64* %12, align 8, !dbg !2380
  %37 = icmp sle i64 %36, 0, !dbg !2382
  br i1 %37, label %38, label %40, !dbg !2383

38:                                               ; preds = %31
  %39 = load i64, i64* %12, align 8, !dbg !2384
  store i64 %39, i64* %5, align 8, !dbg !2386
  br label %64, !dbg !2386

40:                                               ; preds = %31
  %41 = load i64, i64* %12, align 8, !dbg !2387
  %42 = load i8*, i8** %6, align 8, !dbg !2388
  %43 = getelementptr inbounds i8, i8* %42, i64 %41, !dbg !2388
  store i8* %43, i8** %6, align 8, !dbg !2388
  %44 = load i64, i64* %12, align 8, !dbg !2389
  %45 = load i64, i64* %7, align 8, !dbg !2390
  %46 = sub i64 %45, %44, !dbg !2390
  store i64 %46, i64* %7, align 8, !dbg !2390
  %47 = load i64, i64* %7, align 8, !dbg !2391
  %48 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !2393
  %49 = load i32, i32* %48, align 4, !dbg !2393
  %50 = zext i32 %49 to i64, !dbg !2394
  %51 = icmp ult i64 %47, %50, !dbg !2395
  br i1 %51, label %52, label %53, !dbg !2396

52:                                               ; preds = %40
  store i64 0, i64* %5, align 8, !dbg !2397
  br label %64, !dbg !2397

53:                                               ; preds = %40
  %54 = load i8*, i8** %6, align 8, !dbg !2399
  %55 = load i16, i16* %9, align 2, !dbg !2400
  %56 = call i64 @__mqtt_pack_uint16(i8* %54, i16 zeroext %55), !dbg !2401
  %57 = load i8*, i8** %6, align 8, !dbg !2402
  %58 = getelementptr inbounds i8, i8* %57, i64 %56, !dbg !2402
  store i8* %58, i8** %6, align 8, !dbg !2402
  %59 = load i8*, i8** %6, align 8, !dbg !2403
  %60 = load i8*, i8** %10, align 8, !dbg !2404
  %61 = ptrtoint i8* %59 to i64, !dbg !2405
  %62 = ptrtoint i8* %60 to i64, !dbg !2405
  %63 = sub i64 %61, %62, !dbg !2405
  store i64 %63, i64* %5, align 8, !dbg !2406
  br label %64, !dbg !2406

64:                                               ; preds = %53, %52, %38, %16
  %65 = load i64, i64* %5, align 8, !dbg !2407
  ret i64 %65, !dbg !2407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_pack_uint16(i8* %0, i16 zeroext %1) #0 !dbg !2408 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2411, metadata !DIExpression()), !dbg !2412
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !2413, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2415, metadata !DIExpression()), !dbg !2416
  %6 = load i16, i16* %4, align 2, !dbg !2417
  %7 = call zeroext i16 @htons(i16 zeroext %6) #13, !dbg !2417
  store i16 %7, i16* %5, align 2, !dbg !2416
  %8 = load i8*, i8** %3, align 8, !dbg !2418
  %9 = bitcast i16* %5 to i8*, !dbg !2419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 2 %9, i64 2, i1 false), !dbg !2419
  ret i64 2, !dbg !2420
}

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 zeroext) #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_fixed_header(%struct.mqtt_response* %0, i8* %1, i64 %2) #0 !dbg !2421 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_response*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mqtt_fixed_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mqtt_response* %0, %struct.mqtt_response** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %5, metadata !2422, metadata !DIExpression()), !dbg !2423
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2424, metadata !DIExpression()), !dbg !2425
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2426, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header** %8, metadata !2428, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2431, metadata !DIExpression()), !dbg !2432
  %12 = load i8*, i8** %6, align 8, !dbg !2433
  store i8* %12, i8** %9, align 8, !dbg !2432
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2434, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2436, metadata !DIExpression()), !dbg !2437
  %13 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2438
  %14 = icmp eq %struct.mqtt_response* %13, null, !dbg !2440
  br i1 %14, label %18, label %15, !dbg !2441

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8, !dbg !2442
  %17 = icmp eq i8* %16, null, !dbg !2443
  br i1 %17, label %18, label %19, !dbg !2444

18:                                               ; preds = %15, %3
  store i64 -2147483647, i64* %4, align 8, !dbg !2445
  br label %102, !dbg !2445

19:                                               ; preds = %15
  %20 = load %struct.mqtt_response*, %struct.mqtt_response** %5, align 8, !dbg !2447
  %21 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %20, i32 0, i32 0, !dbg !2448
  store %struct.mqtt_fixed_header* %21, %struct.mqtt_fixed_header** %8, align 8, !dbg !2449
  %22 = load i64, i64* %7, align 8, !dbg !2450
  %23 = icmp eq i64 %22, 0, !dbg !2452
  br i1 %23, label %24, label %25, !dbg !2453

24:                                               ; preds = %19
  store i64 0, i64* %4, align 8, !dbg !2454
  br label %102, !dbg !2454

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8, !dbg !2455
  %27 = load i8, i8* %26, align 1, !dbg !2456
  %28 = zext i8 %27 to i32, !dbg !2456
  %29 = ashr i32 %28, 4, !dbg !2457
  %30 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2458
  %31 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %30, i32 0, i32 0, !dbg !2459
  store i32 %29, i32* %31, align 4, !dbg !2460
  %32 = load i8*, i8** %6, align 8, !dbg !2461
  %33 = load i8, i8* %32, align 1, !dbg !2462
  %34 = zext i8 %33 to i32, !dbg !2462
  %35 = and i32 %34, 15, !dbg !2463
  %36 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2464
  %37 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %36, i32 0, i32 1, !dbg !2465
  %38 = trunc i32 %35 to i8, !dbg !2466
  %39 = load i8, i8* %37, align 4, !dbg !2466
  %40 = and i8 %38, 15, !dbg !2466
  %41 = and i8 %39, -16, !dbg !2466
  %42 = or i8 %41, %40, !dbg !2466
  store i8 %42, i8* %37, align 4, !dbg !2466
  %43 = zext i8 %40 to i32, !dbg !2466
  %44 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2467
  %45 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %44, i32 0, i32 2, !dbg !2468
  store i32 0, i32* %45, align 4, !dbg !2469
  store i32 0, i32* %10, align 4, !dbg !2470
  br label %46, !dbg !2471

46:                                               ; preds = %71, %25
  %47 = load i32, i32* %10, align 4, !dbg !2472
  %48 = icmp eq i32 %47, 28, !dbg !2475
  br i1 %48, label %49, label %50, !dbg !2476

49:                                               ; preds = %46
  store i64 -2147483622, i64* %4, align 8, !dbg !2477
  br label %102, !dbg !2477

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8, !dbg !2478
  %52 = add i64 %51, -1, !dbg !2478
  store i64 %52, i64* %7, align 8, !dbg !2478
  %53 = load i8*, i8** %6, align 8, !dbg !2479
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !2479
  store i8* %54, i8** %6, align 8, !dbg !2479
  %55 = load i64, i64* %7, align 8, !dbg !2480
  %56 = icmp eq i64 %55, 0, !dbg !2482
  br i1 %56, label %57, label %58, !dbg !2483

57:                                               ; preds = %50
  store i64 0, i64* %4, align 8, !dbg !2484
  br label %102, !dbg !2484

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8, !dbg !2485
  %60 = load i8, i8* %59, align 1, !dbg !2486
  %61 = zext i8 %60 to i32, !dbg !2486
  %62 = and i32 %61, 127, !dbg !2487
  %63 = load i32, i32* %10, align 4, !dbg !2488
  %64 = shl i32 %62, %63, !dbg !2489
  %65 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2490
  %66 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %65, i32 0, i32 2, !dbg !2491
  %67 = load i32, i32* %66, align 4, !dbg !2492
  %68 = add i32 %67, %64, !dbg !2492
  store i32 %68, i32* %66, align 4, !dbg !2492
  %69 = load i32, i32* %10, align 4, !dbg !2493
  %70 = add nsw i32 %69, 7, !dbg !2493
  store i32 %70, i32* %10, align 4, !dbg !2493
  br label %71, !dbg !2494

71:                                               ; preds = %58
  %72 = load i8*, i8** %6, align 8, !dbg !2495
  %73 = load i8, i8* %72, align 1, !dbg !2496
  %74 = zext i8 %73 to i32, !dbg !2496
  %75 = and i32 %74, 128, !dbg !2497
  %76 = icmp ne i32 %75, 0, !dbg !2494
  br i1 %76, label %46, label %77, !dbg !2494, !llvm.loop !2498

77:                                               ; preds = %71
  %78 = load i64, i64* %7, align 8, !dbg !2500
  %79 = add i64 %78, -1, !dbg !2500
  store i64 %79, i64* %7, align 8, !dbg !2500
  %80 = load i8*, i8** %6, align 8, !dbg !2501
  %81 = getelementptr inbounds i8, i8* %80, i32 1, !dbg !2501
  store i8* %81, i8** %6, align 8, !dbg !2501
  %82 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2502
  %83 = call i64 @mqtt_fixed_header_rule_violation(%struct.mqtt_fixed_header* %82), !dbg !2503
  store i64 %83, i64* %11, align 8, !dbg !2504
  %84 = load i64, i64* %11, align 8, !dbg !2505
  %85 = icmp ne i64 %84, 0, !dbg !2505
  br i1 %85, label %86, label %88, !dbg !2507

86:                                               ; preds = %77
  %87 = load i64, i64* %11, align 8, !dbg !2508
  store i64 %87, i64* %4, align 8, !dbg !2510
  br label %102, !dbg !2510

88:                                               ; preds = %77
  %89 = load i64, i64* %7, align 8, !dbg !2511
  %90 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %8, align 8, !dbg !2513
  %91 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %90, i32 0, i32 2, !dbg !2514
  %92 = load i32, i32* %91, align 4, !dbg !2514
  %93 = zext i32 %92 to i64, !dbg !2513
  %94 = icmp ult i64 %89, %93, !dbg !2515
  br i1 %94, label %95, label %96, !dbg !2516

95:                                               ; preds = %88
  store i64 0, i64* %4, align 8, !dbg !2517
  br label %102, !dbg !2517

96:                                               ; preds = %88
  %97 = load i8*, i8** %6, align 8, !dbg !2519
  %98 = load i8*, i8** %9, align 8, !dbg !2520
  %99 = ptrtoint i8* %97 to i64, !dbg !2521
  %100 = ptrtoint i8* %98 to i64, !dbg !2521
  %101 = sub i64 %99, %100, !dbg !2521
  store i64 %101, i64* %4, align 8, !dbg !2522
  br label %102, !dbg !2522

102:                                              ; preds = %96, %95, %86, %57, %49, %24, %18
  %103 = load i64, i64* %4, align 8, !dbg !2523
  ret i64 %103, !dbg !2523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_connack_response(%struct.mqtt_response* %0, i8* %1) #0 !dbg !2524 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mqtt_response_connack*, align 8
  store %struct.mqtt_response* %0, %struct.mqtt_response** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %4, metadata !2527, metadata !DIExpression()), !dbg !2528
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2529, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2531, metadata !DIExpression()), !dbg !2532
  %8 = load i8*, i8** %5, align 8, !dbg !2533
  store i8* %8, i8** %6, align 8, !dbg !2532
  call void @llvm.dbg.declare(metadata %struct.mqtt_response_connack** %7, metadata !2534, metadata !DIExpression()), !dbg !2536
  %9 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2537
  %10 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %9, i32 0, i32 0, !dbg !2539
  %11 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %10, i32 0, i32 2, !dbg !2540
  %12 = load i32, i32* %11, align 8, !dbg !2540
  %13 = icmp ne i32 %12, 2, !dbg !2541
  br i1 %13, label %14, label %15, !dbg !2542

14:                                               ; preds = %2
  store i64 -2147483636, i64* %3, align 8, !dbg !2543
  br label %50, !dbg !2543

15:                                               ; preds = %2
  %16 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2545
  %17 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %16, i32 0, i32 1, !dbg !2546
  %18 = bitcast %union.anon* %17 to %struct.mqtt_response_connack*, !dbg !2547
  store %struct.mqtt_response_connack* %18, %struct.mqtt_response_connack** %7, align 8, !dbg !2548
  %19 = load i8*, i8** %5, align 8, !dbg !2549
  %20 = load i8, i8* %19, align 1, !dbg !2551
  %21 = zext i8 %20 to i32, !dbg !2551
  %22 = and i32 %21, 254, !dbg !2552
  %23 = icmp ne i32 %22, 0, !dbg !2552
  br i1 %23, label %24, label %25, !dbg !2553

24:                                               ; preds = %15
  store i64 -2147483640, i64* %3, align 8, !dbg !2554
  br label %50, !dbg !2554

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8, !dbg !2556
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !2556
  store i8* %27, i8** %5, align 8, !dbg !2556
  %28 = load i8, i8* %26, align 1, !dbg !2558
  %29 = load %struct.mqtt_response_connack*, %struct.mqtt_response_connack** %7, align 8, !dbg !2559
  %30 = getelementptr inbounds %struct.mqtt_response_connack, %struct.mqtt_response_connack* %29, i32 0, i32 0, !dbg !2560
  store i8 %28, i8* %30, align 4, !dbg !2561
  br label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8, !dbg !2562
  %33 = load i8, i8* %32, align 1, !dbg !2564
  %34 = zext i8 %33 to i32, !dbg !2564
  %35 = icmp ugt i32 %34, 5, !dbg !2565
  br i1 %35, label %36, label %37, !dbg !2566

36:                                               ; preds = %31
  store i64 -2147483639, i64* %3, align 8, !dbg !2567
  br label %50, !dbg !2567

37:                                               ; preds = %31
  %38 = load i8*, i8** %5, align 8, !dbg !2569
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !2569
  store i8* %39, i8** %5, align 8, !dbg !2569
  %40 = load i8, i8* %38, align 1, !dbg !2571
  %41 = zext i8 %40 to i32, !dbg !2572
  %42 = load %struct.mqtt_response_connack*, %struct.mqtt_response_connack** %7, align 8, !dbg !2573
  %43 = getelementptr inbounds %struct.mqtt_response_connack, %struct.mqtt_response_connack* %42, i32 0, i32 1, !dbg !2574
  store i32 %41, i32* %43, align 4, !dbg !2575
  br label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** %5, align 8, !dbg !2576
  %46 = load i8*, i8** %6, align 8, !dbg !2577
  %47 = ptrtoint i8* %45 to i64, !dbg !2578
  %48 = ptrtoint i8* %46 to i64, !dbg !2578
  %49 = sub i64 %47, %48, !dbg !2578
  store i64 %49, i64* %3, align 8, !dbg !2579
  br label %50, !dbg !2579

50:                                               ; preds = %44, %36, %24, %14
  %51 = load i64, i64* %3, align 8, !dbg !2580
  ret i64 %51, !dbg !2580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_publish_response(%struct.mqtt_response* %0, i8* %1) #0 !dbg !2581 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mqtt_fixed_header*, align 8
  %8 = alloca %struct.mqtt_response_publish*, align 8
  store %struct.mqtt_response* %0, %struct.mqtt_response** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %4, metadata !2582, metadata !DIExpression()), !dbg !2583
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2584, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2586, metadata !DIExpression()), !dbg !2587
  %9 = load i8*, i8** %5, align 8, !dbg !2588
  store i8* %9, i8** %6, align 8, !dbg !2587
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header** %7, metadata !2589, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.declare(metadata %struct.mqtt_response_publish** %8, metadata !2591, metadata !DIExpression()), !dbg !2592
  %10 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2593
  %11 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %10, i32 0, i32 0, !dbg !2594
  store %struct.mqtt_fixed_header* %11, %struct.mqtt_fixed_header** %7, align 8, !dbg !2595
  %12 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2596
  %13 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %12, i32 0, i32 1, !dbg !2597
  %14 = bitcast %union.anon* %13 to %struct.mqtt_response_publish*, !dbg !2598
  store %struct.mqtt_response_publish* %14, %struct.mqtt_response_publish** %8, align 8, !dbg !2599
  %15 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !2600
  %16 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %15, i32 0, i32 1, !dbg !2601
  %17 = load i8, i8* %16, align 4, !dbg !2601
  %18 = and i8 %17, 15, !dbg !2601
  %19 = zext i8 %18 to i32, !dbg !2601
  %20 = and i32 %19, 8, !dbg !2602
  %21 = ashr i32 %20, 3, !dbg !2603
  %22 = trunc i32 %21 to i8, !dbg !2604
  %23 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2605
  %24 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %23, i32 0, i32 0, !dbg !2606
  store i8 %22, i8* %24, align 8, !dbg !2607
  %25 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !2608
  %26 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %25, i32 0, i32 1, !dbg !2609
  %27 = load i8, i8* %26, align 4, !dbg !2609
  %28 = and i8 %27, 15, !dbg !2609
  %29 = zext i8 %28 to i32, !dbg !2609
  %30 = and i32 %29, 6, !dbg !2610
  %31 = ashr i32 %30, 1, !dbg !2611
  %32 = trunc i32 %31 to i8, !dbg !2612
  %33 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2613
  %34 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %33, i32 0, i32 1, !dbg !2614
  store i8 %32, i8* %34, align 1, !dbg !2615
  %35 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !2616
  %36 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %35, i32 0, i32 1, !dbg !2617
  %37 = load i8, i8* %36, align 4, !dbg !2617
  %38 = and i8 %37, 15, !dbg !2617
  %39 = zext i8 %38 to i32, !dbg !2617
  %40 = and i32 %39, 1, !dbg !2618
  %41 = trunc i32 %40 to i8, !dbg !2616
  %42 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2619
  %43 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %42, i32 0, i32 2, !dbg !2620
  store i8 %41, i8* %43, align 2, !dbg !2621
  %44 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2622
  %45 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %44, i32 0, i32 0, !dbg !2624
  %46 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %45, i32 0, i32 2, !dbg !2625
  %47 = load i32, i32* %46, align 8, !dbg !2625
  %48 = icmp ult i32 %47, 4, !dbg !2626
  br i1 %48, label %49, label %50, !dbg !2627

49:                                               ; preds = %2
  store i64 -2147483636, i64* %3, align 8, !dbg !2628
  br label %125, !dbg !2628

50:                                               ; preds = %2
  %51 = load i8*, i8** %5, align 8, !dbg !2630
  %52 = call zeroext i16 @__mqtt_unpack_uint16(i8* %51), !dbg !2631
  %53 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2632
  %54 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %53, i32 0, i32 3, !dbg !2633
  store i16 %52, i16* %54, align 4, !dbg !2634
  %55 = load i8*, i8** %5, align 8, !dbg !2635
  %56 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !2635
  store i8* %56, i8** %5, align 8, !dbg !2635
  %57 = load i8*, i8** %5, align 8, !dbg !2636
  %58 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2637
  %59 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %58, i32 0, i32 4, !dbg !2638
  store i8* %57, i8** %59, align 8, !dbg !2639
  %60 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2640
  %61 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %60, i32 0, i32 3, !dbg !2641
  %62 = load i16, i16* %61, align 4, !dbg !2641
  %63 = zext i16 %62 to i32, !dbg !2640
  %64 = load i8*, i8** %5, align 8, !dbg !2642
  %65 = sext i32 %63 to i64, !dbg !2642
  %66 = getelementptr inbounds i8, i8* %64, i64 %65, !dbg !2642
  store i8* %66, i8** %5, align 8, !dbg !2642
  %67 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2643
  %68 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %67, i32 0, i32 1, !dbg !2645
  %69 = load i8, i8* %68, align 1, !dbg !2645
  %70 = zext i8 %69 to i32, !dbg !2643
  %71 = icmp sgt i32 %70, 0, !dbg !2646
  br i1 %71, label %72, label %79, !dbg !2647

72:                                               ; preds = %50
  %73 = load i8*, i8** %5, align 8, !dbg !2648
  %74 = call zeroext i16 @__mqtt_unpack_uint16(i8* %73), !dbg !2650
  %75 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2651
  %76 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %75, i32 0, i32 5, !dbg !2652
  store i16 %74, i16* %76, align 8, !dbg !2653
  %77 = load i8*, i8** %5, align 8, !dbg !2654
  %78 = getelementptr inbounds i8, i8* %77, i64 2, !dbg !2654
  store i8* %78, i8** %5, align 8, !dbg !2654
  br label %79, !dbg !2655

79:                                               ; preds = %72, %50
  %80 = load i8*, i8** %5, align 8, !dbg !2656
  %81 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2657
  %82 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %81, i32 0, i32 6, !dbg !2658
  store i8* %80, i8** %82, align 8, !dbg !2659
  %83 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2660
  %84 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %83, i32 0, i32 1, !dbg !2662
  %85 = load i8, i8* %84, align 1, !dbg !2662
  %86 = zext i8 %85 to i32, !dbg !2660
  %87 = icmp eq i32 %86, 0, !dbg !2663
  br i1 %87, label %88, label %101, !dbg !2664

88:                                               ; preds = %79
  %89 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !2665
  %90 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %89, i32 0, i32 2, !dbg !2667
  %91 = load i32, i32* %90, align 4, !dbg !2667
  %92 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2668
  %93 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %92, i32 0, i32 3, !dbg !2669
  %94 = load i16, i16* %93, align 4, !dbg !2669
  %95 = zext i16 %94 to i32, !dbg !2668
  %96 = sub i32 %91, %95, !dbg !2670
  %97 = sub i32 %96, 2, !dbg !2671
  %98 = zext i32 %97 to i64, !dbg !2665
  %99 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2672
  %100 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %99, i32 0, i32 7, !dbg !2673
  store i64 %98, i64* %100, align 8, !dbg !2674
  br label %114, !dbg !2675

101:                                              ; preds = %79
  %102 = load %struct.mqtt_fixed_header*, %struct.mqtt_fixed_header** %7, align 8, !dbg !2676
  %103 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %102, i32 0, i32 2, !dbg !2678
  %104 = load i32, i32* %103, align 4, !dbg !2678
  %105 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2679
  %106 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %105, i32 0, i32 3, !dbg !2680
  %107 = load i16, i16* %106, align 4, !dbg !2680
  %108 = zext i16 %107 to i32, !dbg !2679
  %109 = sub i32 %104, %108, !dbg !2681
  %110 = sub i32 %109, 4, !dbg !2682
  %111 = zext i32 %110 to i64, !dbg !2676
  %112 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2683
  %113 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %112, i32 0, i32 7, !dbg !2684
  store i64 %111, i64* %113, align 8, !dbg !2685
  br label %114

114:                                              ; preds = %101, %88
  %115 = load %struct.mqtt_response_publish*, %struct.mqtt_response_publish** %8, align 8, !dbg !2686
  %116 = getelementptr inbounds %struct.mqtt_response_publish, %struct.mqtt_response_publish* %115, i32 0, i32 7, !dbg !2687
  %117 = load i64, i64* %116, align 8, !dbg !2687
  %118 = load i8*, i8** %5, align 8, !dbg !2688
  %119 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !2688
  store i8* %119, i8** %5, align 8, !dbg !2688
  %120 = load i8*, i8** %5, align 8, !dbg !2689
  %121 = load i8*, i8** %6, align 8, !dbg !2690
  %122 = ptrtoint i8* %120 to i64, !dbg !2691
  %123 = ptrtoint i8* %121 to i64, !dbg !2691
  %124 = sub i64 %122, %123, !dbg !2691
  store i64 %124, i64* %3, align 8, !dbg !2692
  br label %125, !dbg !2692

125:                                              ; preds = %114, %49
  %126 = load i64, i64* %3, align 8, !dbg !2693
  ret i64 %126, !dbg !2693
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_pubxxx_response(%struct.mqtt_response* %0, i8* %1) #0 !dbg !2694 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  store %struct.mqtt_response* %0, %struct.mqtt_response** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %4, metadata !2695, metadata !DIExpression()), !dbg !2696
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2697, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2699, metadata !DIExpression()), !dbg !2700
  %8 = load i8*, i8** %5, align 8, !dbg !2701
  store i8* %8, i8** %6, align 8, !dbg !2700
  call void @llvm.dbg.declare(metadata i16* %7, metadata !2702, metadata !DIExpression()), !dbg !2703
  %9 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2704
  %10 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %9, i32 0, i32 0, !dbg !2706
  %11 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %10, i32 0, i32 2, !dbg !2707
  %12 = load i32, i32* %11, align 8, !dbg !2707
  %13 = icmp ne i32 %12, 2, !dbg !2708
  br i1 %13, label %14, label %15, !dbg !2709

14:                                               ; preds = %2
  store i64 -2147483636, i64* %3, align 8, !dbg !2710
  br label %69, !dbg !2710

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8, !dbg !2712
  %17 = call zeroext i16 @__mqtt_unpack_uint16(i8* %16), !dbg !2713
  store i16 %17, i16* %7, align 2, !dbg !2714
  %18 = load i8*, i8** %5, align 8, !dbg !2715
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !2715
  store i8* %19, i8** %5, align 8, !dbg !2715
  %20 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2716
  %21 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %20, i32 0, i32 0, !dbg !2718
  %22 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %21, i32 0, i32 0, !dbg !2719
  %23 = load i32, i32* %22, align 8, !dbg !2719
  %24 = icmp eq i32 %23, 4, !dbg !2720
  br i1 %24, label %25, label %31, !dbg !2721

25:                                               ; preds = %15
  %26 = load i16, i16* %7, align 2, !dbg !2722
  %27 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2724
  %28 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %27, i32 0, i32 1, !dbg !2725
  %29 = bitcast %union.anon* %28 to %struct.mqtt_response_puback*, !dbg !2726
  %30 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %29, i32 0, i32 0, !dbg !2727
  store i16 %26, i16* %30, align 8, !dbg !2728
  br label %63, !dbg !2729

31:                                               ; preds = %15
  %32 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2730
  %33 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %32, i32 0, i32 0, !dbg !2732
  %34 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %33, i32 0, i32 0, !dbg !2733
  %35 = load i32, i32* %34, align 8, !dbg !2733
  %36 = icmp eq i32 %35, 5, !dbg !2734
  br i1 %36, label %37, label %43, !dbg !2735

37:                                               ; preds = %31
  %38 = load i16, i16* %7, align 2, !dbg !2736
  %39 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2738
  %40 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %39, i32 0, i32 1, !dbg !2739
  %41 = bitcast %union.anon* %40 to %struct.mqtt_response_puback*, !dbg !2740
  %42 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %41, i32 0, i32 0, !dbg !2741
  store i16 %38, i16* %42, align 8, !dbg !2742
  br label %62, !dbg !2743

43:                                               ; preds = %31
  %44 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2744
  %45 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %44, i32 0, i32 0, !dbg !2746
  %46 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %45, i32 0, i32 0, !dbg !2747
  %47 = load i32, i32* %46, align 8, !dbg !2747
  %48 = icmp eq i32 %47, 6, !dbg !2748
  br i1 %48, label %49, label %55, !dbg !2749

49:                                               ; preds = %43
  %50 = load i16, i16* %7, align 2, !dbg !2750
  %51 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2752
  %52 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %51, i32 0, i32 1, !dbg !2753
  %53 = bitcast %union.anon* %52 to %struct.mqtt_response_puback*, !dbg !2754
  %54 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %53, i32 0, i32 0, !dbg !2755
  store i16 %50, i16* %54, align 8, !dbg !2756
  br label %61, !dbg !2757

55:                                               ; preds = %43
  %56 = load i16, i16* %7, align 2, !dbg !2758
  %57 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2760
  %58 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %57, i32 0, i32 1, !dbg !2761
  %59 = bitcast %union.anon* %58 to %struct.mqtt_response_puback*, !dbg !2762
  %60 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %59, i32 0, i32 0, !dbg !2763
  store i16 %56, i16* %60, align 8, !dbg !2764
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62, %25
  %64 = load i8*, i8** %5, align 8, !dbg !2765
  %65 = load i8*, i8** %6, align 8, !dbg !2766
  %66 = ptrtoint i8* %64 to i64, !dbg !2767
  %67 = ptrtoint i8* %65 to i64, !dbg !2767
  %68 = sub i64 %66, %67, !dbg !2767
  store i64 %68, i64* %3, align 8, !dbg !2768
  br label %69, !dbg !2768

69:                                               ; preds = %63, %14
  %70 = load i64, i64* %3, align 8, !dbg !2769
  ret i64 %70, !dbg !2769
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_suback_response(%struct.mqtt_response* %0, i8* %1) #0 !dbg !2770 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.mqtt_response* %0, %struct.mqtt_response** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %4, metadata !2771, metadata !DIExpression()), !dbg !2772
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2773, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2775, metadata !DIExpression()), !dbg !2776
  %8 = load i8*, i8** %5, align 8, !dbg !2777
  store i8* %8, i8** %6, align 8, !dbg !2776
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2778, metadata !DIExpression()), !dbg !2779
  %9 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2780
  %10 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %9, i32 0, i32 0, !dbg !2781
  %11 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %10, i32 0, i32 2, !dbg !2782
  %12 = load i32, i32* %11, align 8, !dbg !2782
  store i32 %12, i32* %7, align 4, !dbg !2779
  %13 = load i32, i32* %7, align 4, !dbg !2783
  %14 = icmp ult i32 %13, 3, !dbg !2785
  br i1 %14, label %15, label %16, !dbg !2786

15:                                               ; preds = %2
  store i64 -2147483636, i64* %3, align 8, !dbg !2787
  br label %47, !dbg !2787

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8, !dbg !2789
  %18 = call zeroext i16 @__mqtt_unpack_uint16(i8* %17), !dbg !2790
  %19 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2791
  %20 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %19, i32 0, i32 1, !dbg !2792
  %21 = bitcast %union.anon* %20 to %struct.mqtt_response_suback*, !dbg !2793
  %22 = getelementptr inbounds %struct.mqtt_response_suback, %struct.mqtt_response_suback* %21, i32 0, i32 0, !dbg !2794
  store i16 %18, i16* %22, align 8, !dbg !2795
  %23 = load i8*, i8** %5, align 8, !dbg !2796
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !2796
  store i8* %24, i8** %5, align 8, !dbg !2796
  %25 = load i32, i32* %7, align 4, !dbg !2797
  %26 = sub i32 %25, 2, !dbg !2797
  store i32 %26, i32* %7, align 4, !dbg !2797
  %27 = load i32, i32* %7, align 4, !dbg !2798
  %28 = zext i32 %27 to i64, !dbg !2799
  %29 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2800
  %30 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %29, i32 0, i32 1, !dbg !2801
  %31 = bitcast %union.anon* %30 to %struct.mqtt_response_suback*, !dbg !2802
  %32 = getelementptr inbounds %struct.mqtt_response_suback, %struct.mqtt_response_suback* %31, i32 0, i32 2, !dbg !2803
  store i64 %28, i64* %32, align 8, !dbg !2804
  %33 = load i8*, i8** %5, align 8, !dbg !2805
  %34 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2806
  %35 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %34, i32 0, i32 1, !dbg !2807
  %36 = bitcast %union.anon* %35 to %struct.mqtt_response_suback*, !dbg !2808
  %37 = getelementptr inbounds %struct.mqtt_response_suback, %struct.mqtt_response_suback* %36, i32 0, i32 1, !dbg !2809
  store i8* %33, i8** %37, align 8, !dbg !2810
  %38 = load i32, i32* %7, align 4, !dbg !2811
  %39 = load i8*, i8** %5, align 8, !dbg !2812
  %40 = zext i32 %38 to i64, !dbg !2812
  %41 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !2812
  store i8* %41, i8** %5, align 8, !dbg !2812
  %42 = load i8*, i8** %5, align 8, !dbg !2813
  %43 = load i8*, i8** %6, align 8, !dbg !2814
  %44 = ptrtoint i8* %42 to i64, !dbg !2815
  %45 = ptrtoint i8* %43 to i64, !dbg !2815
  %46 = sub i64 %44, %45, !dbg !2815
  store i64 %46, i64* %3, align 8, !dbg !2816
  br label %47, !dbg !2816

47:                                               ; preds = %16, %15
  %48 = load i64, i64* %3, align 8, !dbg !2817
  ret i64 %48, !dbg !2817
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_unpack_unsuback_response(%struct.mqtt_response* %0, i8* %1) #0 !dbg !2818 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mqtt_response*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.mqtt_response* %0, %struct.mqtt_response** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_response** %4, metadata !2819, metadata !DIExpression()), !dbg !2820
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2823, metadata !DIExpression()), !dbg !2824
  %7 = load i8*, i8** %5, align 8, !dbg !2825
  store i8* %7, i8** %6, align 8, !dbg !2824
  %8 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2826
  %9 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %8, i32 0, i32 0, !dbg !2828
  %10 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %9, i32 0, i32 2, !dbg !2829
  %11 = load i32, i32* %10, align 8, !dbg !2829
  %12 = icmp ne i32 %11, 2, !dbg !2830
  br i1 %12, label %13, label %14, !dbg !2831

13:                                               ; preds = %2
  store i64 -2147483636, i64* %3, align 8, !dbg !2832
  br label %28, !dbg !2832

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8, !dbg !2834
  %16 = call zeroext i16 @__mqtt_unpack_uint16(i8* %15), !dbg !2835
  %17 = load %struct.mqtt_response*, %struct.mqtt_response** %4, align 8, !dbg !2836
  %18 = getelementptr inbounds %struct.mqtt_response, %struct.mqtt_response* %17, i32 0, i32 1, !dbg !2837
  %19 = bitcast %union.anon* %18 to %struct.mqtt_response_puback*, !dbg !2838
  %20 = getelementptr inbounds %struct.mqtt_response_puback, %struct.mqtt_response_puback* %19, i32 0, i32 0, !dbg !2839
  store i16 %16, i16* %20, align 8, !dbg !2840
  %21 = load i8*, i8** %5, align 8, !dbg !2841
  %22 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !2841
  store i8* %22, i8** %5, align 8, !dbg !2841
  %23 = load i8*, i8** %5, align 8, !dbg !2842
  %24 = load i8*, i8** %6, align 8, !dbg !2843
  %25 = ptrtoint i8* %23 to i64, !dbg !2844
  %26 = ptrtoint i8* %24 to i64, !dbg !2844
  %27 = sub i64 %25, %26, !dbg !2844
  store i64 %27, i64* %3, align 8, !dbg !2845
  br label %28, !dbg !2845

28:                                               ; preds = %14, %13
  %29 = load i64, i64* %3, align 8, !dbg !2846
  ret i64 %29, !dbg !2846
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @__mqtt_unpack_uint16(i8* %0) #0 !dbg !2847 {
  %2 = alloca i8*, align 8
  %3 = alloca i16, align 2
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.declare(metadata i16* %3, metadata !2852, metadata !DIExpression()), !dbg !2853
  %4 = bitcast i16* %3 to i8*, !dbg !2854
  %5 = load i8*, i8** %2, align 8, !dbg !2855
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %4, i8* align 1 %5, i64 2, i1 false), !dbg !2854
  %6 = load i16, i16* %3, align 2, !dbg !2856
  %7 = call zeroext i16 @ntohs(i16 zeroext %6) #13, !dbg !2856
  ret i16 %7, !dbg !2857
}

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @ntohs(i16 zeroext) #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @__mqtt_next_pid(%struct.mqtt_client.7* %0) #0 !dbg !2858 {
  %2 = alloca %struct.mqtt_client.7*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mqtt_queued_message*, align 8
  %5 = alloca i32, align 4
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %2, metadata !2861, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2863, metadata !DIExpression()), !dbg !2864
  store i32 0, i32* %3, align 4, !dbg !2864
  %6 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2865
  %7 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %6, i32 0, i32 1, !dbg !2867
  %8 = load i16, i16* %7, align 4, !dbg !2867
  %9 = zext i16 %8 to i32, !dbg !2865
  %10 = icmp eq i32 %9, 0, !dbg !2868
  br i1 %10, label %11, label %14, !dbg !2869

11:                                               ; preds = %1
  %12 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2870
  %13 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %12, i32 0, i32 1, !dbg !2872
  store i16 163, i16* %13, align 4, !dbg !2873
  br label %14, !dbg !2874

14:                                               ; preds = %11, %1
  br label %15, !dbg !2875

15:                                               ; preds = %67, %14
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %4, metadata !2876, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2879, metadata !DIExpression()), !dbg !2880
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2881
  %17 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %16, i32 0, i32 1, !dbg !2882
  %18 = load i16, i16* %17, align 4, !dbg !2882
  %19 = zext i16 %18 to i32, !dbg !2881
  %20 = and i32 %19, 1, !dbg !2883
  store i32 %20, i32* %5, align 4, !dbg !2880
  %21 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2884
  %22 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %21, i32 0, i32 1, !dbg !2885
  %23 = load i16, i16* %22, align 4, !dbg !2886
  %24 = zext i16 %23 to i32, !dbg !2886
  %25 = ashr i32 %24, 1, !dbg !2886
  %26 = trunc i32 %25 to i16, !dbg !2886
  store i16 %26, i16* %22, align 4, !dbg !2886
  %27 = load i32, i32* %5, align 4, !dbg !2887
  %28 = icmp ne i32 %27, 0, !dbg !2887
  br i1 %28, label %29, label %36, !dbg !2889

29:                                               ; preds = %15
  %30 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2890
  %31 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %30, i32 0, i32 1, !dbg !2892
  %32 = load i16, i16* %31, align 4, !dbg !2893
  %33 = zext i16 %32 to i32, !dbg !2893
  %34 = xor i32 %33, 46080, !dbg !2893
  %35 = trunc i32 %34 to i16, !dbg !2893
  store i16 %35, i16* %31, align 4, !dbg !2893
  br label %36, !dbg !2894

36:                                               ; preds = %29, %15
  store i32 0, i32* %3, align 4, !dbg !2895
  %37 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2896
  %38 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %37, i32 0, i32 17, !dbg !2896
  %39 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %38, i32 0, i32 1, !dbg !2896
  %40 = load i8*, i8** %39, align 8, !dbg !2896
  %41 = bitcast i8* %40 to %struct.mqtt_queued_message*, !dbg !2896
  %42 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %41, i64 -1, !dbg !2896
  %43 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %42, i64 0, !dbg !2896
  store %struct.mqtt_queued_message* %43, %struct.mqtt_queued_message** %4, align 8, !dbg !2898
  br label %44, !dbg !2899

44:                                               ; preds = %63, %36
  %45 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %4, align 8, !dbg !2900
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2902
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !2903
  %48 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %47, i32 0, i32 4, !dbg !2904
  %49 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %48, align 8, !dbg !2904
  %50 = icmp uge %struct.mqtt_queued_message* %45, %49, !dbg !2905
  br i1 %50, label %51, label %66, !dbg !2906

51:                                               ; preds = %44
  %52 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %4, align 8, !dbg !2907
  %53 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %52, i32 0, i32 5, !dbg !2910
  %54 = load i16, i16* %53, align 4, !dbg !2910
  %55 = zext i16 %54 to i32, !dbg !2907
  %56 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2911
  %57 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %56, i32 0, i32 1, !dbg !2912
  %58 = load i16, i16* %57, align 4, !dbg !2912
  %59 = zext i16 %58 to i32, !dbg !2911
  %60 = icmp eq i32 %55, %59, !dbg !2913
  br i1 %60, label %61, label %62, !dbg !2914

61:                                               ; preds = %51
  store i32 1, i32* %3, align 4, !dbg !2915
  br label %66, !dbg !2917

62:                                               ; preds = %51
  br label %63, !dbg !2918

63:                                               ; preds = %62
  %64 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %4, align 8, !dbg !2919
  %65 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %64, i32 -1, !dbg !2919
  store %struct.mqtt_queued_message* %65, %struct.mqtt_queued_message** %4, align 8, !dbg !2919
  br label %44, !dbg !2920, !llvm.loop !2921

66:                                               ; preds = %61, %44
  br label %67, !dbg !2923

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4, !dbg !2924
  %69 = icmp ne i32 %68, 0, !dbg !2923
  br i1 %69, label %15, label %70, !dbg !2923, !llvm.loop !2925

70:                                               ; preds = %67
  %71 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !2927
  %72 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %71, i32 0, i32 1, !dbg !2928
  %73 = load i16, i16* %72, align 4, !dbg !2928
  ret i16 %73, !dbg !2929
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_init(%struct.mqtt_client.7* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5, void (i8**, %struct.mqtt_response_publish*)* %6) #0 !dbg !2930 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mqtt_client.7*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca void (i8**, %struct.mqtt_response_publish*)*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %9, metadata !2933, metadata !DIExpression()), !dbg !2934
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2935, metadata !DIExpression()), !dbg !2936
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2937, metadata !DIExpression()), !dbg !2938
  store i64 %3, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2939, metadata !DIExpression()), !dbg !2940
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2941, metadata !DIExpression()), !dbg !2942
  store i64 %5, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2943, metadata !DIExpression()), !dbg !2944
  store void (i8**, %struct.mqtt_response_publish*)* %6, void (i8**, %struct.mqtt_response_publish*)** %15, align 8
  call void @llvm.dbg.declare(metadata void (i8**, %struct.mqtt_response_publish*)** %15, metadata !2945, metadata !DIExpression()), !dbg !2946
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2947
  %17 = icmp eq %struct.mqtt_client.7* %16, null, !dbg !2949
  br i1 %17, label %24, label %18, !dbg !2950

18:                                               ; preds = %7
  %19 = load i8*, i8** %11, align 8, !dbg !2951
  %20 = icmp eq i8* %19, null, !dbg !2952
  br i1 %20, label %24, label %21, !dbg !2953

21:                                               ; preds = %18
  %22 = load i8*, i8** %13, align 8, !dbg !2954
  %23 = icmp eq i8* %22, null, !dbg !2955
  br i1 %23, label %24, label %25, !dbg !2956

24:                                               ; preds = %21, %18, %7
  store i32 -2147483647, i32* %8, align 4, !dbg !2957
  br label %85, !dbg !2957

25:                                               ; preds = %21
  %26 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2959
  %27 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %26, i32 0, i32 16, !dbg !2959
  %28 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %27, %union.pthread_mutexattr_t* null) #10, !dbg !2959
  %29 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2960
  %30 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %29, i32 0, i32 16, !dbg !2960
  %31 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %30) #10, !dbg !2960
  %32 = load i32, i32* %10, align 4, !dbg !2961
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2962
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 0, !dbg !2963
  store i32 %32, i32* %34, align 8, !dbg !2964
  %35 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2965
  %36 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %35, i32 0, i32 17, !dbg !2966
  %37 = load i8*, i8** %11, align 8, !dbg !2967
  %38 = load i64, i64* %12, align 8, !dbg !2968
  call void @mqtt_mq_init(%struct.mqtt_message_queue* %36, i8* %37, i64 %38), !dbg !2969
  %39 = load i8*, i8** %13, align 8, !dbg !2970
  %40 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2971
  %41 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %40, i32 0, i32 15, !dbg !2972
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0, !dbg !2973
  store i8* %39, i8** %42, align 8, !dbg !2974
  %43 = load i64, i64* %14, align 8, !dbg !2975
  %44 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2976
  %45 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %44, i32 0, i32 15, !dbg !2977
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 1, !dbg !2978
  store i64 %43, i64* %46, align 8, !dbg !2979
  %47 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2980
  %48 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %47, i32 0, i32 15, !dbg !2981
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0, !dbg !2982
  %50 = load i8*, i8** %49, align 8, !dbg !2982
  %51 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2983
  %52 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %51, i32 0, i32 15, !dbg !2984
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 2, !dbg !2985
  store i8* %50, i8** %53, align 8, !dbg !2986
  %54 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2987
  %55 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %54, i32 0, i32 15, !dbg !2988
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 1, !dbg !2989
  %57 = load i64, i64* %56, align 8, !dbg !2989
  %58 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2990
  %59 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %58, i32 0, i32 15, !dbg !2991
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 3, !dbg !2992
  store i64 %57, i64* %60, align 8, !dbg !2993
  %61 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2994
  %62 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %61, i32 0, i32 6, !dbg !2995
  store i32 -2147483633, i32* %62, align 8, !dbg !2996
  %63 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !2997
  %64 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %63, i32 0, i32 7, !dbg !2998
  store i32 30, i32* %64, align 4, !dbg !2999
  %65 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !3000
  %66 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %65, i32 0, i32 8, !dbg !3001
  store i32 0, i32* %66, align 8, !dbg !3002
  %67 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !3003
  %68 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %67, i32 0, i32 3, !dbg !3004
  store i32 0, i32* %68, align 8, !dbg !3005
  %69 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !3006
  %70 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %69, i32 0, i32 9, !dbg !3007
  store double -1.000000e+00, double* %70, align 8, !dbg !3008
  %71 = load void (i8**, %struct.mqtt_response_publish*)*, void (i8**, %struct.mqtt_response_publish*)** %15, align 8, !dbg !3009
  %72 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !3010
  %73 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %72, i32 0, i32 10, !dbg !3011
  store void (i8**, %struct.mqtt_response_publish*)* %71, void (i8**, %struct.mqtt_response_publish*)** %73, align 8, !dbg !3012
  %74 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !3013
  %75 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %74, i32 0, i32 1, !dbg !3014
  store i16 0, i16* %75, align 4, !dbg !3015
  %76 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !3016
  %77 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %76, i32 0, i32 4, !dbg !3017
  store i64 0, i64* %77, align 8, !dbg !3018
  %78 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !3019
  %79 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %78, i32 0, i32 12, !dbg !3020
  %80 = bitcast {}** %79 to i32 (%struct.mqtt_client.7*)**, !dbg !3020
  store i32 (%struct.mqtt_client.7*)* null, i32 (%struct.mqtt_client.7*)** %80, align 8, !dbg !3021
  %81 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !3022
  %82 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %81, i32 0, i32 13, !dbg !3023
  store void (%struct.mqtt_client.7*, i8**)* null, void (%struct.mqtt_client.7*, i8**)** %82, align 8, !dbg !3024
  %83 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %9, align 8, !dbg !3025
  %84 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %83, i32 0, i32 14, !dbg !3026
  store i8* null, i8** %84, align 8, !dbg !3027
  store i32 1, i32* %8, align 4, !dbg !3028
  br label %85, !dbg !3028

85:                                               ; preds = %25, %24
  %86 = load i32, i32* %8, align 4, !dbg !3029
  ret i32 %86, !dbg !3029
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mqtt_mq_init(%struct.mqtt_message_queue* %0, i8* %1, i64 %2) #0 !dbg !3030 {
  %4 = alloca %struct.mqtt_message_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mqtt_message_queue* %0, %struct.mqtt_message_queue** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_message_queue** %4, metadata !3033, metadata !DIExpression()), !dbg !3034
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3035, metadata !DIExpression()), !dbg !3036
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3037, metadata !DIExpression()), !dbg !3038
  %7 = load i8*, i8** %5, align 8, !dbg !3039
  %8 = icmp ne i8* %7, null, !dbg !3041
  br i1 %8, label %9, label %53, !dbg !3042

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8, !dbg !3043
  %11 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3045
  %12 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %11, i32 0, i32 0, !dbg !3046
  store i8* %10, i8** %12, align 8, !dbg !3047
  %13 = load i8*, i8** %5, align 8, !dbg !3048
  %14 = load i64, i64* %6, align 8, !dbg !3049
  %15 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !3050
  %16 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3051
  %17 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %16, i32 0, i32 1, !dbg !3052
  store i8* %15, i8** %17, align 8, !dbg !3053
  %18 = load i8*, i8** %5, align 8, !dbg !3054
  %19 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3055
  %20 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %19, i32 0, i32 2, !dbg !3056
  store i8* %18, i8** %20, align 8, !dbg !3057
  %21 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3058
  %22 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %21, i32 0, i32 1, !dbg !3059
  %23 = load i8*, i8** %22, align 8, !dbg !3059
  %24 = bitcast i8* %23 to %struct.mqtt_queued_message*, !dbg !3058
  %25 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3060
  %26 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %25, i32 0, i32 4, !dbg !3061
  store %struct.mqtt_queued_message* %24, %struct.mqtt_queued_message** %26, align 8, !dbg !3062
  %27 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3063
  %28 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %27, i32 0, i32 2, !dbg !3063
  %29 = load i8*, i8** %28, align 8, !dbg !3063
  %30 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3063
  %31 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %30, i32 0, i32 4, !dbg !3063
  %32 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %31, align 8, !dbg !3063
  %33 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %32, i64 -1, !dbg !3063
  %34 = bitcast %struct.mqtt_queued_message* %33 to i8*, !dbg !3063
  %35 = icmp uge i8* %29, %34, !dbg !3063
  br i1 %35, label %36, label %37, !dbg !3063

36:                                               ; preds = %9
  br label %49, !dbg !3063

37:                                               ; preds = %9
  %38 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3063
  %39 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %38, i32 0, i32 4, !dbg !3063
  %40 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %39, align 8, !dbg !3063
  %41 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %40, i64 -1, !dbg !3063
  %42 = bitcast %struct.mqtt_queued_message* %41 to i8*, !dbg !3063
  %43 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3063
  %44 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %43, i32 0, i32 2, !dbg !3063
  %45 = load i8*, i8** %44, align 8, !dbg !3063
  %46 = ptrtoint i8* %42 to i64, !dbg !3063
  %47 = ptrtoint i8* %45 to i64, !dbg !3063
  %48 = sub i64 %46, %47, !dbg !3063
  br label %49, !dbg !3063

49:                                               ; preds = %37, %36
  %50 = phi i64 [ 0, %36 ], [ %48, %37 ], !dbg !3063
  %51 = load %struct.mqtt_message_queue*, %struct.mqtt_message_queue** %4, align 8, !dbg !3064
  %52 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %51, i32 0, i32 3, !dbg !3065
  store i64 %50, i64* %52, align 8, !dbg !3066
  br label %53, !dbg !3067

53:                                               ; preds = %49, %3
  ret void, !dbg !3068
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mqtt_init_reconnect(%struct.mqtt_client.7* %0, void (%struct.mqtt_client.7*, i8**)* %1, i8* %2, void (i8**, %struct.mqtt_response_publish*)* %3) #0 !dbg !3069 {
  %5 = alloca %struct.mqtt_client.7*, align 8
  %6 = alloca void (%struct.mqtt_client.7*, i8**)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (i8**, %struct.mqtt_response_publish*)*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %5, metadata !3072, metadata !DIExpression()), !dbg !3073
  store void (%struct.mqtt_client.7*, i8**)* %1, void (%struct.mqtt_client.7*, i8**)** %6, align 8
  call void @llvm.dbg.declare(metadata void (%struct.mqtt_client.7*, i8**)** %6, metadata !3074, metadata !DIExpression()), !dbg !3075
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3076, metadata !DIExpression()), !dbg !3077
  store void (i8**, %struct.mqtt_response_publish*)* %3, void (i8**, %struct.mqtt_response_publish*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8**, %struct.mqtt_response_publish*)** %8, metadata !3078, metadata !DIExpression()), !dbg !3079
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3080
  %10 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %9, i32 0, i32 16, !dbg !3080
  %11 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %10, %union.pthread_mutexattr_t* null) #10, !dbg !3080
  %12 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3081
  %13 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %12, i32 0, i32 0, !dbg !3082
  store i32 -1, i32* %13, align 8, !dbg !3083
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3084
  %15 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %14, i32 0, i32 17, !dbg !3085
  call void @mqtt_mq_init(%struct.mqtt_message_queue* %15, i8* null, i64 0), !dbg !3086
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3087
  %17 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %16, i32 0, i32 15, !dbg !3088
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0, !dbg !3089
  store i8* null, i8** %18, align 8, !dbg !3090
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3091
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 15, !dbg !3092
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1, !dbg !3093
  store i64 0, i64* %21, align 8, !dbg !3094
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3095
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 15, !dbg !3096
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 2, !dbg !3097
  store i8* null, i8** %24, align 8, !dbg !3098
  %25 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3099
  %26 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %25, i32 0, i32 15, !dbg !3100
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 3, !dbg !3101
  store i64 0, i64* %27, align 8, !dbg !3102
  %28 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3103
  %29 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %28, i32 0, i32 6, !dbg !3104
  store i32 -2147483623, i32* %29, align 8, !dbg !3105
  %30 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3106
  %31 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %30, i32 0, i32 7, !dbg !3107
  store i32 30, i32* %31, align 4, !dbg !3108
  %32 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3109
  %33 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %32, i32 0, i32 8, !dbg !3110
  store i32 0, i32* %33, align 8, !dbg !3111
  %34 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3112
  %35 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %34, i32 0, i32 3, !dbg !3113
  store i32 0, i32* %35, align 8, !dbg !3114
  %36 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3115
  %37 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %36, i32 0, i32 9, !dbg !3116
  store double -1.000000e+00, double* %37, align 8, !dbg !3117
  %38 = load void (i8**, %struct.mqtt_response_publish*)*, void (i8**, %struct.mqtt_response_publish*)** %8, align 8, !dbg !3118
  %39 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3119
  %40 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %39, i32 0, i32 10, !dbg !3120
  store void (i8**, %struct.mqtt_response_publish*)* %38, void (i8**, %struct.mqtt_response_publish*)** %40, align 8, !dbg !3121
  %41 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3122
  %42 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %41, i32 0, i32 4, !dbg !3123
  store i64 0, i64* %42, align 8, !dbg !3124
  %43 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3125
  %44 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %43, i32 0, i32 12, !dbg !3126
  %45 = bitcast {}** %44 to i32 (%struct.mqtt_client.7*)**, !dbg !3126
  store i32 (%struct.mqtt_client.7*)* null, i32 (%struct.mqtt_client.7*)** %45, align 8, !dbg !3127
  %46 = load void (%struct.mqtt_client.7*, i8**)*, void (%struct.mqtt_client.7*, i8**)** %6, align 8, !dbg !3128
  %47 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3129
  %48 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %47, i32 0, i32 13, !dbg !3130
  store void (%struct.mqtt_client.7*, i8**)* %46, void (%struct.mqtt_client.7*, i8**)** %48, align 8, !dbg !3131
  %49 = load i8*, i8** %7, align 8, !dbg !3132
  %50 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3133
  %51 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %50, i32 0, i32 14, !dbg !3134
  store i8* %49, i8** %51, align 8, !dbg !3135
  ret void, !dbg !3136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mqtt_reinit(%struct.mqtt_client.7* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 !dbg !3137 {
  %7 = alloca %struct.mqtt_client.7*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %7, metadata !3140, metadata !DIExpression()), !dbg !3141
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3142, metadata !DIExpression()), !dbg !3143
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3144, metadata !DIExpression()), !dbg !3145
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3146, metadata !DIExpression()), !dbg !3147
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3148, metadata !DIExpression()), !dbg !3149
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3150, metadata !DIExpression()), !dbg !3151
  %13 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3152
  %14 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %13, i32 0, i32 6, !dbg !3153
  store i32 -2147483633, i32* %14, align 8, !dbg !3154
  %15 = load i32, i32* %8, align 4, !dbg !3155
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3156
  %17 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %16, i32 0, i32 0, !dbg !3157
  store i32 %15, i32* %17, align 8, !dbg !3158
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3159
  %19 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %18, i32 0, i32 17, !dbg !3160
  %20 = load i8*, i8** %9, align 8, !dbg !3161
  %21 = load i64, i64* %10, align 8, !dbg !3162
  call void @mqtt_mq_init(%struct.mqtt_message_queue* %19, i8* %20, i64 %21), !dbg !3163
  %22 = load i8*, i8** %11, align 8, !dbg !3164
  %23 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3165
  %24 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %23, i32 0, i32 15, !dbg !3166
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0, !dbg !3167
  store i8* %22, i8** %25, align 8, !dbg !3168
  %26 = load i64, i64* %12, align 8, !dbg !3169
  %27 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3170
  %28 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %27, i32 0, i32 15, !dbg !3171
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 1, !dbg !3172
  store i64 %26, i64* %29, align 8, !dbg !3173
  %30 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3174
  %31 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %30, i32 0, i32 15, !dbg !3175
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0, !dbg !3176
  %33 = load i8*, i8** %32, align 8, !dbg !3176
  %34 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3177
  %35 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %34, i32 0, i32 15, !dbg !3178
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 2, !dbg !3179
  store i8* %33, i8** %36, align 8, !dbg !3180
  %37 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3181
  %38 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %37, i32 0, i32 15, !dbg !3182
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 1, !dbg !3183
  %40 = load i64, i64* %39, align 8, !dbg !3183
  %41 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3184
  %42 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %41, i32 0, i32 15, !dbg !3185
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 3, !dbg !3186
  store i64 %40, i64* %43, align 8, !dbg !3187
  ret void, !dbg !3188
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_connect(%struct.mqtt_client.7* %0, i8* %1, i8* %2, i8* %3, i64 %4, i8* %5, i8* %6, i8 zeroext %7, i16 zeroext %8) #0 !dbg !3189 {
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
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %11, metadata !3192, metadata !DIExpression()), !dbg !3193
  store i8* %1, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3194, metadata !DIExpression()), !dbg !3195
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3196, metadata !DIExpression()), !dbg !3197
  store i8* %3, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3198, metadata !DIExpression()), !dbg !3199
  store i64 %4, i64* %15, align 8
  call void @llvm.dbg.declare(metadata i64* %15, metadata !3200, metadata !DIExpression()), !dbg !3201
  store i8* %5, i8** %16, align 8
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3202, metadata !DIExpression()), !dbg !3203
  store i8* %6, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !3204, metadata !DIExpression()), !dbg !3205
  store i8 %7, i8* %18, align 1
  call void @llvm.dbg.declare(metadata i8* %18, metadata !3206, metadata !DIExpression()), !dbg !3207
  store i16 %8, i16* %19, align 2
  call void @llvm.dbg.declare(metadata i16* %19, metadata !3208, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.declare(metadata i64* %20, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %21, metadata !3212, metadata !DIExpression()), !dbg !3213
  %22 = load i16, i16* %19, align 2, !dbg !3214
  %23 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3215
  %24 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %23, i32 0, i32 2, !dbg !3216
  store i16 %22, i16* %24, align 2, !dbg !3217
  %25 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3218
  %26 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %25, i32 0, i32 6, !dbg !3220
  %27 = load i32, i32* %26, align 8, !dbg !3220
  %28 = icmp eq i32 %27, -2147483633, !dbg !3221
  br i1 %28, label %29, label %32, !dbg !3222

29:                                               ; preds = %9
  %30 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3223
  %31 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %30, i32 0, i32 6, !dbg !3225
  store i32 1, i32* %31, align 8, !dbg !3226
  br label %32, !dbg !3227

32:                                               ; preds = %29, %9
  %33 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3228
  %34 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %33, i32 0, i32 6, !dbg !3228
  %35 = load i32, i32* %34, align 8, !dbg !3228
  %36 = icmp slt i32 %35, 0, !dbg !3228
  br i1 %36, label %37, label %44, !dbg !3230

37:                                               ; preds = %32
  %38 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3231
  %39 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %38, i32 0, i32 16, !dbg !3231
  %40 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %39) #10, !dbg !3231
  %41 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3234
  %42 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %41, i32 0, i32 6, !dbg !3234
  %43 = load i32, i32* %42, align 8, !dbg !3234
  store i32 %43, i32* %10, align 4, !dbg !3234
  br label %131, !dbg !3234

44:                                               ; preds = %32
  %45 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3230
  %46 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %45, i32 0, i32 17, !dbg !3230
  %47 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %46, i32 0, i32 2, !dbg !3230
  %48 = load i8*, i8** %47, align 8, !dbg !3230
  %49 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3230
  %50 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %49, i32 0, i32 17, !dbg !3230
  %51 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %50, i32 0, i32 3, !dbg !3230
  %52 = load i64, i64* %51, align 8, !dbg !3230
  %53 = load i8*, i8** %12, align 8, !dbg !3230
  %54 = load i8*, i8** %13, align 8, !dbg !3230
  %55 = load i8*, i8** %14, align 8, !dbg !3230
  %56 = load i64, i64* %15, align 8, !dbg !3230
  %57 = load i8*, i8** %16, align 8, !dbg !3230
  %58 = load i8*, i8** %17, align 8, !dbg !3230
  %59 = load i8, i8* %18, align 1, !dbg !3230
  %60 = load i16, i16* %19, align 2, !dbg !3230
  %61 = call i64 @mqtt_pack_connection_request(i8* %48, i64 %52, i8* %53, i8* %54, i8* %55, i64 %56, i8* %57, i8* %58, i8 zeroext %59, i16 zeroext %60), !dbg !3230
  store i64 %61, i64* %20, align 8, !dbg !3230
  %62 = load i64, i64* %20, align 8, !dbg !3235
  %63 = icmp slt i64 %62, 0, !dbg !3235
  br i1 %63, label %64, label %74, !dbg !3230

64:                                               ; preds = %44
  %65 = load i64, i64* %20, align 8, !dbg !3237
  %66 = trunc i64 %65 to i32, !dbg !3237
  %67 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3237
  %68 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %67, i32 0, i32 6, !dbg !3237
  store i32 %66, i32* %68, align 8, !dbg !3237
  %69 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3239
  %70 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %69, i32 0, i32 16, !dbg !3239
  %71 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %70) #10, !dbg !3239
  %72 = load i64, i64* %20, align 8, !dbg !3237
  %73 = trunc i64 %72 to i32, !dbg !3237
  store i32 %73, i32* %10, align 4, !dbg !3237
  br label %131, !dbg !3237

74:                                               ; preds = %44
  %75 = load i64, i64* %20, align 8, !dbg !3241
  %76 = icmp eq i64 %75, 0, !dbg !3241
  br i1 %76, label %77, label %120, !dbg !3235

77:                                               ; preds = %74
  %78 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3243
  %79 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %78, i32 0, i32 17, !dbg !3243
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %79), !dbg !3243
  %80 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3243
  %81 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %80, i32 0, i32 17, !dbg !3243
  %82 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %81, i32 0, i32 2, !dbg !3243
  %83 = load i8*, i8** %82, align 8, !dbg !3243
  %84 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3243
  %85 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %84, i32 0, i32 17, !dbg !3243
  %86 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %85, i32 0, i32 3, !dbg !3243
  %87 = load i64, i64* %86, align 8, !dbg !3243
  %88 = load i8*, i8** %12, align 8, !dbg !3243
  %89 = load i8*, i8** %13, align 8, !dbg !3243
  %90 = load i8*, i8** %14, align 8, !dbg !3243
  %91 = load i64, i64* %15, align 8, !dbg !3243
  %92 = load i8*, i8** %16, align 8, !dbg !3243
  %93 = load i8*, i8** %17, align 8, !dbg !3243
  %94 = load i8, i8* %18, align 1, !dbg !3243
  %95 = load i16, i16* %19, align 2, !dbg !3243
  %96 = call i64 @mqtt_pack_connection_request(i8* %83, i64 %87, i8* %88, i8* %89, i8* %90, i64 %91, i8* %92, i8* %93, i8 zeroext %94, i16 zeroext %95), !dbg !3243
  store i64 %96, i64* %20, align 8, !dbg !3243
  %97 = load i64, i64* %20, align 8, !dbg !3245
  %98 = icmp slt i64 %97, 0, !dbg !3245
  br i1 %98, label %99, label %109, !dbg !3243

99:                                               ; preds = %77
  %100 = load i64, i64* %20, align 8, !dbg !3247
  %101 = trunc i64 %100 to i32, !dbg !3247
  %102 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3247
  %103 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %102, i32 0, i32 6, !dbg !3247
  store i32 %101, i32* %103, align 8, !dbg !3247
  %104 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3249
  %105 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %104, i32 0, i32 16, !dbg !3249
  %106 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %105) #10, !dbg !3249
  %107 = load i64, i64* %20, align 8, !dbg !3247
  %108 = trunc i64 %107 to i32, !dbg !3247
  store i32 %108, i32* %10, align 4, !dbg !3247
  br label %131, !dbg !3247

109:                                              ; preds = %77
  %110 = load i64, i64* %20, align 8, !dbg !3251
  %111 = icmp eq i64 %110, 0, !dbg !3251
  br i1 %111, label %112, label %118, !dbg !3245

112:                                              ; preds = %109
  %113 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3253
  %114 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %113, i32 0, i32 6, !dbg !3253
  store i32 -2147483632, i32* %114, align 8, !dbg !3253
  %115 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3255
  %116 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %115, i32 0, i32 16, !dbg !3255
  %117 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %116) #10, !dbg !3255
  store i32 -2147483632, i32* %10, align 4, !dbg !3253
  br label %131, !dbg !3253

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  br label %120, !dbg !3243

120:                                              ; preds = %119, %74
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3230
  %123 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %122, i32 0, i32 17, !dbg !3230
  %124 = load i64, i64* %20, align 8, !dbg !3230
  %125 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %123, i64 %124), !dbg !3230
  store %struct.mqtt_queued_message* %125, %struct.mqtt_queued_message** %21, align 8, !dbg !3230
  %126 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %21, align 8, !dbg !3257
  %127 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %126, i32 0, i32 4, !dbg !3258
  store i32 1, i32* %127, align 8, !dbg !3259
  %128 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %11, align 8, !dbg !3260
  %129 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %128, i32 0, i32 16, !dbg !3260
  %130 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %129) #10, !dbg !3260
  store i32 1, i32* %10, align 4, !dbg !3261
  br label %131, !dbg !3261

131:                                              ; preds = %121, %112, %99, %64, %37
  %132 = load i32, i32* %10, align 4, !dbg !3262
  ret i32 %132, !dbg !3262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_connection_request(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i64 %5, i8* %6, i8* %7, i8 zeroext %8, i16 zeroext %9) #0 !dbg !3263 {
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
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3266, metadata !DIExpression()), !dbg !3267
  store i64 %1, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3268, metadata !DIExpression()), !dbg !3269
  store i8* %2, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3270, metadata !DIExpression()), !dbg !3271
  store i8* %3, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3272, metadata !DIExpression()), !dbg !3273
  store i8* %4, i8** %16, align 8
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3274, metadata !DIExpression()), !dbg !3275
  store i64 %5, i64* %17, align 8
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3276, metadata !DIExpression()), !dbg !3277
  store i8* %6, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !3278, metadata !DIExpression()), !dbg !3279
  store i8* %7, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !3280, metadata !DIExpression()), !dbg !3281
  store i8 %8, i8* %20, align 1
  call void @llvm.dbg.declare(metadata i8* %20, metadata !3282, metadata !DIExpression()), !dbg !3283
  store i16 %9, i16* %21, align 2
  call void @llvm.dbg.declare(metadata i16* %21, metadata !3284, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %22, metadata !3286, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.declare(metadata i64* %23, metadata !3288, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.declare(metadata i8** %24, metadata !3290, metadata !DIExpression()), !dbg !3291
  %27 = load i8*, i8** %12, align 8, !dbg !3292
  store i8* %27, i8** %24, align 8, !dbg !3291
  call void @llvm.dbg.declare(metadata i64* %25, metadata !3293, metadata !DIExpression()), !dbg !3294
  %28 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %22, i32 0, i32 0, !dbg !3295
  store i32 1, i32* %28, align 4, !dbg !3296
  %29 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %22, i32 0, i32 1, !dbg !3297
  %30 = load i8, i8* %29, align 4, !dbg !3298
  %31 = and i8 %30, -16, !dbg !3298
  store i8 %31, i8* %29, align 4, !dbg !3298
  %32 = load i8, i8* %20, align 1, !dbg !3299
  %33 = zext i8 %32 to i32, !dbg !3299
  %34 = and i32 %33, -2, !dbg !3300
  %35 = trunc i32 %34 to i8, !dbg !3299
  store i8 %35, i8* %20, align 1, !dbg !3301
  store i64 10, i64* %23, align 8, !dbg !3302
  %36 = load i8*, i8** %14, align 8, !dbg !3303
  %37 = icmp eq i8* %36, null, !dbg !3305
  br i1 %37, label %38, label %39, !dbg !3306

38:                                               ; preds = %10
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8** %14, align 8, !dbg !3307
  br label %39, !dbg !3309

39:                                               ; preds = %38, %10
  %40 = load i8*, i8** %14, align 8, !dbg !3310
  %41 = getelementptr inbounds i8, i8* %40, i64 0, !dbg !3310
  %42 = load i8, i8* %41, align 1, !dbg !3310
  %43 = sext i8 %42 to i32, !dbg !3310
  %44 = icmp eq i32 %43, 0, !dbg !3312
  br i1 %44, label %45, label %51, !dbg !3313

45:                                               ; preds = %39
  %46 = load i8, i8* %20, align 1, !dbg !3314
  %47 = zext i8 %46 to i32, !dbg !3314
  %48 = and i32 %47, 2, !dbg !3315
  %49 = icmp ne i32 %48, 0, !dbg !3315
  br i1 %49, label %51, label %50, !dbg !3316

50:                                               ; preds = %45
  store i64 -2147483621, i64* %11, align 8, !dbg !3317
  br label %237, !dbg !3317

51:                                               ; preds = %45, %39
  %52 = load i8*, i8** %14, align 8, !dbg !3319
  %53 = call i64 @strlen(i8* %52) #11, !dbg !3319
  %54 = add i64 2, %53, !dbg !3319
  %55 = load i64, i64* %23, align 8, !dbg !3320
  %56 = add i64 %55, %54, !dbg !3320
  store i64 %56, i64* %23, align 8, !dbg !3320
  %57 = load i8*, i8** %15, align 8, !dbg !3321
  %58 = icmp ne i8* %57, null, !dbg !3323
  br i1 %58, label %59, label %86, !dbg !3324

59:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata i8* %26, metadata !3325, metadata !DIExpression()), !dbg !3327
  %60 = load i8, i8* %20, align 1, !dbg !3328
  %61 = zext i8 %60 to i32, !dbg !3328
  %62 = or i32 %61, 4, !dbg !3328
  %63 = trunc i32 %62 to i8, !dbg !3328
  store i8 %63, i8* %20, align 1, !dbg !3328
  %64 = load i8*, i8** %15, align 8, !dbg !3329
  %65 = call i64 @strlen(i8* %64) #11, !dbg !3329
  %66 = add i64 2, %65, !dbg !3329
  %67 = load i64, i64* %23, align 8, !dbg !3330
  %68 = add i64 %67, %66, !dbg !3330
  store i64 %68, i64* %23, align 8, !dbg !3330
  %69 = load i8*, i8** %16, align 8, !dbg !3331
  %70 = icmp eq i8* %69, null, !dbg !3333
  br i1 %70, label %71, label %72, !dbg !3334

71:                                               ; preds = %59
  store i64 -2147483642, i64* %11, align 8, !dbg !3335
  br label %237, !dbg !3335

72:                                               ; preds = %59
  %73 = load i64, i64* %17, align 8, !dbg !3337
  %74 = add i64 2, %73, !dbg !3338
  %75 = load i64, i64* %23, align 8, !dbg !3339
  %76 = add i64 %75, %74, !dbg !3339
  store i64 %76, i64* %23, align 8, !dbg !3339
  %77 = load i8, i8* %20, align 1, !dbg !3340
  %78 = zext i8 %77 to i32, !dbg !3340
  %79 = and i32 %78, 24, !dbg !3341
  %80 = trunc i32 %79 to i8, !dbg !3340
  store i8 %80, i8* %26, align 1, !dbg !3342
  %81 = load i8, i8* %26, align 1, !dbg !3343
  %82 = zext i8 %81 to i32, !dbg !3343
  %83 = icmp eq i32 %82, 24, !dbg !3345
  br i1 %83, label %84, label %85, !dbg !3346

84:                                               ; preds = %72
  store i64 -2147483641, i64* %11, align 8, !dbg !3347
  br label %237, !dbg !3347

85:                                               ; preds = %72
  br label %99, !dbg !3349

86:                                               ; preds = %51
  %87 = load i8, i8* %20, align 1, !dbg !3350
  %88 = zext i8 %87 to i32, !dbg !3350
  %89 = and i32 %88, -5, !dbg !3350
  %90 = trunc i32 %89 to i8, !dbg !3350
  store i8 %90, i8* %20, align 1, !dbg !3350
  %91 = load i8, i8* %20, align 1, !dbg !3352
  %92 = zext i8 %91 to i32, !dbg !3352
  %93 = and i32 %92, -25, !dbg !3352
  %94 = trunc i32 %93 to i8, !dbg !3352
  store i8 %94, i8* %20, align 1, !dbg !3352
  %95 = load i8, i8* %20, align 1, !dbg !3353
  %96 = zext i8 %95 to i32, !dbg !3353
  %97 = and i32 %96, -33, !dbg !3353
  %98 = trunc i32 %97 to i8, !dbg !3353
  store i8 %98, i8* %20, align 1, !dbg !3353
  br label %99

99:                                               ; preds = %86, %85
  %100 = load i8*, i8** %18, align 8, !dbg !3354
  %101 = icmp ne i8* %100, null, !dbg !3356
  br i1 %101, label %102, label %112, !dbg !3357

102:                                              ; preds = %99
  %103 = load i8, i8* %20, align 1, !dbg !3358
  %104 = zext i8 %103 to i32, !dbg !3358
  %105 = or i32 %104, 128, !dbg !3358
  %106 = trunc i32 %105 to i8, !dbg !3358
  store i8 %106, i8* %20, align 1, !dbg !3358
  %107 = load i8*, i8** %18, align 8, !dbg !3360
  %108 = call i64 @strlen(i8* %107) #11, !dbg !3360
  %109 = add i64 2, %108, !dbg !3360
  %110 = load i64, i64* %23, align 8, !dbg !3361
  %111 = add i64 %110, %109, !dbg !3361
  store i64 %111, i64* %23, align 8, !dbg !3361
  br label %117, !dbg !3362

112:                                              ; preds = %99
  %113 = load i8, i8* %20, align 1, !dbg !3363
  %114 = zext i8 %113 to i32, !dbg !3363
  %115 = and i32 %114, -129, !dbg !3363
  %116 = trunc i32 %115 to i8, !dbg !3363
  store i8 %116, i8* %20, align 1, !dbg !3363
  br label %117

117:                                              ; preds = %112, %102
  %118 = load i8*, i8** %19, align 8, !dbg !3365
  %119 = icmp ne i8* %118, null, !dbg !3367
  br i1 %119, label %120, label %130, !dbg !3368

120:                                              ; preds = %117
  %121 = load i8, i8* %20, align 1, !dbg !3369
  %122 = zext i8 %121 to i32, !dbg !3369
  %123 = or i32 %122, 64, !dbg !3369
  %124 = trunc i32 %123 to i8, !dbg !3369
  store i8 %124, i8* %20, align 1, !dbg !3369
  %125 = load i8*, i8** %19, align 8, !dbg !3371
  %126 = call i64 @strlen(i8* %125) #11, !dbg !3371
  %127 = add i64 2, %126, !dbg !3371
  %128 = load i64, i64* %23, align 8, !dbg !3372
  %129 = add i64 %128, %127, !dbg !3372
  store i64 %129, i64* %23, align 8, !dbg !3372
  br label %135, !dbg !3373

130:                                              ; preds = %117
  %131 = load i8, i8* %20, align 1, !dbg !3374
  %132 = zext i8 %131 to i32, !dbg !3374
  %133 = and i32 %132, -65, !dbg !3374
  %134 = trunc i32 %133 to i8, !dbg !3374
  store i8 %134, i8* %20, align 1, !dbg !3374
  br label %135

135:                                              ; preds = %130, %120
  %136 = load i64, i64* %23, align 8, !dbg !3376
  %137 = trunc i64 %136 to i32, !dbg !3376
  %138 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %22, i32 0, i32 2, !dbg !3377
  store i32 %137, i32* %138, align 4, !dbg !3378
  %139 = load i8*, i8** %12, align 8, !dbg !3379
  %140 = load i64, i64* %13, align 8, !dbg !3380
  %141 = call i64 @mqtt_pack_fixed_header(i8* %139, i64 %140, %struct.mqtt_fixed_header* %22), !dbg !3381
  store i64 %141, i64* %25, align 8, !dbg !3382
  %142 = load i64, i64* %25, align 8, !dbg !3383
  %143 = icmp sle i64 %142, 0, !dbg !3385
  br i1 %143, label %144, label %146, !dbg !3386

144:                                              ; preds = %135
  %145 = load i64, i64* %25, align 8, !dbg !3387
  store i64 %145, i64* %11, align 8, !dbg !3389
  br label %237, !dbg !3389

146:                                              ; preds = %135
  %147 = load i64, i64* %25, align 8, !dbg !3390
  %148 = load i8*, i8** %12, align 8, !dbg !3391
  %149 = getelementptr inbounds i8, i8* %148, i64 %147, !dbg !3391
  store i8* %149, i8** %12, align 8, !dbg !3391
  %150 = load i64, i64* %25, align 8, !dbg !3392
  %151 = load i64, i64* %13, align 8, !dbg !3393
  %152 = sub i64 %151, %150, !dbg !3393
  store i64 %152, i64* %13, align 8, !dbg !3393
  %153 = load i64, i64* %13, align 8, !dbg !3394
  %154 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %22, i32 0, i32 2, !dbg !3396
  %155 = load i32, i32* %154, align 4, !dbg !3396
  %156 = zext i32 %155 to i64, !dbg !3397
  %157 = icmp ult i64 %153, %156, !dbg !3398
  br i1 %157, label %158, label %159, !dbg !3399

158:                                              ; preds = %146
  store i64 0, i64* %11, align 8, !dbg !3400
  br label %237, !dbg !3400

159:                                              ; preds = %146
  %160 = load i8*, i8** %12, align 8, !dbg !3402
  %161 = getelementptr inbounds i8, i8* %160, i32 1, !dbg !3402
  store i8* %161, i8** %12, align 8, !dbg !3402
  store i8 0, i8* %160, align 1, !dbg !3403
  %162 = load i8*, i8** %12, align 8, !dbg !3404
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !3404
  store i8* %163, i8** %12, align 8, !dbg !3404
  store i8 4, i8* %162, align 1, !dbg !3405
  %164 = load i8*, i8** %12, align 8, !dbg !3406
  %165 = getelementptr inbounds i8, i8* %164, i32 1, !dbg !3406
  store i8* %165, i8** %12, align 8, !dbg !3406
  store i8 77, i8* %164, align 1, !dbg !3407
  %166 = load i8*, i8** %12, align 8, !dbg !3408
  %167 = getelementptr inbounds i8, i8* %166, i32 1, !dbg !3408
  store i8* %167, i8** %12, align 8, !dbg !3408
  store i8 81, i8* %166, align 1, !dbg !3409
  %168 = load i8*, i8** %12, align 8, !dbg !3410
  %169 = getelementptr inbounds i8, i8* %168, i32 1, !dbg !3410
  store i8* %169, i8** %12, align 8, !dbg !3410
  store i8 84, i8* %168, align 1, !dbg !3411
  %170 = load i8*, i8** %12, align 8, !dbg !3412
  %171 = getelementptr inbounds i8, i8* %170, i32 1, !dbg !3412
  store i8* %171, i8** %12, align 8, !dbg !3412
  store i8 84, i8* %170, align 1, !dbg !3413
  %172 = load i8*, i8** %12, align 8, !dbg !3414
  %173 = getelementptr inbounds i8, i8* %172, i32 1, !dbg !3414
  store i8* %173, i8** %12, align 8, !dbg !3414
  store i8 4, i8* %172, align 1, !dbg !3415
  %174 = load i8, i8* %20, align 1, !dbg !3416
  %175 = load i8*, i8** %12, align 8, !dbg !3417
  %176 = getelementptr inbounds i8, i8* %175, i32 1, !dbg !3417
  store i8* %176, i8** %12, align 8, !dbg !3417
  store i8 %174, i8* %175, align 1, !dbg !3418
  %177 = load i8*, i8** %12, align 8, !dbg !3419
  %178 = load i16, i16* %21, align 2, !dbg !3420
  %179 = call i64 @__mqtt_pack_uint16(i8* %177, i16 zeroext %178), !dbg !3421
  %180 = load i8*, i8** %12, align 8, !dbg !3422
  %181 = getelementptr inbounds i8, i8* %180, i64 %179, !dbg !3422
  store i8* %181, i8** %12, align 8, !dbg !3422
  %182 = load i8*, i8** %12, align 8, !dbg !3423
  %183 = load i8*, i8** %14, align 8, !dbg !3424
  %184 = call i64 @__mqtt_pack_str(i8* %182, i8* %183), !dbg !3425
  %185 = load i8*, i8** %12, align 8, !dbg !3426
  %186 = getelementptr inbounds i8, i8* %185, i64 %184, !dbg !3426
  store i8* %186, i8** %12, align 8, !dbg !3426
  %187 = load i8, i8* %20, align 1, !dbg !3427
  %188 = zext i8 %187 to i32, !dbg !3427
  %189 = and i32 %188, 4, !dbg !3429
  %190 = icmp ne i32 %189, 0, !dbg !3429
  br i1 %190, label %191, label %209, !dbg !3430

191:                                              ; preds = %159
  %192 = load i8*, i8** %12, align 8, !dbg !3431
  %193 = load i8*, i8** %15, align 8, !dbg !3433
  %194 = call i64 @__mqtt_pack_str(i8* %192, i8* %193), !dbg !3434
  %195 = load i8*, i8** %12, align 8, !dbg !3435
  %196 = getelementptr inbounds i8, i8* %195, i64 %194, !dbg !3435
  store i8* %196, i8** %12, align 8, !dbg !3435
  %197 = load i8*, i8** %12, align 8, !dbg !3436
  %198 = load i64, i64* %17, align 8, !dbg !3437
  %199 = trunc i64 %198 to i16, !dbg !3438
  %200 = call i64 @__mqtt_pack_uint16(i8* %197, i16 zeroext %199), !dbg !3439
  %201 = load i8*, i8** %12, align 8, !dbg !3440
  %202 = getelementptr inbounds i8, i8* %201, i64 %200, !dbg !3440
  store i8* %202, i8** %12, align 8, !dbg !3440
  %203 = load i8*, i8** %12, align 8, !dbg !3441
  %204 = load i8*, i8** %16, align 8, !dbg !3442
  %205 = load i64, i64* %17, align 8, !dbg !3443
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %203, i8* align 1 %204, i64 %205, i1 false), !dbg !3444
  %206 = load i64, i64* %17, align 8, !dbg !3445
  %207 = load i8*, i8** %12, align 8, !dbg !3446
  %208 = getelementptr inbounds i8, i8* %207, i64 %206, !dbg !3446
  store i8* %208, i8** %12, align 8, !dbg !3446
  br label %209, !dbg !3447

209:                                              ; preds = %191, %159
  %210 = load i8, i8* %20, align 1, !dbg !3448
  %211 = zext i8 %210 to i32, !dbg !3448
  %212 = and i32 %211, 128, !dbg !3450
  %213 = icmp ne i32 %212, 0, !dbg !3450
  br i1 %213, label %214, label %220, !dbg !3451

214:                                              ; preds = %209
  %215 = load i8*, i8** %12, align 8, !dbg !3452
  %216 = load i8*, i8** %18, align 8, !dbg !3454
  %217 = call i64 @__mqtt_pack_str(i8* %215, i8* %216), !dbg !3455
  %218 = load i8*, i8** %12, align 8, !dbg !3456
  %219 = getelementptr inbounds i8, i8* %218, i64 %217, !dbg !3456
  store i8* %219, i8** %12, align 8, !dbg !3456
  br label %220, !dbg !3457

220:                                              ; preds = %214, %209
  %221 = load i8, i8* %20, align 1, !dbg !3458
  %222 = zext i8 %221 to i32, !dbg !3458
  %223 = and i32 %222, 64, !dbg !3460
  %224 = icmp ne i32 %223, 0, !dbg !3460
  br i1 %224, label %225, label %231, !dbg !3461

225:                                              ; preds = %220
  %226 = load i8*, i8** %12, align 8, !dbg !3462
  %227 = load i8*, i8** %19, align 8, !dbg !3464
  %228 = call i64 @__mqtt_pack_str(i8* %226, i8* %227), !dbg !3465
  %229 = load i8*, i8** %12, align 8, !dbg !3466
  %230 = getelementptr inbounds i8, i8* %229, i64 %228, !dbg !3466
  store i8* %230, i8** %12, align 8, !dbg !3466
  br label %231, !dbg !3467

231:                                              ; preds = %225, %220
  %232 = load i8*, i8** %12, align 8, !dbg !3468
  %233 = load i8*, i8** %24, align 8, !dbg !3469
  %234 = ptrtoint i8* %232 to i64, !dbg !3470
  %235 = ptrtoint i8* %233 to i64, !dbg !3470
  %236 = sub i64 %234, %235, !dbg !3470
  store i64 %236, i64* %11, align 8, !dbg !3471
  br label %237, !dbg !3471

237:                                              ; preds = %231, %158, %144, %84, %71, %50
  %238 = load i64, i64* %11, align 8, !dbg !3472
  ret i64 %238, !dbg !3472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__mqtt_pack_str(i8* %0, i8* %1) #0 !dbg !3473 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3476, metadata !DIExpression()), !dbg !3477
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3478, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.declare(metadata i16* %5, metadata !3480, metadata !DIExpression()), !dbg !3481
  %7 = load i8*, i8** %4, align 8, !dbg !3482
  %8 = call i64 @strlen(i8* %7) #11, !dbg !3483
  %9 = trunc i64 %8 to i16, !dbg !3484
  store i16 %9, i16* %5, align 2, !dbg !3481
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3485, metadata !DIExpression()), !dbg !3486
  store i32 0, i32* %6, align 4, !dbg !3486
  %10 = load i8*, i8** %3, align 8, !dbg !3487
  %11 = load i16, i16* %5, align 2, !dbg !3488
  %12 = call i64 @__mqtt_pack_uint16(i8* %10, i16 zeroext %11), !dbg !3489
  %13 = load i8*, i8** %3, align 8, !dbg !3490
  %14 = getelementptr inbounds i8, i8* %13, i64 %12, !dbg !3490
  store i8* %14, i8** %3, align 8, !dbg !3490
  br label %15, !dbg !3491

15:                                               ; preds = %28, %2
  %16 = load i32, i32* %6, align 4, !dbg !3492
  %17 = load i16, i16* %5, align 2, !dbg !3495
  %18 = zext i16 %17 to i32, !dbg !3495
  %19 = icmp slt i32 %16, %18, !dbg !3496
  br i1 %19, label %20, label %31, !dbg !3497

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8, !dbg !3498
  %22 = load i32, i32* %6, align 4, !dbg !3500
  %23 = sext i32 %22 to i64, !dbg !3498
  %24 = getelementptr inbounds i8, i8* %21, i64 %23, !dbg !3498
  %25 = load i8, i8* %24, align 1, !dbg !3498
  %26 = load i8*, i8** %3, align 8, !dbg !3501
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !3501
  store i8* %27, i8** %3, align 8, !dbg !3501
  store i8 %25, i8* %26, align 1, !dbg !3502
  br label %28, !dbg !3503

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4, !dbg !3504
  %30 = add nsw i32 %29, 1, !dbg !3504
  store i32 %30, i32* %6, align 4, !dbg !3504
  br label %15, !dbg !3505, !llvm.loop !3506

31:                                               ; preds = %15
  %32 = load i16, i16* %5, align 2, !dbg !3508
  %33 = zext i16 %32 to i32, !dbg !3508
  %34 = add nsw i32 %33, 2, !dbg !3509
  %35 = sext i32 %34 to i64, !dbg !3508
  ret i64 %35, !dbg !3510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_publish(%struct.mqtt_client.7* %0, i8* %1, i8* %2, i64 %3, i8 zeroext %4) #0 !dbg !3511 {
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
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %7, metadata !3514, metadata !DIExpression()), !dbg !3515
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3516, metadata !DIExpression()), !dbg !3517
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3518, metadata !DIExpression()), !dbg !3519
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3520, metadata !DIExpression()), !dbg !3521
  store i8 %4, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !3522, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %12, metadata !3524, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3526, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.declare(metadata i16* %14, metadata !3528, metadata !DIExpression()), !dbg !3529
  %15 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3530
  %16 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %15, i32 0, i32 16, !dbg !3530
  %17 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %16) #10, !dbg !3530
  %18 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3531
  %19 = call zeroext i16 @__mqtt_next_pid(%struct.mqtt_client.7* %18), !dbg !3532
  store i16 %19, i16* %14, align 2, !dbg !3533
  %20 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3534
  %21 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %20, i32 0, i32 6, !dbg !3534
  %22 = load i32, i32* %21, align 8, !dbg !3534
  %23 = icmp slt i32 %22, 0, !dbg !3534
  br i1 %23, label %24, label %31, !dbg !3536

24:                                               ; preds = %5
  %25 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3537
  %26 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %25, i32 0, i32 16, !dbg !3537
  %27 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %26) #10, !dbg !3537
  %28 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3540
  %29 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %28, i32 0, i32 6, !dbg !3540
  %30 = load i32, i32* %29, align 8, !dbg !3540
  store i32 %30, i32* %6, align 4, !dbg !3540
  br label %115, !dbg !3540

31:                                               ; preds = %5
  %32 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3536
  %33 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %32, i32 0, i32 17, !dbg !3536
  %34 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %33, i32 0, i32 2, !dbg !3536
  %35 = load i8*, i8** %34, align 8, !dbg !3536
  %36 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3536
  %37 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %36, i32 0, i32 17, !dbg !3536
  %38 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %37, i32 0, i32 3, !dbg !3536
  %39 = load i64, i64* %38, align 8, !dbg !3536
  %40 = load i8*, i8** %8, align 8, !dbg !3536
  %41 = load i16, i16* %14, align 2, !dbg !3536
  %42 = load i8*, i8** %9, align 8, !dbg !3536
  %43 = load i64, i64* %10, align 8, !dbg !3536
  %44 = load i8, i8* %11, align 1, !dbg !3536
  %45 = call i64 @mqtt_pack_publish_request(i8* %35, i64 %39, i8* %40, i16 zeroext %41, i8* %42, i64 %43, i8 zeroext %44), !dbg !3536
  store i64 %45, i64* %13, align 8, !dbg !3536
  %46 = load i64, i64* %13, align 8, !dbg !3541
  %47 = icmp slt i64 %46, 0, !dbg !3541
  br i1 %47, label %48, label %58, !dbg !3536

48:                                               ; preds = %31
  %49 = load i64, i64* %13, align 8, !dbg !3543
  %50 = trunc i64 %49 to i32, !dbg !3543
  %51 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3543
  %52 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %51, i32 0, i32 6, !dbg !3543
  store i32 %50, i32* %52, align 8, !dbg !3543
  %53 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3545
  %54 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %53, i32 0, i32 16, !dbg !3545
  %55 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %54) #10, !dbg !3545
  %56 = load i64, i64* %13, align 8, !dbg !3543
  %57 = trunc i64 %56 to i32, !dbg !3543
  store i32 %57, i32* %6, align 4, !dbg !3543
  br label %115, !dbg !3543

58:                                               ; preds = %31
  %59 = load i64, i64* %13, align 8, !dbg !3547
  %60 = icmp eq i64 %59, 0, !dbg !3547
  br i1 %60, label %61, label %101, !dbg !3541

61:                                               ; preds = %58
  %62 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3549
  %63 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %62, i32 0, i32 17, !dbg !3549
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %63), !dbg !3549
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3549
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 17, !dbg !3549
  %66 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %65, i32 0, i32 2, !dbg !3549
  %67 = load i8*, i8** %66, align 8, !dbg !3549
  %68 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3549
  %69 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %68, i32 0, i32 17, !dbg !3549
  %70 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %69, i32 0, i32 3, !dbg !3549
  %71 = load i64, i64* %70, align 8, !dbg !3549
  %72 = load i8*, i8** %8, align 8, !dbg !3549
  %73 = load i16, i16* %14, align 2, !dbg !3549
  %74 = load i8*, i8** %9, align 8, !dbg !3549
  %75 = load i64, i64* %10, align 8, !dbg !3549
  %76 = load i8, i8* %11, align 1, !dbg !3549
  %77 = call i64 @mqtt_pack_publish_request(i8* %67, i64 %71, i8* %72, i16 zeroext %73, i8* %74, i64 %75, i8 zeroext %76), !dbg !3549
  store i64 %77, i64* %13, align 8, !dbg !3549
  %78 = load i64, i64* %13, align 8, !dbg !3551
  %79 = icmp slt i64 %78, 0, !dbg !3551
  br i1 %79, label %80, label %90, !dbg !3549

80:                                               ; preds = %61
  %81 = load i64, i64* %13, align 8, !dbg !3553
  %82 = trunc i64 %81 to i32, !dbg !3553
  %83 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3553
  %84 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %83, i32 0, i32 6, !dbg !3553
  store i32 %82, i32* %84, align 8, !dbg !3553
  %85 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3555
  %86 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %85, i32 0, i32 16, !dbg !3555
  %87 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %86) #10, !dbg !3555
  %88 = load i64, i64* %13, align 8, !dbg !3553
  %89 = trunc i64 %88 to i32, !dbg !3553
  store i32 %89, i32* %6, align 4, !dbg !3553
  br label %115, !dbg !3553

90:                                               ; preds = %61
  %91 = load i64, i64* %13, align 8, !dbg !3557
  %92 = icmp eq i64 %91, 0, !dbg !3557
  br i1 %92, label %93, label %99, !dbg !3551

93:                                               ; preds = %90
  %94 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3559
  %95 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %94, i32 0, i32 6, !dbg !3559
  store i32 -2147483632, i32* %95, align 8, !dbg !3559
  %96 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3561
  %97 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %96, i32 0, i32 16, !dbg !3561
  %98 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %97) #10, !dbg !3561
  store i32 -2147483632, i32* %6, align 4, !dbg !3559
  br label %115, !dbg !3559

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99
  br label %101, !dbg !3549

101:                                              ; preds = %100, %58
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3536
  %104 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %103, i32 0, i32 17, !dbg !3536
  %105 = load i64, i64* %13, align 8, !dbg !3536
  %106 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %104, i64 %105), !dbg !3536
  store %struct.mqtt_queued_message* %106, %struct.mqtt_queued_message** %12, align 8, !dbg !3536
  %107 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %12, align 8, !dbg !3563
  %108 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %107, i32 0, i32 4, !dbg !3564
  store i32 3, i32* %108, align 8, !dbg !3565
  %109 = load i16, i16* %14, align 2, !dbg !3566
  %110 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %12, align 8, !dbg !3567
  %111 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %110, i32 0, i32 5, !dbg !3568
  store i16 %109, i16* %111, align 4, !dbg !3569
  %112 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %7, align 8, !dbg !3570
  %113 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %112, i32 0, i32 16, !dbg !3570
  %114 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %113) #10, !dbg !3570
  store i32 1, i32* %6, align 4, !dbg !3571
  br label %115, !dbg !3571

115:                                              ; preds = %102, %93, %80, %48, %24
  %116 = load i32, i32* %6, align 4, !dbg !3572
  ret i32 %116, !dbg !3572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_publish_request(i8* %0, i64 %1, i8* %2, i16 zeroext %3, i8* %4, i64 %5, i8 zeroext %6) #0 !dbg !3573 {
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
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3576, metadata !DIExpression()), !dbg !3577
  store i64 %1, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3578, metadata !DIExpression()), !dbg !3579
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3580, metadata !DIExpression()), !dbg !3581
  store i16 %3, i16* %12, align 2
  call void @llvm.dbg.declare(metadata i16* %12, metadata !3582, metadata !DIExpression()), !dbg !3583
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3584, metadata !DIExpression()), !dbg !3585
  store i64 %5, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3586, metadata !DIExpression()), !dbg !3587
  store i8 %6, i8* %15, align 1
  call void @llvm.dbg.declare(metadata i8* %15, metadata !3588, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3590, metadata !DIExpression()), !dbg !3591
  %21 = load i8*, i8** %9, align 8, !dbg !3592
  store i8* %21, i8** %16, align 8, !dbg !3591
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3593, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %18, metadata !3595, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.declare(metadata i32* %19, metadata !3597, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.declare(metadata i8* %20, metadata !3599, metadata !DIExpression()), !dbg !3600
  %22 = load i8*, i8** %9, align 8, !dbg !3601
  %23 = icmp eq i8* %22, null, !dbg !3603
  br i1 %23, label %27, label %24, !dbg !3604

24:                                               ; preds = %7
  %25 = load i8*, i8** %11, align 8, !dbg !3605
  %26 = icmp eq i8* %25, null, !dbg !3606
  br i1 %26, label %27, label %28, !dbg !3607

27:                                               ; preds = %24, %7
  store i64 -2147483647, i64* %8, align 8, !dbg !3608
  br label %121, !dbg !3608

28:                                               ; preds = %24
  %29 = load i8, i8* %15, align 1, !dbg !3610
  %30 = zext i8 %29 to i32, !dbg !3610
  %31 = and i32 %30, 6, !dbg !3611
  %32 = ashr i32 %31, 1, !dbg !3612
  %33 = trunc i32 %32 to i8, !dbg !3613
  store i8 %33, i8* %20, align 1, !dbg !3614
  %34 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %18, i32 0, i32 0, !dbg !3615
  store i32 3, i32* %34, align 4, !dbg !3616
  %35 = load i8*, i8** %11, align 8, !dbg !3617
  %36 = call i64 @strlen(i8* %35) #11, !dbg !3617
  %37 = add i64 2, %36, !dbg !3617
  %38 = trunc i64 %37 to i32, !dbg !3618
  store i32 %38, i32* %19, align 4, !dbg !3619
  %39 = load i8, i8* %20, align 1, !dbg !3620
  %40 = zext i8 %39 to i32, !dbg !3620
  %41 = icmp sgt i32 %40, 0, !dbg !3622
  br i1 %41, label %42, label %45, !dbg !3623

42:                                               ; preds = %28
  %43 = load i32, i32* %19, align 4, !dbg !3624
  %44 = add i32 %43, 2, !dbg !3624
  store i32 %44, i32* %19, align 4, !dbg !3624
  br label %45, !dbg !3626

45:                                               ; preds = %42, %28
  %46 = load i64, i64* %14, align 8, !dbg !3627
  %47 = trunc i64 %46 to i32, !dbg !3628
  %48 = load i32, i32* %19, align 4, !dbg !3629
  %49 = add i32 %48, %47, !dbg !3629
  store i32 %49, i32* %19, align 4, !dbg !3629
  %50 = load i32, i32* %19, align 4, !dbg !3630
  %51 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %18, i32 0, i32 2, !dbg !3631
  store i32 %50, i32* %51, align 4, !dbg !3632
  %52 = load i8, i8* %20, align 1, !dbg !3633
  %53 = zext i8 %52 to i32, !dbg !3633
  %54 = icmp eq i32 %53, 0, !dbg !3635
  br i1 %54, label %55, label %60, !dbg !3636

55:                                               ; preds = %45
  %56 = load i8, i8* %15, align 1, !dbg !3637
  %57 = zext i8 %56 to i32, !dbg !3637
  %58 = and i32 %57, -9, !dbg !3637
  %59 = trunc i32 %58 to i8, !dbg !3637
  store i8 %59, i8* %15, align 1, !dbg !3637
  br label %60, !dbg !3639

60:                                               ; preds = %55, %45
  %61 = load i8, i8* %20, align 1, !dbg !3640
  %62 = zext i8 %61 to i32, !dbg !3640
  %63 = icmp eq i32 %62, 3, !dbg !3642
  br i1 %63, label %64, label %65, !dbg !3643

64:                                               ; preds = %60
  store i64 -2147483638, i64* %8, align 8, !dbg !3644
  br label %121, !dbg !3644

65:                                               ; preds = %60
  %66 = load i8, i8* %15, align 1, !dbg !3646
  %67 = zext i8 %66 to i32, !dbg !3646
  %68 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %18, i32 0, i32 1, !dbg !3647
  %69 = trunc i32 %67 to i8, !dbg !3648
  %70 = load i8, i8* %68, align 4, !dbg !3648
  %71 = and i8 %69, 15, !dbg !3648
  %72 = and i8 %70, -16, !dbg !3648
  %73 = or i8 %72, %71, !dbg !3648
  store i8 %73, i8* %68, align 4, !dbg !3648
  %74 = zext i8 %71 to i32, !dbg !3648
  %75 = load i8*, i8** %9, align 8, !dbg !3649
  %76 = load i64, i64* %10, align 8, !dbg !3650
  %77 = call i64 @mqtt_pack_fixed_header(i8* %75, i64 %76, %struct.mqtt_fixed_header* %18), !dbg !3651
  store i64 %77, i64* %17, align 8, !dbg !3652
  %78 = load i64, i64* %17, align 8, !dbg !3653
  %79 = icmp sle i64 %78, 0, !dbg !3655
  br i1 %79, label %80, label %82, !dbg !3656

80:                                               ; preds = %65
  %81 = load i64, i64* %17, align 8, !dbg !3657
  store i64 %81, i64* %8, align 8, !dbg !3659
  br label %121, !dbg !3659

82:                                               ; preds = %65
  %83 = load i64, i64* %17, align 8, !dbg !3660
  %84 = load i8*, i8** %9, align 8, !dbg !3661
  %85 = getelementptr inbounds i8, i8* %84, i64 %83, !dbg !3661
  store i8* %85, i8** %9, align 8, !dbg !3661
  %86 = load i64, i64* %17, align 8, !dbg !3662
  %87 = load i64, i64* %10, align 8, !dbg !3663
  %88 = sub i64 %87, %86, !dbg !3663
  store i64 %88, i64* %10, align 8, !dbg !3663
  %89 = load i64, i64* %10, align 8, !dbg !3664
  %90 = load i32, i32* %19, align 4, !dbg !3666
  %91 = zext i32 %90 to i64, !dbg !3666
  %92 = icmp ult i64 %89, %91, !dbg !3667
  br i1 %92, label %93, label %94, !dbg !3668

93:                                               ; preds = %82
  store i64 0, i64* %8, align 8, !dbg !3669
  br label %121, !dbg !3669

94:                                               ; preds = %82
  %95 = load i8*, i8** %9, align 8, !dbg !3671
  %96 = load i8*, i8** %11, align 8, !dbg !3672
  %97 = call i64 @__mqtt_pack_str(i8* %95, i8* %96), !dbg !3673
  %98 = load i8*, i8** %9, align 8, !dbg !3674
  %99 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3674
  store i8* %99, i8** %9, align 8, !dbg !3674
  %100 = load i8, i8* %20, align 1, !dbg !3675
  %101 = zext i8 %100 to i32, !dbg !3675
  %102 = icmp sgt i32 %101, 0, !dbg !3677
  br i1 %102, label %103, label %109, !dbg !3678

103:                                              ; preds = %94
  %104 = load i8*, i8** %9, align 8, !dbg !3679
  %105 = load i16, i16* %12, align 2, !dbg !3681
  %106 = call i64 @__mqtt_pack_uint16(i8* %104, i16 zeroext %105), !dbg !3682
  %107 = load i8*, i8** %9, align 8, !dbg !3683
  %108 = getelementptr inbounds i8, i8* %107, i64 %106, !dbg !3683
  store i8* %108, i8** %9, align 8, !dbg !3683
  br label %109, !dbg !3684

109:                                              ; preds = %103, %94
  %110 = load i8*, i8** %9, align 8, !dbg !3685
  %111 = load i8*, i8** %13, align 8, !dbg !3686
  %112 = load i64, i64* %14, align 8, !dbg !3687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %110, i8* align 1 %111, i64 %112, i1 false), !dbg !3688
  %113 = load i64, i64* %14, align 8, !dbg !3689
  %114 = load i8*, i8** %9, align 8, !dbg !3690
  %115 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3690
  store i8* %115, i8** %9, align 8, !dbg !3690
  %116 = load i8*, i8** %9, align 8, !dbg !3691
  %117 = load i8*, i8** %16, align 8, !dbg !3692
  %118 = ptrtoint i8* %116 to i64, !dbg !3693
  %119 = ptrtoint i8* %117 to i64, !dbg !3693
  %120 = sub i64 %118, %119, !dbg !3693
  store i64 %120, i64* %8, align 8, !dbg !3694
  br label %121, !dbg !3694

121:                                              ; preds = %109, %93, %80, %64, %27
  %122 = load i64, i64* %8, align 8, !dbg !3695
  ret i64 %122, !dbg !3695
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_subscribe(%struct.mqtt_client.7* %0, i8* %1, i32 %2) #0 !dbg !3696 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mqtt_client.7*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %5, metadata !3699, metadata !DIExpression()), !dbg !3700
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3701, metadata !DIExpression()), !dbg !3702
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3703, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.declare(metadata i16* %9, metadata !3707, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %10, metadata !3709, metadata !DIExpression()), !dbg !3710
  %11 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3711
  %12 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %11, i32 0, i32 16, !dbg !3711
  %13 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %12) #10, !dbg !3711
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3712
  %15 = call zeroext i16 @__mqtt_next_pid(%struct.mqtt_client.7* %14), !dbg !3713
  store i16 %15, i16* %9, align 2, !dbg !3714
  %16 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3715
  %17 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %16, i32 0, i32 6, !dbg !3715
  %18 = load i32, i32* %17, align 8, !dbg !3715
  %19 = icmp slt i32 %18, 0, !dbg !3715
  br i1 %19, label %20, label %27, !dbg !3717

20:                                               ; preds = %3
  %21 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3718
  %22 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %21, i32 0, i32 16, !dbg !3718
  %23 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %22) #10, !dbg !3718
  %24 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3721
  %25 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %24, i32 0, i32 6, !dbg !3721
  %26 = load i32, i32* %25, align 8, !dbg !3721
  store i32 %26, i32* %4, align 4, !dbg !3721
  br label %109, !dbg !3721

27:                                               ; preds = %3
  %28 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3717
  %29 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %28, i32 0, i32 17, !dbg !3717
  %30 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %29, i32 0, i32 2, !dbg !3717
  %31 = load i8*, i8** %30, align 8, !dbg !3717
  %32 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3717
  %33 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %32, i32 0, i32 17, !dbg !3717
  %34 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %33, i32 0, i32 3, !dbg !3717
  %35 = load i64, i64* %34, align 8, !dbg !3717
  %36 = load i16, i16* %9, align 2, !dbg !3717
  %37 = zext i16 %36 to i32, !dbg !3717
  %38 = load i8*, i8** %6, align 8, !dbg !3717
  %39 = load i32, i32* %7, align 4, !dbg !3717
  %40 = call i64 (i8*, i64, i32, ...) @mqtt_pack_subscribe_request(i8* %31, i64 %35, i32 %37, i8* %38, i32 %39, i8* null), !dbg !3717
  store i64 %40, i64* %8, align 8, !dbg !3717
  %41 = load i64, i64* %8, align 8, !dbg !3722
  %42 = icmp slt i64 %41, 0, !dbg !3722
  br i1 %42, label %43, label %53, !dbg !3717

43:                                               ; preds = %27
  %44 = load i64, i64* %8, align 8, !dbg !3724
  %45 = trunc i64 %44 to i32, !dbg !3724
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3724
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 6, !dbg !3724
  store i32 %45, i32* %47, align 8, !dbg !3724
  %48 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3726
  %49 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %48, i32 0, i32 16, !dbg !3726
  %50 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %49) #10, !dbg !3726
  %51 = load i64, i64* %8, align 8, !dbg !3724
  %52 = trunc i64 %51 to i32, !dbg !3724
  store i32 %52, i32* %4, align 4, !dbg !3724
  br label %109, !dbg !3724

53:                                               ; preds = %27
  %54 = load i64, i64* %8, align 8, !dbg !3728
  %55 = icmp eq i64 %54, 0, !dbg !3728
  br i1 %55, label %56, label %95, !dbg !3722

56:                                               ; preds = %53
  %57 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3730
  %58 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %57, i32 0, i32 17, !dbg !3730
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %58), !dbg !3730
  %59 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3730
  %60 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %59, i32 0, i32 17, !dbg !3730
  %61 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %60, i32 0, i32 2, !dbg !3730
  %62 = load i8*, i8** %61, align 8, !dbg !3730
  %63 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3730
  %64 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %63, i32 0, i32 17, !dbg !3730
  %65 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %64, i32 0, i32 3, !dbg !3730
  %66 = load i64, i64* %65, align 8, !dbg !3730
  %67 = load i16, i16* %9, align 2, !dbg !3730
  %68 = zext i16 %67 to i32, !dbg !3730
  %69 = load i8*, i8** %6, align 8, !dbg !3730
  %70 = load i32, i32* %7, align 4, !dbg !3730
  %71 = call i64 (i8*, i64, i32, ...) @mqtt_pack_subscribe_request(i8* %62, i64 %66, i32 %68, i8* %69, i32 %70, i8* null), !dbg !3730
  store i64 %71, i64* %8, align 8, !dbg !3730
  %72 = load i64, i64* %8, align 8, !dbg !3732
  %73 = icmp slt i64 %72, 0, !dbg !3732
  br i1 %73, label %74, label %84, !dbg !3730

74:                                               ; preds = %56
  %75 = load i64, i64* %8, align 8, !dbg !3734
  %76 = trunc i64 %75 to i32, !dbg !3734
  %77 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3734
  %78 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %77, i32 0, i32 6, !dbg !3734
  store i32 %76, i32* %78, align 8, !dbg !3734
  %79 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3736
  %80 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %79, i32 0, i32 16, !dbg !3736
  %81 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %80) #10, !dbg !3736
  %82 = load i64, i64* %8, align 8, !dbg !3734
  %83 = trunc i64 %82 to i32, !dbg !3734
  store i32 %83, i32* %4, align 4, !dbg !3734
  br label %109, !dbg !3734

84:                                               ; preds = %56
  %85 = load i64, i64* %8, align 8, !dbg !3738
  %86 = icmp eq i64 %85, 0, !dbg !3738
  br i1 %86, label %87, label %93, !dbg !3732

87:                                               ; preds = %84
  %88 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3740
  %89 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %88, i32 0, i32 6, !dbg !3740
  store i32 -2147483632, i32* %89, align 8, !dbg !3740
  %90 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3742
  %91 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %90, i32 0, i32 16, !dbg !3742
  %92 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %91) #10, !dbg !3742
  store i32 -2147483632, i32* %4, align 4, !dbg !3740
  br label %109, !dbg !3740

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93
  br label %95, !dbg !3730

95:                                               ; preds = %94, %53
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3717
  %98 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %97, i32 0, i32 17, !dbg !3717
  %99 = load i64, i64* %8, align 8, !dbg !3717
  %100 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %98, i64 %99), !dbg !3717
  store %struct.mqtt_queued_message* %100, %struct.mqtt_queued_message** %10, align 8, !dbg !3717
  %101 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %10, align 8, !dbg !3744
  %102 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %101, i32 0, i32 4, !dbg !3745
  store i32 8, i32* %102, align 8, !dbg !3746
  %103 = load i16, i16* %9, align 2, !dbg !3747
  %104 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %10, align 8, !dbg !3748
  %105 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %104, i32 0, i32 5, !dbg !3749
  store i16 %103, i16* %105, align 4, !dbg !3750
  %106 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %5, align 8, !dbg !3751
  %107 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %106, i32 0, i32 16, !dbg !3751
  %108 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %107) #10, !dbg !3751
  store i32 1, i32* %4, align 4, !dbg !3752
  br label %109, !dbg !3752

109:                                              ; preds = %96, %87, %74, %43, %20
  %110 = load i32, i32* %4, align 4, !dbg !3753
  ret i32 %110, !dbg !3753
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_subscribe_request(i8* %0, i64 %1, i32 %2, ...) #0 !dbg !3754 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3757, metadata !DIExpression()), !dbg !3758
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3759, metadata !DIExpression()), !dbg !3760
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3761, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !3763, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3777, metadata !DIExpression()), !dbg !3778
  %16 = load i8*, i8** %5, align 8, !dbg !3779
  store i8* %16, i8** %9, align 8, !dbg !3778
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3780, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %11, metadata !3782, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3784, metadata !DIExpression()), !dbg !3785
  store i32 0, i32* %12, align 4, !dbg !3785
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3786, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.declare(metadata [8 x i8*]* %14, metadata !3788, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.declare(metadata [8 x i8]* %15, metadata !3793, metadata !DIExpression()), !dbg !3795
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3796
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !3796
  call void @llvm.va_start(i8* %18), !dbg !3796
  br label %19, !dbg !3797

19:                                               ; preds = %3, %77
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3798
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 0, !dbg !3798
  %22 = load i32, i32* %21, align 16, !dbg !3798
  %23 = icmp ule i32 %22, 40, !dbg !3798
  br i1 %23, label %24, label %30, !dbg !3798

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 3, !dbg !3798
  %26 = load i8*, i8** %25, align 16, !dbg !3798
  %27 = getelementptr i8, i8* %26, i32 %22, !dbg !3798
  %28 = bitcast i8* %27 to i8**, !dbg !3798
  %29 = add i32 %22, 8, !dbg !3798
  store i32 %29, i32* %21, align 16, !dbg !3798
  br label %35, !dbg !3798

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 2, !dbg !3798
  %32 = load i8*, i8** %31, align 8, !dbg !3798
  %33 = bitcast i8* %32 to i8**, !dbg !3798
  %34 = getelementptr i8, i8* %32, i32 8, !dbg !3798
  store i8* %34, i8** %31, align 8, !dbg !3798
  br label %35, !dbg !3798

35:                                               ; preds = %30, %24
  %36 = phi i8** [ %28, %24 ], [ %33, %30 ], !dbg !3798
  %37 = load i8*, i8** %36, align 8, !dbg !3798
  %38 = load i32, i32* %12, align 4, !dbg !3800
  %39 = zext i32 %38 to i64, !dbg !3801
  %40 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %39, !dbg !3801
  store i8* %37, i8** %40, align 8, !dbg !3802
  %41 = load i32, i32* %12, align 4, !dbg !3803
  %42 = zext i32 %41 to i64, !dbg !3805
  %43 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %42, !dbg !3805
  %44 = load i8*, i8** %43, align 8, !dbg !3805
  %45 = icmp eq i8* %44, null, !dbg !3806
  br i1 %45, label %46, label %47, !dbg !3807

46:                                               ; preds = %35
  br label %78, !dbg !3808

47:                                               ; preds = %35
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3810
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 0, !dbg !3810
  %50 = load i32, i32* %49, align 16, !dbg !3810
  %51 = icmp ule i32 %50, 40, !dbg !3810
  br i1 %51, label %52, label %58, !dbg !3810

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 3, !dbg !3810
  %54 = load i8*, i8** %53, align 16, !dbg !3810
  %55 = getelementptr i8, i8* %54, i32 %50, !dbg !3810
  %56 = bitcast i8* %55 to i32*, !dbg !3810
  %57 = add i32 %50, 8, !dbg !3810
  store i32 %57, i32* %49, align 16, !dbg !3810
  br label %63, !dbg !3810

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 2, !dbg !3810
  %60 = load i8*, i8** %59, align 8, !dbg !3810
  %61 = bitcast i8* %60 to i32*, !dbg !3810
  %62 = getelementptr i8, i8* %60, i32 8, !dbg !3810
  store i8* %62, i8** %59, align 8, !dbg !3810
  br label %63, !dbg !3810

63:                                               ; preds = %58, %52
  %64 = phi i32* [ %56, %52 ], [ %61, %58 ], !dbg !3810
  %65 = load i32, i32* %64, align 4, !dbg !3810
  %66 = trunc i32 %65 to i8, !dbg !3811
  %67 = load i32, i32* %12, align 4, !dbg !3812
  %68 = zext i32 %67 to i64, !dbg !3813
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 %68, !dbg !3813
  store i8 %66, i8* %69, align 1, !dbg !3814
  %70 = load i32, i32* %12, align 4, !dbg !3815
  %71 = add i32 %70, 1, !dbg !3815
  store i32 %71, i32* %12, align 4, !dbg !3815
  %72 = load i32, i32* %12, align 4, !dbg !3816
  %73 = icmp uge i32 %72, 8, !dbg !3818
  br i1 %73, label %74, label %77, !dbg !3819

74:                                               ; preds = %63
  %75 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3820
  %76 = bitcast %struct.__va_list_tag* %75 to i8*, !dbg !3820
  call void @llvm.va_end(i8* %76), !dbg !3820
  store i64 -2147483637, i64* %4, align 8, !dbg !3822
  br label %163, !dbg !3822

77:                                               ; preds = %63
  br label %19, !dbg !3797, !llvm.loop !3823

78:                                               ; preds = %46
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3825
  %80 = bitcast %struct.__va_list_tag* %79 to i8*, !dbg !3825
  call void @llvm.va_end(i8* %80), !dbg !3825
  %81 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 0, !dbg !3826
  store i32 8, i32* %81, align 4, !dbg !3827
  %82 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 1, !dbg !3828
  %83 = load i8, i8* %82, align 4, !dbg !3829
  %84 = and i8 %83, -16, !dbg !3829
  %85 = or i8 %84, 2, !dbg !3829
  store i8 %85, i8* %82, align 4, !dbg !3829
  %86 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !3830
  store i32 2, i32* %86, align 4, !dbg !3831
  store i32 0, i32* %13, align 4, !dbg !3832
  br label %87, !dbg !3834

87:                                               ; preds = %104, %78
  %88 = load i32, i32* %13, align 4, !dbg !3835
  %89 = load i32, i32* %12, align 4, !dbg !3837
  %90 = icmp ult i32 %88, %89, !dbg !3838
  br i1 %90, label %91, label %107, !dbg !3839

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4, !dbg !3840
  %93 = zext i32 %92 to i64, !dbg !3840
  %94 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %93, !dbg !3840
  %95 = load i8*, i8** %94, align 8, !dbg !3840
  %96 = call i64 @strlen(i8* %95) #11, !dbg !3840
  %97 = add i64 2, %96, !dbg !3840
  %98 = add i64 %97, 1, !dbg !3842
  %99 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !3843
  %100 = load i32, i32* %99, align 4, !dbg !3844
  %101 = zext i32 %100 to i64, !dbg !3844
  %102 = add i64 %101, %98, !dbg !3844
  %103 = trunc i64 %102 to i32, !dbg !3844
  store i32 %103, i32* %99, align 4, !dbg !3844
  br label %104, !dbg !3845

104:                                              ; preds = %91
  %105 = load i32, i32* %13, align 4, !dbg !3846
  %106 = add i32 %105, 1, !dbg !3846
  store i32 %106, i32* %13, align 4, !dbg !3846
  br label %87, !dbg !3847, !llvm.loop !3848

107:                                              ; preds = %87
  %108 = load i8*, i8** %5, align 8, !dbg !3850
  %109 = load i64, i64* %6, align 8, !dbg !3851
  %110 = call i64 @mqtt_pack_fixed_header(i8* %108, i64 %109, %struct.mqtt_fixed_header* %11), !dbg !3852
  store i64 %110, i64* %10, align 8, !dbg !3853
  %111 = load i64, i64* %10, align 8, !dbg !3854
  %112 = icmp sle i64 %111, 0, !dbg !3856
  br i1 %112, label %113, label %115, !dbg !3857

113:                                              ; preds = %107
  %114 = load i64, i64* %10, align 8, !dbg !3858
  store i64 %114, i64* %4, align 8, !dbg !3860
  br label %163, !dbg !3860

115:                                              ; preds = %107
  %116 = load i64, i64* %10, align 8, !dbg !3861
  %117 = load i8*, i8** %5, align 8, !dbg !3862
  %118 = getelementptr inbounds i8, i8* %117, i64 %116, !dbg !3862
  store i8* %118, i8** %5, align 8, !dbg !3862
  %119 = load i64, i64* %10, align 8, !dbg !3863
  %120 = load i64, i64* %6, align 8, !dbg !3864
  %121 = sub i64 %120, %119, !dbg !3864
  store i64 %121, i64* %6, align 8, !dbg !3864
  %122 = load i64, i64* %6, align 8, !dbg !3865
  %123 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !3867
  %124 = load i32, i32* %123, align 4, !dbg !3867
  %125 = zext i32 %124 to i64, !dbg !3868
  %126 = icmp ult i64 %122, %125, !dbg !3869
  br i1 %126, label %127, label %128, !dbg !3870

127:                                              ; preds = %115
  store i64 0, i64* %4, align 8, !dbg !3871
  br label %163, !dbg !3871

128:                                              ; preds = %115
  %129 = load i8*, i8** %5, align 8, !dbg !3873
  %130 = load i32, i32* %7, align 4, !dbg !3874
  %131 = trunc i32 %130 to i16, !dbg !3874
  %132 = call i64 @__mqtt_pack_uint16(i8* %129, i16 zeroext %131), !dbg !3875
  %133 = load i8*, i8** %5, align 8, !dbg !3876
  %134 = getelementptr inbounds i8, i8* %133, i64 %132, !dbg !3876
  store i8* %134, i8** %5, align 8, !dbg !3876
  store i32 0, i32* %13, align 4, !dbg !3877
  br label %135, !dbg !3879

135:                                              ; preds = %154, %128
  %136 = load i32, i32* %13, align 4, !dbg !3880
  %137 = load i32, i32* %12, align 4, !dbg !3882
  %138 = icmp ult i32 %136, %137, !dbg !3883
  br i1 %138, label %139, label %157, !dbg !3884

139:                                              ; preds = %135
  %140 = load i8*, i8** %5, align 8, !dbg !3885
  %141 = load i32, i32* %13, align 4, !dbg !3887
  %142 = zext i32 %141 to i64, !dbg !3888
  %143 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %142, !dbg !3888
  %144 = load i8*, i8** %143, align 8, !dbg !3888
  %145 = call i64 @__mqtt_pack_str(i8* %140, i8* %144), !dbg !3889
  %146 = load i8*, i8** %5, align 8, !dbg !3890
  %147 = getelementptr inbounds i8, i8* %146, i64 %145, !dbg !3890
  store i8* %147, i8** %5, align 8, !dbg !3890
  %148 = load i32, i32* %13, align 4, !dbg !3891
  %149 = zext i32 %148 to i64, !dbg !3892
  %150 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 %149, !dbg !3892
  %151 = load i8, i8* %150, align 1, !dbg !3892
  %152 = load i8*, i8** %5, align 8, !dbg !3893
  %153 = getelementptr inbounds i8, i8* %152, i32 1, !dbg !3893
  store i8* %153, i8** %5, align 8, !dbg !3893
  store i8 %151, i8* %152, align 1, !dbg !3894
  br label %154, !dbg !3895

154:                                              ; preds = %139
  %155 = load i32, i32* %13, align 4, !dbg !3896
  %156 = add i32 %155, 1, !dbg !3896
  store i32 %156, i32* %13, align 4, !dbg !3896
  br label %135, !dbg !3897, !llvm.loop !3898

157:                                              ; preds = %135
  %158 = load i8*, i8** %5, align 8, !dbg !3900
  %159 = load i8*, i8** %9, align 8, !dbg !3901
  %160 = ptrtoint i8* %158 to i64, !dbg !3902
  %161 = ptrtoint i8* %159 to i64, !dbg !3902
  %162 = sub i64 %160, %161, !dbg !3902
  store i64 %162, i64* %4, align 8, !dbg !3903
  br label %163, !dbg !3903

163:                                              ; preds = %157, %127, %113, %74
  %164 = load i64, i64* %4, align 8, !dbg !3904
  ret i64 %164, !dbg !3904
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_unsubscribe(%struct.mqtt_client.7* %0, i8* %1) #0 !dbg !3905 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mqtt_client.7*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %4, metadata !3908, metadata !DIExpression()), !dbg !3909
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3910, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.declare(metadata i16* %6, metadata !3912, metadata !DIExpression()), !dbg !3913
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3914
  %10 = call zeroext i16 @__mqtt_next_pid(%struct.mqtt_client.7* %9), !dbg !3915
  store i16 %10, i16* %6, align 2, !dbg !3913
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3916, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %8, metadata !3918, metadata !DIExpression()), !dbg !3919
  %11 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3920
  %12 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %11, i32 0, i32 16, !dbg !3920
  %13 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %12) #10, !dbg !3920
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3921
  %15 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %14, i32 0, i32 6, !dbg !3921
  %16 = load i32, i32* %15, align 8, !dbg !3921
  %17 = icmp slt i32 %16, 0, !dbg !3921
  br i1 %17, label %18, label %25, !dbg !3923

18:                                               ; preds = %2
  %19 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3924
  %20 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %19, i32 0, i32 16, !dbg !3924
  %21 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %20) #10, !dbg !3924
  %22 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3927
  %23 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %22, i32 0, i32 6, !dbg !3927
  %24 = load i32, i32* %23, align 8, !dbg !3927
  store i32 %24, i32* %3, align 4, !dbg !3927
  br label %105, !dbg !3927

25:                                               ; preds = %2
  %26 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3923
  %27 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %26, i32 0, i32 17, !dbg !3923
  %28 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %27, i32 0, i32 2, !dbg !3923
  %29 = load i8*, i8** %28, align 8, !dbg !3923
  %30 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3923
  %31 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %30, i32 0, i32 17, !dbg !3923
  %32 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %31, i32 0, i32 3, !dbg !3923
  %33 = load i64, i64* %32, align 8, !dbg !3923
  %34 = load i16, i16* %6, align 2, !dbg !3923
  %35 = zext i16 %34 to i32, !dbg !3923
  %36 = load i8*, i8** %5, align 8, !dbg !3923
  %37 = call i64 (i8*, i64, i32, ...) @mqtt_pack_unsubscribe_request(i8* %29, i64 %33, i32 %35, i8* %36, i8* null), !dbg !3923
  store i64 %37, i64* %7, align 8, !dbg !3923
  %38 = load i64, i64* %7, align 8, !dbg !3928
  %39 = icmp slt i64 %38, 0, !dbg !3928
  br i1 %39, label %40, label %50, !dbg !3923

40:                                               ; preds = %25
  %41 = load i64, i64* %7, align 8, !dbg !3930
  %42 = trunc i64 %41 to i32, !dbg !3930
  %43 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3930
  %44 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %43, i32 0, i32 6, !dbg !3930
  store i32 %42, i32* %44, align 8, !dbg !3930
  %45 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3932
  %46 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %45, i32 0, i32 16, !dbg !3932
  %47 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %46) #10, !dbg !3932
  %48 = load i64, i64* %7, align 8, !dbg !3930
  %49 = trunc i64 %48 to i32, !dbg !3930
  store i32 %49, i32* %3, align 4, !dbg !3930
  br label %105, !dbg !3930

50:                                               ; preds = %25
  %51 = load i64, i64* %7, align 8, !dbg !3934
  %52 = icmp eq i64 %51, 0, !dbg !3934
  br i1 %52, label %53, label %91, !dbg !3928

53:                                               ; preds = %50
  %54 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3936
  %55 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %54, i32 0, i32 17, !dbg !3936
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %55), !dbg !3936
  %56 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3936
  %57 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %56, i32 0, i32 17, !dbg !3936
  %58 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %57, i32 0, i32 2, !dbg !3936
  %59 = load i8*, i8** %58, align 8, !dbg !3936
  %60 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3936
  %61 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %60, i32 0, i32 17, !dbg !3936
  %62 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %61, i32 0, i32 3, !dbg !3936
  %63 = load i64, i64* %62, align 8, !dbg !3936
  %64 = load i16, i16* %6, align 2, !dbg !3936
  %65 = zext i16 %64 to i32, !dbg !3936
  %66 = load i8*, i8** %5, align 8, !dbg !3936
  %67 = call i64 (i8*, i64, i32, ...) @mqtt_pack_unsubscribe_request(i8* %59, i64 %63, i32 %65, i8* %66, i8* null), !dbg !3936
  store i64 %67, i64* %7, align 8, !dbg !3936
  %68 = load i64, i64* %7, align 8, !dbg !3938
  %69 = icmp slt i64 %68, 0, !dbg !3938
  br i1 %69, label %70, label %80, !dbg !3936

70:                                               ; preds = %53
  %71 = load i64, i64* %7, align 8, !dbg !3940
  %72 = trunc i64 %71 to i32, !dbg !3940
  %73 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3940
  %74 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %73, i32 0, i32 6, !dbg !3940
  store i32 %72, i32* %74, align 8, !dbg !3940
  %75 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3942
  %76 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %75, i32 0, i32 16, !dbg !3942
  %77 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %76) #10, !dbg !3942
  %78 = load i64, i64* %7, align 8, !dbg !3940
  %79 = trunc i64 %78 to i32, !dbg !3940
  store i32 %79, i32* %3, align 4, !dbg !3940
  br label %105, !dbg !3940

80:                                               ; preds = %53
  %81 = load i64, i64* %7, align 8, !dbg !3944
  %82 = icmp eq i64 %81, 0, !dbg !3944
  br i1 %82, label %83, label %89, !dbg !3938

83:                                               ; preds = %80
  %84 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3946
  %85 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %84, i32 0, i32 6, !dbg !3946
  store i32 -2147483632, i32* %85, align 8, !dbg !3946
  %86 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3948
  %87 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %86, i32 0, i32 16, !dbg !3948
  %88 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %87) #10, !dbg !3948
  store i32 -2147483632, i32* %3, align 4, !dbg !3946
  br label %105, !dbg !3946

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  br label %91, !dbg !3936

91:                                               ; preds = %90, %50
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3923
  %94 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %93, i32 0, i32 17, !dbg !3923
  %95 = load i64, i64* %7, align 8, !dbg !3923
  %96 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %94, i64 %95), !dbg !3923
  store %struct.mqtt_queued_message* %96, %struct.mqtt_queued_message** %8, align 8, !dbg !3923
  %97 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !3950
  %98 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %97, i32 0, i32 4, !dbg !3951
  store i32 10, i32* %98, align 8, !dbg !3952
  %99 = load i16, i16* %6, align 2, !dbg !3953
  %100 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %8, align 8, !dbg !3954
  %101 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %100, i32 0, i32 5, !dbg !3955
  store i16 %99, i16* %101, align 4, !dbg !3956
  %102 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %4, align 8, !dbg !3957
  %103 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %102, i32 0, i32 16, !dbg !3957
  %104 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %103) #10, !dbg !3957
  store i32 1, i32* %3, align 4, !dbg !3958
  br label %105, !dbg !3958

105:                                              ; preds = %92, %83, %70, %40, %18
  %106 = load i32, i32* %3, align 4, !dbg !3959
  ret i32 %106, !dbg !3959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_unsubscribe_request(i8* %0, i64 %1, i32 %2, ...) #0 !dbg !3960 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3961, metadata !DIExpression()), !dbg !3962
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3963, metadata !DIExpression()), !dbg !3964
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3965, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !3967, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3969, metadata !DIExpression()), !dbg !3970
  %15 = load i8*, i8** %5, align 8, !dbg !3971
  store i8* %15, i8** %9, align 8, !dbg !3970
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3972, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %11, metadata !3974, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3976, metadata !DIExpression()), !dbg !3977
  store i32 0, i32* %12, align 4, !dbg !3977
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3978, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.declare(metadata [8 x i8*]* %14, metadata !3980, metadata !DIExpression()), !dbg !3981
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3982
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !3982
  call void @llvm.va_start(i8* %17), !dbg !3982
  br label %18, !dbg !3983

18:                                               ; preds = %3, %54
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !3984
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %19, i32 0, i32 0, !dbg !3984
  %21 = load i32, i32* %20, align 16, !dbg !3984
  %22 = icmp ule i32 %21, 40, !dbg !3984
  br i1 %22, label %23, label %29, !dbg !3984

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %19, i32 0, i32 3, !dbg !3984
  %25 = load i8*, i8** %24, align 16, !dbg !3984
  %26 = getelementptr i8, i8* %25, i32 %21, !dbg !3984
  %27 = bitcast i8* %26 to i8**, !dbg !3984
  %28 = add i32 %21, 8, !dbg !3984
  store i32 %28, i32* %20, align 16, !dbg !3984
  br label %34, !dbg !3984

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %19, i32 0, i32 2, !dbg !3984
  %31 = load i8*, i8** %30, align 8, !dbg !3984
  %32 = bitcast i8* %31 to i8**, !dbg !3984
  %33 = getelementptr i8, i8* %31, i32 8, !dbg !3984
  store i8* %33, i8** %30, align 8, !dbg !3984
  br label %34, !dbg !3984

34:                                               ; preds = %29, %23
  %35 = phi i8** [ %27, %23 ], [ %32, %29 ], !dbg !3984
  %36 = load i8*, i8** %35, align 8, !dbg !3984
  %37 = load i32, i32* %12, align 4, !dbg !3986
  %38 = zext i32 %37 to i64, !dbg !3987
  %39 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %38, !dbg !3987
  store i8* %36, i8** %39, align 8, !dbg !3988
  %40 = load i32, i32* %12, align 4, !dbg !3989
  %41 = zext i32 %40 to i64, !dbg !3991
  %42 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %41, !dbg !3991
  %43 = load i8*, i8** %42, align 8, !dbg !3991
  %44 = icmp eq i8* %43, null, !dbg !3992
  br i1 %44, label %45, label %46, !dbg !3993

45:                                               ; preds = %34
  br label %55, !dbg !3994

46:                                               ; preds = %34
  %47 = load i32, i32* %12, align 4, !dbg !3996
  %48 = add i32 %47, 1, !dbg !3996
  store i32 %48, i32* %12, align 4, !dbg !3996
  %49 = load i32, i32* %12, align 4, !dbg !3997
  %50 = icmp uge i32 %49, 8, !dbg !3999
  br i1 %50, label %51, label %54, !dbg !4000

51:                                               ; preds = %46
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !4001
  %53 = bitcast %struct.__va_list_tag* %52 to i8*, !dbg !4001
  call void @llvm.va_end(i8* %53), !dbg !4001
  store i64 -2147483635, i64* %4, align 8, !dbg !4003
  br label %133, !dbg !4003

54:                                               ; preds = %46
  br label %18, !dbg !3983, !llvm.loop !4004

55:                                               ; preds = %45
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !4006
  %57 = bitcast %struct.__va_list_tag* %56 to i8*, !dbg !4006
  call void @llvm.va_end(i8* %57), !dbg !4006
  %58 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 0, !dbg !4007
  store i32 10, i32* %58, align 4, !dbg !4008
  %59 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 1, !dbg !4009
  %60 = load i8, i8* %59, align 4, !dbg !4010
  %61 = and i8 %60, -16, !dbg !4010
  %62 = or i8 %61, 2, !dbg !4010
  store i8 %62, i8* %59, align 4, !dbg !4010
  %63 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !4011
  store i32 2, i32* %63, align 4, !dbg !4012
  store i32 0, i32* %13, align 4, !dbg !4013
  br label %64, !dbg !4015

64:                                               ; preds = %80, %55
  %65 = load i32, i32* %13, align 4, !dbg !4016
  %66 = load i32, i32* %12, align 4, !dbg !4018
  %67 = icmp ult i32 %65, %66, !dbg !4019
  br i1 %67, label %68, label %83, !dbg !4020

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4, !dbg !4021
  %70 = zext i32 %69 to i64, !dbg !4021
  %71 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %70, !dbg !4021
  %72 = load i8*, i8** %71, align 8, !dbg !4021
  %73 = call i64 @strlen(i8* %72) #11, !dbg !4021
  %74 = add i64 2, %73, !dbg !4021
  %75 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !4023
  %76 = load i32, i32* %75, align 4, !dbg !4024
  %77 = zext i32 %76 to i64, !dbg !4024
  %78 = add i64 %77, %74, !dbg !4024
  %79 = trunc i64 %78 to i32, !dbg !4024
  store i32 %79, i32* %75, align 4, !dbg !4024
  br label %80, !dbg !4025

80:                                               ; preds = %68
  %81 = load i32, i32* %13, align 4, !dbg !4026
  %82 = add i32 %81, 1, !dbg !4026
  store i32 %82, i32* %13, align 4, !dbg !4026
  br label %64, !dbg !4027, !llvm.loop !4028

83:                                               ; preds = %64
  %84 = load i8*, i8** %5, align 8, !dbg !4030
  %85 = load i64, i64* %6, align 8, !dbg !4031
  %86 = call i64 @mqtt_pack_fixed_header(i8* %84, i64 %85, %struct.mqtt_fixed_header* %11), !dbg !4032
  store i64 %86, i64* %10, align 8, !dbg !4033
  %87 = load i64, i64* %10, align 8, !dbg !4034
  %88 = icmp sle i64 %87, 0, !dbg !4036
  br i1 %88, label %89, label %91, !dbg !4037

89:                                               ; preds = %83
  %90 = load i64, i64* %10, align 8, !dbg !4038
  store i64 %90, i64* %4, align 8, !dbg !4040
  br label %133, !dbg !4040

91:                                               ; preds = %83
  %92 = load i64, i64* %10, align 8, !dbg !4041
  %93 = load i8*, i8** %5, align 8, !dbg !4042
  %94 = getelementptr inbounds i8, i8* %93, i64 %92, !dbg !4042
  store i8* %94, i8** %5, align 8, !dbg !4042
  %95 = load i64, i64* %10, align 8, !dbg !4043
  %96 = load i64, i64* %6, align 8, !dbg !4044
  %97 = sub i64 %96, %95, !dbg !4044
  store i64 %97, i64* %6, align 8, !dbg !4044
  %98 = load i64, i64* %6, align 8, !dbg !4045
  %99 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %11, i32 0, i32 2, !dbg !4047
  %100 = load i32, i32* %99, align 4, !dbg !4047
  %101 = zext i32 %100 to i64, !dbg !4048
  %102 = icmp ult i64 %98, %101, !dbg !4049
  br i1 %102, label %103, label %104, !dbg !4050

103:                                              ; preds = %91
  store i64 0, i64* %4, align 8, !dbg !4051
  br label %133, !dbg !4051

104:                                              ; preds = %91
  %105 = load i8*, i8** %5, align 8, !dbg !4053
  %106 = load i32, i32* %7, align 4, !dbg !4054
  %107 = trunc i32 %106 to i16, !dbg !4054
  %108 = call i64 @__mqtt_pack_uint16(i8* %105, i16 zeroext %107), !dbg !4055
  %109 = load i8*, i8** %5, align 8, !dbg !4056
  %110 = getelementptr inbounds i8, i8* %109, i64 %108, !dbg !4056
  store i8* %110, i8** %5, align 8, !dbg !4056
  store i32 0, i32* %13, align 4, !dbg !4057
  br label %111, !dbg !4059

111:                                              ; preds = %124, %104
  %112 = load i32, i32* %13, align 4, !dbg !4060
  %113 = load i32, i32* %12, align 4, !dbg !4062
  %114 = icmp ult i32 %112, %113, !dbg !4063
  br i1 %114, label %115, label %127, !dbg !4064

115:                                              ; preds = %111
  %116 = load i8*, i8** %5, align 8, !dbg !4065
  %117 = load i32, i32* %13, align 4, !dbg !4067
  %118 = zext i32 %117 to i64, !dbg !4068
  %119 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %118, !dbg !4068
  %120 = load i8*, i8** %119, align 8, !dbg !4068
  %121 = call i64 @__mqtt_pack_str(i8* %116, i8* %120), !dbg !4069
  %122 = load i8*, i8** %5, align 8, !dbg !4070
  %123 = getelementptr inbounds i8, i8* %122, i64 %121, !dbg !4070
  store i8* %123, i8** %5, align 8, !dbg !4070
  br label %124, !dbg !4071

124:                                              ; preds = %115
  %125 = load i32, i32* %13, align 4, !dbg !4072
  %126 = add i32 %125, 1, !dbg !4072
  store i32 %126, i32* %13, align 4, !dbg !4072
  br label %111, !dbg !4073, !llvm.loop !4074

127:                                              ; preds = %111
  %128 = load i8*, i8** %5, align 8, !dbg !4076
  %129 = load i8*, i8** %9, align 8, !dbg !4077
  %130 = ptrtoint i8* %128 to i64, !dbg !4078
  %131 = ptrtoint i8* %129 to i64, !dbg !4078
  %132 = sub i64 %130, %131, !dbg !4078
  store i64 %132, i64* %4, align 8, !dbg !4079
  br label %133, !dbg !4079

133:                                              ; preds = %127, %103, %89, %51
  %134 = load i64, i64* %4, align 8, !dbg !4080
  ret i64 %134, !dbg !4080
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_ping(%struct.mqtt_client.7* %0) #0 !dbg !4081 {
  %2 = alloca %struct.mqtt_client.7*, align 8
  %3 = alloca i32, align 4
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %2, metadata !4082, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4084, metadata !DIExpression()), !dbg !4085
  %4 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4086
  %5 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %4, i32 0, i32 16, !dbg !4086
  %6 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %5) #10, !dbg !4086
  %7 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4087
  %8 = call i32 @__mqtt_ping(%struct.mqtt_client.7* %7), !dbg !4088
  store i32 %8, i32* %3, align 4, !dbg !4089
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4090
  %10 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %9, i32 0, i32 16, !dbg !4090
  %11 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %10) #10, !dbg !4090
  %12 = load i32, i32* %3, align 4, !dbg !4091
  ret i32 %12, !dbg !4092
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_reconnect(%struct.mqtt_client.7* %0) #0 !dbg !4093 {
  %2 = alloca %struct.mqtt_client.7*, align 8
  %3 = alloca i32, align 4
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %2, metadata !4094, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4096, metadata !DIExpression()), !dbg !4097
  %4 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4098
  %5 = call i32 @mqtt_disconnect(%struct.mqtt_client.7* %4), !dbg !4099
  store i32 %5, i32* %3, align 4, !dbg !4097
  %6 = load i32, i32* %3, align 4, !dbg !4100
  %7 = icmp eq i32 %6, 1, !dbg !4102
  br i1 %7, label %8, label %17, !dbg !4103

8:                                                ; preds = %1
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4104
  %10 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %9, i32 0, i32 16, !dbg !4104
  %11 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %10) #10, !dbg !4104
  %12 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4106
  %13 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %12, i32 0, i32 6, !dbg !4107
  store i32 -2147483620, i32* %13, align 8, !dbg !4108
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %2, align 8, !dbg !4109
  %15 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %14, i32 0, i32 16, !dbg !4109
  %16 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %15) #10, !dbg !4109
  br label %17, !dbg !4110

17:                                               ; preds = %8, %1
  %18 = load i32, i32* %3, align 4, !dbg !4111
  ret i32 %18, !dbg !4112
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mqtt_disconnect(%struct.mqtt_client.7* %0) #0 !dbg !4113 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mqtt_client.7*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_queued_message*, align 8
  store %struct.mqtt_client.7* %0, %struct.mqtt_client.7** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.mqtt_client.7** %3, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4116, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.declare(metadata %struct.mqtt_queued_message** %5, metadata !4118, metadata !DIExpression()), !dbg !4119
  %6 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4120
  %7 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %6, i32 0, i32 16, !dbg !4120
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %7) #10, !dbg !4120
  %9 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4121
  %10 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %9, i32 0, i32 6, !dbg !4121
  %11 = load i32, i32* %10, align 8, !dbg !4121
  %12 = icmp slt i32 %11, 0, !dbg !4121
  br i1 %12, label %13, label %20, !dbg !4123

13:                                               ; preds = %1
  %14 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4124
  %15 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %14, i32 0, i32 16, !dbg !4124
  %16 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %15) #10, !dbg !4124
  %17 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4127
  %18 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %17, i32 0, i32 6, !dbg !4127
  %19 = load i32, i32* %18, align 8, !dbg !4127
  store i32 %19, i32* %2, align 4, !dbg !4127
  br label %91, !dbg !4127

20:                                               ; preds = %1
  %21 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4123
  %22 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %21, i32 0, i32 17, !dbg !4123
  %23 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %22, i32 0, i32 2, !dbg !4123
  %24 = load i8*, i8** %23, align 8, !dbg !4123
  %25 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4123
  %26 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %25, i32 0, i32 17, !dbg !4123
  %27 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %26, i32 0, i32 3, !dbg !4123
  %28 = load i64, i64* %27, align 8, !dbg !4123
  %29 = call i64 @mqtt_pack_disconnect(i8* %24, i64 %28), !dbg !4123
  store i64 %29, i64* %4, align 8, !dbg !4123
  %30 = load i64, i64* %4, align 8, !dbg !4128
  %31 = icmp slt i64 %30, 0, !dbg !4128
  br i1 %31, label %32, label %42, !dbg !4123

32:                                               ; preds = %20
  %33 = load i64, i64* %4, align 8, !dbg !4130
  %34 = trunc i64 %33 to i32, !dbg !4130
  %35 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4130
  %36 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %35, i32 0, i32 6, !dbg !4130
  store i32 %34, i32* %36, align 8, !dbg !4130
  %37 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4132
  %38 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %37, i32 0, i32 16, !dbg !4132
  %39 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %38) #10, !dbg !4132
  %40 = load i64, i64* %4, align 8, !dbg !4130
  %41 = trunc i64 %40 to i32, !dbg !4130
  store i32 %41, i32* %2, align 4, !dbg !4130
  br label %91, !dbg !4130

42:                                               ; preds = %20
  %43 = load i64, i64* %4, align 8, !dbg !4134
  %44 = icmp eq i64 %43, 0, !dbg !4134
  br i1 %44, label %45, label %80, !dbg !4128

45:                                               ; preds = %42
  %46 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4136
  %47 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %46, i32 0, i32 17, !dbg !4136
  call void @mqtt_mq_clean(%struct.mqtt_message_queue* %47), !dbg !4136
  %48 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4136
  %49 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %48, i32 0, i32 17, !dbg !4136
  %50 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %49, i32 0, i32 2, !dbg !4136
  %51 = load i8*, i8** %50, align 8, !dbg !4136
  %52 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4136
  %53 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %52, i32 0, i32 17, !dbg !4136
  %54 = getelementptr inbounds %struct.mqtt_message_queue, %struct.mqtt_message_queue* %53, i32 0, i32 3, !dbg !4136
  %55 = load i64, i64* %54, align 8, !dbg !4136
  %56 = call i64 @mqtt_pack_disconnect(i8* %51, i64 %55), !dbg !4136
  store i64 %56, i64* %4, align 8, !dbg !4136
  %57 = load i64, i64* %4, align 8, !dbg !4138
  %58 = icmp slt i64 %57, 0, !dbg !4138
  br i1 %58, label %59, label %69, !dbg !4136

59:                                               ; preds = %45
  %60 = load i64, i64* %4, align 8, !dbg !4140
  %61 = trunc i64 %60 to i32, !dbg !4140
  %62 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4140
  %63 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %62, i32 0, i32 6, !dbg !4140
  store i32 %61, i32* %63, align 8, !dbg !4140
  %64 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4142
  %65 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %64, i32 0, i32 16, !dbg !4142
  %66 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %65) #10, !dbg !4142
  %67 = load i64, i64* %4, align 8, !dbg !4140
  %68 = trunc i64 %67 to i32, !dbg !4140
  store i32 %68, i32* %2, align 4, !dbg !4140
  br label %91, !dbg !4140

69:                                               ; preds = %45
  %70 = load i64, i64* %4, align 8, !dbg !4144
  %71 = icmp eq i64 %70, 0, !dbg !4144
  br i1 %71, label %72, label %78, !dbg !4138

72:                                               ; preds = %69
  %73 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4146
  %74 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %73, i32 0, i32 6, !dbg !4146
  store i32 -2147483632, i32* %74, align 8, !dbg !4146
  %75 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4148
  %76 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %75, i32 0, i32 16, !dbg !4148
  %77 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %76) #10, !dbg !4148
  store i32 -2147483632, i32* %2, align 4, !dbg !4146
  br label %91, !dbg !4146

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78
  br label %80, !dbg !4136

80:                                               ; preds = %79, %42
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4123
  %83 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %82, i32 0, i32 17, !dbg !4123
  %84 = load i64, i64* %4, align 8, !dbg !4123
  %85 = call %struct.mqtt_queued_message* @mqtt_mq_register(%struct.mqtt_message_queue* %83, i64 %84), !dbg !4123
  store %struct.mqtt_queued_message* %85, %struct.mqtt_queued_message** %5, align 8, !dbg !4123
  %86 = load %struct.mqtt_queued_message*, %struct.mqtt_queued_message** %5, align 8, !dbg !4150
  %87 = getelementptr inbounds %struct.mqtt_queued_message, %struct.mqtt_queued_message* %86, i32 0, i32 4, !dbg !4151
  store i32 14, i32* %87, align 8, !dbg !4152
  %88 = load %struct.mqtt_client.7*, %struct.mqtt_client.7** %3, align 8, !dbg !4153
  %89 = getelementptr inbounds %struct.mqtt_client.7, %struct.mqtt_client.7* %88, i32 0, i32 16, !dbg !4153
  %90 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %89) #10, !dbg !4153
  store i32 1, i32* %2, align 4, !dbg !4154
  br label %91, !dbg !4154

91:                                               ; preds = %81, %72, %59, %32, %13
  %92 = load i32, i32* %2, align 4, !dbg !4155
  ret i32 %92, !dbg !4155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pack_disconnect(i8* %0, i64 %1) #0 !dbg !4156 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mqtt_fixed_header, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4157, metadata !DIExpression()), !dbg !4158
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4159, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.declare(metadata %struct.mqtt_fixed_header* %5, metadata !4161, metadata !DIExpression()), !dbg !4162
  %6 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 0, !dbg !4163
  store i32 14, i32* %6, align 4, !dbg !4164
  %7 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 1, !dbg !4165
  %8 = load i8, i8* %7, align 4, !dbg !4166
  %9 = and i8 %8, -16, !dbg !4166
  store i8 %9, i8* %7, align 4, !dbg !4166
  %10 = getelementptr inbounds %struct.mqtt_fixed_header, %struct.mqtt_fixed_header* %5, i32 0, i32 2, !dbg !4167
  store i32 0, i32* %10, align 4, !dbg !4168
  %11 = load i8*, i8** %3, align 8, !dbg !4169
  %12 = load i64, i64* %4, align 8, !dbg !4170
  %13 = call i64 @mqtt_pack_fixed_header(i8* %11, i64 %12, %struct.mqtt_fixed_header* %5), !dbg !4171
  ret i64 %13, !dbg !4172
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mqtt_error_str(i32 %0) #0 !dbg !4173 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4176, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4178, metadata !DIExpression()), !dbg !4179
  %5 = load i32, i32* %3, align 4, !dbg !4180
  %6 = sub nsw i32 %5, -2147483648, !dbg !4181
  store i32 %6, i32* %4, align 4, !dbg !4179
  %7 = load i32, i32* %4, align 4, !dbg !4182
  %8 = icmp sge i32 %7, 0, !dbg !4184
  br i1 %8, label %9, label %14, !dbg !4185

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !4186
  %11 = sext i32 %10 to i64, !dbg !4188
  %12 = getelementptr inbounds [29 x i8*], [29 x i8*]* @MQTT_ERRORS_STR, i64 0, i64 %11, !dbg !4188
  %13 = load i8*, i8** %12, align 8, !dbg !4188
  store i8* %13, i8** %2, align 8, !dbg !4189
  br label %24, !dbg !4189

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4, !dbg !4190
  %16 = icmp eq i32 %15, 0, !dbg !4192
  br i1 %16, label %17, label %18, !dbg !4193

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.19, i64 0, i64 0), i8** %2, align 8, !dbg !4194
  br label %24, !dbg !4194

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4, !dbg !4196
  %20 = icmp sgt i32 %19, 0, !dbg !4198
  br i1 %20, label %21, label %22, !dbg !4199

21:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.20, i64 0, i64 0), i8** %2, align 8, !dbg !4200
  br label %24, !dbg !4200

22:                                               ; preds = %18
  %23 = load i8*, i8** getelementptr inbounds ([29 x i8*], [29 x i8*]* @MQTT_ERRORS_STR, i64 0, i64 0), align 16, !dbg !4202
  store i8* %23, i8** %2, align 8, !dbg !4204
  br label %24, !dbg !4204

24:                                               ; preds = %22, %21, %17, %9
  %25 = load i8*, i8** %2, align 8, !dbg !4205
  ret i8* %25, !dbg !4205
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pal_sendall(i32 %0, i8* %1, i64 %2, i32 %3) #0 !dbg !4206 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4210, metadata !DIExpression()), !dbg !4211
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4212, metadata !DIExpression()), !dbg !4213
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4214, metadata !DIExpression()), !dbg !4215
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4216, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4218, metadata !DIExpression()), !dbg !4219
  store i64 0, i64* %10, align 8, !dbg !4219
  br label %12, !dbg !4220

12:                                               ; preds = %38, %4
  %13 = load i64, i64* %10, align 8, !dbg !4221
  %14 = load i64, i64* %8, align 8, !dbg !4222
  %15 = icmp ult i64 %13, %14, !dbg !4223
  br i1 %15, label %16, label %39, !dbg !4220

16:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4224, metadata !DIExpression()), !dbg !4226
  %17 = load i32, i32* %6, align 4, !dbg !4227
  %18 = load i8*, i8** %7, align 8, !dbg !4228
  %19 = load i64, i64* %10, align 8, !dbg !4229
  %20 = getelementptr i8, i8* %18, i64 %19, !dbg !4230
  %21 = load i64, i64* %8, align 8, !dbg !4231
  %22 = load i64, i64* %10, align 8, !dbg !4232
  %23 = sub i64 %21, %22, !dbg !4233
  %24 = load i32, i32* %9, align 4, !dbg !4234
  %25 = call i64 @send(i32 %17, i8* %20, i64 %23, i32 %24), !dbg !4235
  store i64 %25, i64* %11, align 8, !dbg !4226
  %26 = load i64, i64* %11, align 8, !dbg !4236
  %27 = icmp slt i64 %26, 1, !dbg !4238
  br i1 %27, label %28, label %34, !dbg !4239

28:                                               ; preds = %16
  %29 = call i32* @__errno_location() #13, !dbg !4240
  %30 = load i32, i32* %29, align 4, !dbg !4240
  %31 = icmp ne i32 %30, 11, !dbg !4243
  br i1 %31, label %32, label %33, !dbg !4244

32:                                               ; preds = %28
  store i64 -2147483631, i64* %5, align 8, !dbg !4245
  br label %41, !dbg !4245

33:                                               ; preds = %28
  br label %38, !dbg !4247

34:                                               ; preds = %16
  %35 = load i64, i64* %11, align 8, !dbg !4248
  %36 = load i64, i64* %10, align 8, !dbg !4250
  %37 = add i64 %36, %35, !dbg !4250
  store i64 %37, i64* %10, align 8, !dbg !4250
  br label %38

38:                                               ; preds = %34, %33
  br label %12, !dbg !4220, !llvm.loop !4251

39:                                               ; preds = %12
  %40 = load i64, i64* %10, align 8, !dbg !4253
  store i64 %40, i64* %5, align 8, !dbg !4254
  br label %41, !dbg !4254

41:                                               ; preds = %39, %32
  %42 = load i64, i64* %5, align 8, !dbg !4255
  ret i64 %42, !dbg !4255
}

declare dso_local i64 @send(i32, i8*, i64, i32) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mqtt_pal_recvall(i32 %0, i8* %1, i64 %2, i32 %3) #0 !dbg !4256 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4259, metadata !DIExpression()), !dbg !4260
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4261, metadata !DIExpression()), !dbg !4262
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4263, metadata !DIExpression()), !dbg !4264
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4267, metadata !DIExpression()), !dbg !4269
  %12 = load i8*, i8** %7, align 8, !dbg !4270
  store i8* %12, i8** %10, align 8, !dbg !4269
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4271, metadata !DIExpression()), !dbg !4272
  br label %13, !dbg !4273

13:                                               ; preds = %51, %4
  %14 = load i32, i32* %6, align 4, !dbg !4274
  %15 = load i8*, i8** %7, align 8, !dbg !4276
  %16 = load i64, i64* %8, align 8, !dbg !4277
  %17 = load i32, i32* %9, align 4, !dbg !4278
  %18 = call i64 @recv(i32 %14, i8* %15, i64 %16, i32 %17), !dbg !4279
  store i64 %18, i64* %11, align 8, !dbg !4280
  %19 = load i64, i64* %11, align 8, !dbg !4281
  %20 = icmp sgt i64 %19, 0, !dbg !4283
  br i1 %20, label %21, label %28, !dbg !4284

21:                                               ; preds = %13
  %22 = load i64, i64* %11, align 8, !dbg !4285
  %23 = load i8*, i8** %7, align 8, !dbg !4287
  %24 = getelementptr i8, i8* %23, i64 %22, !dbg !4287
  store i8* %24, i8** %7, align 8, !dbg !4287
  %25 = load i64, i64* %11, align 8, !dbg !4288
  %26 = load i64, i64* %8, align 8, !dbg !4289
  %27 = sub i64 %26, %25, !dbg !4289
  store i64 %27, i64* %8, align 8, !dbg !4289
  br label %44, !dbg !4290

28:                                               ; preds = %13
  %29 = load i64, i64* %11, align 8, !dbg !4291
  %30 = icmp eq i64 %29, 0, !dbg !4293
  br i1 %30, label %42, label %31, !dbg !4294

31:                                               ; preds = %28
  %32 = load i64, i64* %11, align 8, !dbg !4295
  %33 = icmp slt i64 %32, 0, !dbg !4296
  br i1 %33, label %34, label %43, !dbg !4297

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #13, !dbg !4298
  %36 = load i32, i32* %35, align 4, !dbg !4298
  %37 = icmp ne i32 %36, 11, !dbg !4299
  br i1 %37, label %38, label %43, !dbg !4300

38:                                               ; preds = %34
  %39 = call i32* @__errno_location() #13, !dbg !4301
  %40 = load i32, i32* %39, align 4, !dbg !4301
  %41 = icmp ne i32 %40, 11, !dbg !4302
  br i1 %41, label %42, label %43, !dbg !4303

42:                                               ; preds = %38, %28
  store i64 -2147483631, i64* %5, align 8, !dbg !4304
  br label %59, !dbg !4304

43:                                               ; preds = %38, %34, %31
  br label %44

44:                                               ; preds = %43, %21
  br label %45, !dbg !4306

45:                                               ; preds = %44
  %46 = load i64, i64* %11, align 8, !dbg !4307
  %47 = icmp sgt i64 %46, 0, !dbg !4308
  br i1 %47, label %48, label %51, !dbg !4309

48:                                               ; preds = %45
  %49 = load i64, i64* %8, align 8, !dbg !4310
  %50 = icmp ugt i64 %49, 0, !dbg !4311
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ], !dbg !4312
  br i1 %52, label %13, label %53, !dbg !4306, !llvm.loop !4313

53:                                               ; preds = %51
  %54 = load i8*, i8** %7, align 8, !dbg !4315
  %55 = load i8*, i8** %10, align 8, !dbg !4316
  %56 = ptrtoint i8* %54 to i64, !dbg !4317
  %57 = ptrtoint i8* %55 to i64, !dbg !4317
  %58 = sub i64 %56, %57, !dbg !4317
  store i64 %58, i64* %5, align 8, !dbg !4318
  br label %59, !dbg !4318

59:                                               ; preds = %53, %42
  %60 = load i64, i64* %5, align 8, !dbg !4319
  ret i64 %60, !dbg !4319
}

declare dso_local i64 @recv(i32, i8*, i64, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!148, !2, !260}
!llvm.ident = !{!264, !264, !264}
!llvm.module.flags = !{!265, !266, !267}

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
!149 = !DIFile(filename: "/home/ryan/git/MQTT-C/examples/simple_publisher.c", directory: "/home/ryan/git/MQTT-C/build")
!150 = !{!151, !5, !39, !45, !83, !61}
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
!163 = !{!95, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_client", file: !6, line: 1093, size: 1664, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !195, !196, !200, !204, !205, !212, !243}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "socketfd", scope: !165, file: !6, line: 1095, baseType: !123, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pid_lfsr", scope: !165, file: !6, line: 1098, baseType: !120, size: 16, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !165, file: !6, line: 1101, baseType: !120, size: 16, offset: 48)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_keep_alives", scope: !165, file: !6, line: 1107, baseType: !7, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "send_offset", scope: !165, file: !6, line: 1114, baseType: !107, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "time_of_last_send", scope: !165, file: !6, line: 1123, baseType: !112, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !165, file: !6, line: 1133, baseType: !5, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "response_timeout", scope: !165, file: !6, line: 1143, baseType: !7, size: 32, offset: 288)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_timeouts", scope: !165, file: !6, line: 1146, baseType: !7, size: 32, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "typical_response_time", scope: !165, file: !6, line: 1154, baseType: !128, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "publish_response_callback", scope: !165, file: !6, line: 1167, baseType: !178, size: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !181, !182}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_publish", file: !6, line: 341, size: 320, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !192, !193, !194}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dup_flag", scope: !183, file: !6, line: 346, baseType: !101, size: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "qos_level", scope: !183, file: !6, line: 355, baseType: !101, size: 8, offset: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "retain_flag", scope: !183, file: !6, line: 358, baseType: !101, size: 8, offset: 16)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "topic_name_size", scope: !183, file: !6, line: 361, baseType: !120, size: 16, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "topic_name", scope: !183, file: !6, line: 368, baseType: !190, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !183, file: !6, line: 371, baseType: !120, size: 16, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "application_message", scope: !183, file: !6, line: 374, baseType: !190, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "application_message_size", scope: !183, file: !6, line: 377, baseType: !107, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "publish_response_callback_state", scope: !165, file: !6, line: 1175, baseType: !95, size: 64, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "inspector_callback", scope: !165, file: !6, line: 1192, baseType: !197, size: 64, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!5, !164}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_callback", scope: !165, file: !6, line: 1201, baseType: !201, size: 64, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !164, !181}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_state", scope: !165, file: !6, line: 1207, baseType: !95, size: 64, offset: 704)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer", scope: !165, file: !6, line: 1224, baseType: !206, size: 256, offset: 768)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !165, file: !6, line: 1212, size: 256, elements: !207)
!207 = !{!208, !209, !210, !211}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !206, file: !6, line: 1214, baseType: !100, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mem_size", scope: !206, file: !6, line: 1217, baseType: !107, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !206, file: !6, line: 1220, baseType: !100, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "curr_sz", scope: !206, file: !6, line: 1223, baseType: !107, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !165, file: !6, line: 1232, baseType: !213, size: 320, offset: 1024)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "mqtt_pal_mutex_t", file: !113, line: 86, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !215, line: 72, baseType: !216)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "")
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !215, line: 67, size: 320, elements: !217)
!217 = !{!218, !238, !242}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !216, file: !215, line: 69, baseType: !219, size: 320)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !220, line: 22, size: 320, elements: !221)
!220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "")
!221 = !{!222, !223, !224, !225, !226, !227, !229, !230}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !219, file: !220, line: 24, baseType: !7, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !219, file: !220, line: 25, baseType: !40, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !219, file: !220, line: 26, baseType: !7, size: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !219, file: !220, line: 28, baseType: !40, size: 32, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !219, file: !220, line: 32, baseType: !7, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !219, file: !220, line: 34, baseType: !228, size: 16, offset: 160)
!228 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !219, file: !220, line: 35, baseType: !228, size: 16, offset: 176)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !219, file: !220, line: 36, baseType: !231, size: 128, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !232, line: 53, baseType: !233)
!232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !232, line: 49, size: 128, elements: !234)
!234 = !{!235, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !233, file: !232, line: 51, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !233, file: !232, line: 52, baseType: !236, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !216, file: !215, line: 70, baseType: !239, size: 320)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 320, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 40)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !216, file: !215, line: 71, baseType: !117, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mq", scope: !165, file: !6, line: 1235, baseType: !244, size: 320, offset: 1344)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_message_queue", file: !6, line: 969, size: 320, elements: !245)
!245 = !{!246, !247, !248, !249, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !244, file: !6, line: 975, baseType: !95, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !244, file: !6, line: 978, baseType: !95, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !244, file: !6, line: 986, baseType: !100, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "curr_sz", scope: !244, file: !6, line: 996, baseType: !107, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "queue_tail", scope: !244, file: !6, line: 1003, baseType: !251, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_queued_message", file: !6, line: 929, size: 320, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !252, file: !6, line: 931, baseType: !100, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !252, file: !6, line: 934, baseType: !107, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !252, file: !6, line: 938, baseType: !39, size: 32, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "time_sent", scope: !252, file: !6, line: 946, baseType: !112, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "control_type", scope: !252, file: !6, line: 951, baseType: !45, size: 32, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !252, file: !6, line: 959, baseType: !120, size: 16, offset: 288)
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 12.0.0-3ubuntu1~21.04.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !262, retainedTypes: !263, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "/home/ryan/git/MQTT-C/src/mqtt_pal.c", directory: "/home/ryan/git/MQTT-C/build")
!262 = !{!5}
!263 = !{!107}
!264 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~21.04.1"}
!265 = !{i32 7, !"Dwarf Version", i32 4}
!266 = !{i32 2, !"Debug Info Version", i32 3}
!267 = !{i32 1, !"wchar_size", i32 4}
!268 = distinct !DISubprogram(name: "open_nb_socket", scope: !269, file: !269, line: 18, type: !270, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !148, retainedNodes: !272)
!269 = !DIFile(filename: "examples/templates/posix_sockets.h", directory: "/home/ryan/git/MQTT-C")
!270 = !DISubroutineType(types: !271)
!271 = !{!7, !124, !124}
!272 = !{}
!273 = !DILocalVariable(name: "addr", arg: 1, scope: !268, file: !269, line: 18, type: !124)
!274 = !DILocation(line: 18, column: 32, scope: !268)
!275 = !DILocalVariable(name: "port", arg: 2, scope: !268, file: !269, line: 18, type: !124)
!276 = !DILocation(line: 18, column: 50, scope: !268)
!277 = !DILocalVariable(name: "hints", scope: !268, file: !269, line: 19, type: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !279, line: 565, size: 384, elements: !280)
!279 = !DIFile(filename: "/usr/include/netdb.h", directory: "")
!280 = !{!281, !282, !283, !284, !285, !289, !301, !303}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !278, file: !279, line: 567, baseType: !7, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !278, file: !279, line: 568, baseType: !7, size: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !278, file: !279, line: 569, baseType: !7, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !278, file: !279, line: 570, baseType: !7, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !278, file: !279, line: 571, baseType: !286, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !287, line: 274, baseType: !288)
!287 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !104, line: 210, baseType: !40)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !278, file: !279, line: 572, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !292, line: 178, size: 128, elements: !293)
!292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "")
!293 = !{!294, !297}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !291, file: !292, line: 180, baseType: !295, size: 16)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !296, line: 28, baseType: !122)
!296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "")
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !291, file: !292, line: 181, baseType: !298, size: 112, offset: 16)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 112, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 14)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !278, file: !279, line: 573, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !278, file: !279, line: 574, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!305 = !DILocation(line: 19, column: 21, scope: !268)
!306 = !DILocation(line: 21, column: 11, scope: !268)
!307 = !DILocation(line: 21, column: 21, scope: !268)
!308 = !DILocation(line: 22, column: 11, scope: !268)
!309 = !DILocation(line: 22, column: 23, scope: !268)
!310 = !DILocalVariable(name: "sockfd", scope: !268, file: !269, line: 23, type: !7)
!311 = !DILocation(line: 23, column: 9, scope: !268)
!312 = !DILocalVariable(name: "rv", scope: !268, file: !269, line: 24, type: !7)
!313 = !DILocation(line: 24, column: 9, scope: !268)
!314 = !DILocalVariable(name: "p", scope: !268, file: !269, line: 25, type: !304)
!315 = !DILocation(line: 25, column: 22, scope: !268)
!316 = !DILocalVariable(name: "servinfo", scope: !268, file: !269, line: 25, type: !304)
!317 = !DILocation(line: 25, column: 26, scope: !268)
!318 = !DILocation(line: 28, column: 22, scope: !268)
!319 = !DILocation(line: 28, column: 28, scope: !268)
!320 = !DILocation(line: 28, column: 10, scope: !268)
!321 = !DILocation(line: 28, column: 8, scope: !268)
!322 = !DILocation(line: 29, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !268, file: !269, line: 29, column: 8)
!324 = !DILocation(line: 29, column: 11, scope: !323)
!325 = !DILocation(line: 29, column: 8, scope: !268)
!326 = !DILocation(line: 30, column: 17, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !269, line: 29, column: 17)
!328 = !DILocation(line: 30, column: 83, scope: !327)
!329 = !DILocation(line: 30, column: 70, scope: !327)
!330 = !DILocation(line: 30, column: 9, scope: !327)
!331 = !DILocation(line: 31, column: 9, scope: !327)
!332 = !DILocation(line: 35, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !268, file: !269, line: 35, column: 5)
!334 = !DILocation(line: 35, column: 11, scope: !333)
!335 = !DILocation(line: 35, column: 9, scope: !333)
!336 = !DILocation(line: 35, column: 23, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !269, line: 35, column: 5)
!338 = !DILocation(line: 35, column: 25, scope: !337)
!339 = !DILocation(line: 35, column: 5, scope: !333)
!340 = !DILocation(line: 36, column: 25, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !269, line: 35, column: 50)
!342 = !DILocation(line: 36, column: 28, scope: !341)
!343 = !DILocation(line: 36, column: 39, scope: !341)
!344 = !DILocation(line: 36, column: 42, scope: !341)
!345 = !DILocation(line: 36, column: 55, scope: !341)
!346 = !DILocation(line: 36, column: 58, scope: !341)
!347 = !DILocation(line: 36, column: 18, scope: !341)
!348 = !DILocation(line: 36, column: 16, scope: !341)
!349 = !DILocation(line: 37, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !341, file: !269, line: 37, column: 13)
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
!362 = distinct !DILexicalBlock(scope: !341, file: !269, line: 41, column: 12)
!363 = !DILocation(line: 41, column: 15, scope: !362)
!364 = !DILocation(line: 41, column: 12, scope: !341)
!365 = !DILocation(line: 42, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !269, line: 41, column: 22)
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
!378 = !DILocation(line: 50, column: 18, scope: !268)
!379 = !DILocation(line: 50, column: 5, scope: !268)
!380 = !DILocation(line: 54, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !268, file: !269, line: 54, column: 9)
!382 = !DILocation(line: 54, column: 16, scope: !381)
!383 = !DILocation(line: 54, column: 9, scope: !268)
!384 = !DILocation(line: 54, column: 29, scope: !381)
!385 = !DILocation(line: 54, column: 52, scope: !381)
!386 = !DILocation(line: 54, column: 46, scope: !381)
!387 = !DILocation(line: 54, column: 69, scope: !381)
!388 = !DILocation(line: 54, column: 23, scope: !381)
!389 = !DILocation(line: 72, column: 12, scope: !268)
!390 = !DILocation(line: 72, column: 5, scope: !268)
!391 = !DILocation(line: 73, column: 1, scope: !268)
!392 = distinct !DISubprogram(name: "main", scope: !393, file: !393, line: 39, type: !394, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !148, retainedNodes: !272)
!393 = !DIFile(filename: "examples/simple_publisher.c", directory: "/home/ryan/git/MQTT-C")
!394 = !DISubroutineType(types: !395)
!395 = !{!7, !7, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!397 = !DILocalVariable(name: "argc", arg: 1, scope: !392, file: !393, line: 39, type: !7)
!398 = !DILocation(line: 39, column: 14, scope: !392)
!399 = !DILocalVariable(name: "argv", arg: 2, scope: !392, file: !393, line: 39, type: !396)
!400 = !DILocation(line: 39, column: 32, scope: !392)
!401 = !DILocalVariable(name: "addr", scope: !392, file: !393, line: 41, type: !124)
!402 = !DILocation(line: 41, column: 17, scope: !392)
!403 = !DILocalVariable(name: "port", scope: !392, file: !393, line: 42, type: !124)
!404 = !DILocation(line: 42, column: 17, scope: !392)
!405 = !DILocalVariable(name: "topic", scope: !392, file: !393, line: 43, type: !124)
!406 = !DILocation(line: 43, column: 17, scope: !392)
!407 = !DILocation(line: 46, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !392, file: !393, line: 46, column: 9)
!409 = !DILocation(line: 46, column: 14, scope: !408)
!410 = !DILocation(line: 46, column: 9, scope: !392)
!411 = !DILocation(line: 47, column: 16, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !393, line: 46, column: 19)
!413 = !DILocation(line: 47, column: 14, scope: !412)
!414 = !DILocation(line: 48, column: 5, scope: !412)
!415 = !DILocation(line: 49, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !408, file: !393, line: 48, column: 12)
!417 = !DILocation(line: 53, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !392, file: !393, line: 53, column: 9)
!419 = !DILocation(line: 53, column: 14, scope: !418)
!420 = !DILocation(line: 53, column: 9, scope: !392)
!421 = !DILocation(line: 54, column: 16, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !393, line: 53, column: 19)
!423 = !DILocation(line: 54, column: 14, scope: !422)
!424 = !DILocation(line: 55, column: 5, scope: !422)
!425 = !DILocation(line: 56, column: 14, scope: !426)
!426 = distinct !DILexicalBlock(scope: !418, file: !393, line: 55, column: 12)
!427 = !DILocation(line: 60, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !392, file: !393, line: 60, column: 9)
!429 = !DILocation(line: 60, column: 14, scope: !428)
!430 = !DILocation(line: 60, column: 9, scope: !392)
!431 = !DILocation(line: 61, column: 17, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !393, line: 60, column: 19)
!433 = !DILocation(line: 61, column: 15, scope: !432)
!434 = !DILocation(line: 62, column: 5, scope: !432)
!435 = !DILocation(line: 63, column: 15, scope: !436)
!436 = distinct !DILexicalBlock(scope: !428, file: !393, line: 62, column: 12)
!437 = !DILocalVariable(name: "sockfd", scope: !392, file: !393, line: 67, type: !7)
!438 = !DILocation(line: 67, column: 9, scope: !392)
!439 = !DILocation(line: 67, column: 33, scope: !392)
!440 = !DILocation(line: 67, column: 39, scope: !392)
!441 = !DILocation(line: 67, column: 18, scope: !392)
!442 = !DILocation(line: 69, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !392, file: !393, line: 69, column: 9)
!444 = !DILocation(line: 69, column: 16, scope: !443)
!445 = !DILocation(line: 69, column: 9, scope: !392)
!446 = !DILocation(line: 70, column: 9, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !393, line: 69, column: 23)
!448 = !DILocation(line: 71, column: 36, scope: !447)
!449 = !DILocation(line: 71, column: 9, scope: !447)
!450 = !DILocation(line: 72, column: 5, scope: !447)
!451 = !DILocalVariable(name: "client", scope: !392, file: !393, line: 75, type: !165)
!452 = !DILocation(line: 75, column: 24, scope: !392)
!453 = !DILocalVariable(name: "sendbuf", scope: !392, file: !393, line: 76, type: !454)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 16384, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 2048)
!457 = !DILocation(line: 76, column: 13, scope: !392)
!458 = !DILocalVariable(name: "recvbuf", scope: !392, file: !393, line: 77, type: !459)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 8192, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 1024)
!462 = !DILocation(line: 77, column: 13, scope: !392)
!463 = !DILocation(line: 78, column: 24, scope: !392)
!464 = !DILocation(line: 78, column: 32, scope: !392)
!465 = !DILocation(line: 78, column: 58, scope: !392)
!466 = !DILocation(line: 78, column: 5, scope: !392)
!467 = !DILocalVariable(name: "client_id", scope: !392, file: !393, line: 80, type: !124)
!468 = !DILocation(line: 80, column: 17, scope: !392)
!469 = !DILocalVariable(name: "connect_flags", scope: !392, file: !393, line: 82, type: !101)
!470 = !DILocation(line: 82, column: 13, scope: !392)
!471 = !DILocation(line: 84, column: 27, scope: !392)
!472 = !DILocation(line: 84, column: 65, scope: !392)
!473 = !DILocation(line: 84, column: 5, scope: !392)
!474 = !DILocation(line: 87, column: 16, scope: !475)
!475 = distinct !DILexicalBlock(scope: !392, file: !393, line: 87, column: 9)
!476 = !DILocation(line: 87, column: 22, scope: !475)
!477 = !DILocation(line: 87, column: 9, scope: !392)
!478 = !DILocation(line: 88, column: 17, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !393, line: 87, column: 34)
!480 = !DILocation(line: 88, column: 62, scope: !479)
!481 = !DILocation(line: 88, column: 40, scope: !479)
!482 = !DILocation(line: 88, column: 9, scope: !479)
!483 = !DILocation(line: 89, column: 36, scope: !479)
!484 = !DILocation(line: 89, column: 9, scope: !479)
!485 = !DILocation(line: 90, column: 5, scope: !479)
!486 = !DILocalVariable(name: "client_daemon", scope: !392, file: !393, line: 93, type: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !215, line: 27, baseType: !109)
!488 = !DILocation(line: 93, column: 15, scope: !392)
!489 = !DILocation(line: 94, column: 63, scope: !490)
!490 = distinct !DILexicalBlock(scope: !392, file: !393, line: 94, column: 8)
!491 = !DILocation(line: 94, column: 8, scope: !490)
!492 = !DILocation(line: 94, column: 8, scope: !392)
!493 = !DILocation(line: 95, column: 17, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !393, line: 94, column: 73)
!495 = !DILocation(line: 95, column: 9, scope: !494)
!496 = !DILocation(line: 96, column: 36, scope: !494)
!497 = !DILocation(line: 96, column: 9, scope: !494)
!498 = !DILocation(line: 98, column: 5, scope: !494)
!499 = !DILocation(line: 101, column: 59, scope: !392)
!500 = !DILocation(line: 101, column: 5, scope: !392)
!501 = !DILocation(line: 102, column: 5, scope: !392)
!502 = !DILocation(line: 103, column: 5, scope: !392)
!503 = !DILocation(line: 104, column: 5, scope: !392)
!504 = !DILocation(line: 104, column: 17, scope: !392)
!505 = !DILocation(line: 104, column: 11, scope: !392)
!506 = !DILocation(line: 104, column: 24, scope: !392)
!507 = !DILocalVariable(name: "timer", scope: !508, file: !393, line: 106, type: !114)
!508 = distinct !DILexicalBlock(scope: !392, file: !393, line: 104, column: 33)
!509 = !DILocation(line: 106, column: 16, scope: !508)
!510 = !DILocation(line: 107, column: 9, scope: !508)
!511 = !DILocalVariable(name: "tm_info", scope: !508, file: !393, line: 108, type: !512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !514, line: 7, size: 448, elements: !515)
!514 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "")
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !513, file: !514, line: 9, baseType: !7, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !513, file: !514, line: 10, baseType: !7, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !513, file: !514, line: 11, baseType: !7, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !513, file: !514, line: 12, baseType: !7, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !513, file: !514, line: 13, baseType: !7, size: 32, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !513, file: !514, line: 14, baseType: !7, size: 32, offset: 160)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !513, file: !514, line: 15, baseType: !7, size: 32, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !513, file: !514, line: 16, baseType: !7, size: 32, offset: 224)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !513, file: !514, line: 17, baseType: !7, size: 32, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !513, file: !514, line: 20, baseType: !117, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !513, file: !514, line: 21, baseType: !124, size: 64, offset: 384)
!527 = !DILocation(line: 108, column: 20, scope: !508)
!528 = !DILocation(line: 108, column: 30, scope: !508)
!529 = !DILocalVariable(name: "timebuf", scope: !508, file: !393, line: 109, type: !530)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 208, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 26)
!533 = !DILocation(line: 109, column: 14, scope: !508)
!534 = !DILocation(line: 110, column: 18, scope: !508)
!535 = !DILocation(line: 110, column: 52, scope: !508)
!536 = !DILocation(line: 110, column: 9, scope: !508)
!537 = !DILocalVariable(name: "application_message", scope: !508, file: !393, line: 113, type: !538)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 256)
!541 = !DILocation(line: 113, column: 14, scope: !508)
!542 = !DILocation(line: 114, column: 18, scope: !508)
!543 = !DILocation(line: 114, column: 86, scope: !508)
!544 = !DILocation(line: 114, column: 9, scope: !508)
!545 = !DILocation(line: 115, column: 41, scope: !508)
!546 = !DILocation(line: 115, column: 50, scope: !508)
!547 = !DILocation(line: 115, column: 9, scope: !508)
!548 = !DILocation(line: 118, column: 31, scope: !508)
!549 = !DILocation(line: 118, column: 38, scope: !508)
!550 = !DILocation(line: 118, column: 66, scope: !508)
!551 = !DILocation(line: 118, column: 59, scope: !508)
!552 = !DILocation(line: 118, column: 87, scope: !508)
!553 = !DILocation(line: 118, column: 9, scope: !508)
!554 = !DILocation(line: 121, column: 20, scope: !555)
!555 = distinct !DILexicalBlock(scope: !508, file: !393, line: 121, column: 13)
!556 = !DILocation(line: 121, column: 26, scope: !555)
!557 = !DILocation(line: 121, column: 13, scope: !508)
!558 = !DILocation(line: 122, column: 21, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !393, line: 121, column: 38)
!560 = !DILocation(line: 122, column: 66, scope: !559)
!561 = !DILocation(line: 122, column: 44, scope: !559)
!562 = !DILocation(line: 122, column: 13, scope: !559)
!563 = !DILocation(line: 123, column: 40, scope: !559)
!564 = !DILocation(line: 123, column: 13, scope: !559)
!565 = !DILocation(line: 124, column: 9, scope: !559)
!566 = distinct !{!566, !503, !567, !377}
!567 = !DILocation(line: 125, column: 5, scope: !392)
!568 = !DILocation(line: 128, column: 44, scope: !392)
!569 = !DILocation(line: 128, column: 53, scope: !392)
!570 = !DILocation(line: 128, column: 5, scope: !392)
!571 = !DILocation(line: 129, column: 5, scope: !392)
!572 = !DILocation(line: 132, column: 32, scope: !392)
!573 = !DILocation(line: 132, column: 5, scope: !392)
!574 = !DILocation(line: 133, column: 1, scope: !392)
!575 = distinct !DISubprogram(name: "exit_example", scope: !393, file: !393, line: 135, type: !576, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !148, retainedNodes: !272)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !7, !7, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!579 = !DILocalVariable(name: "status", arg: 1, scope: !575, file: !393, line: 135, type: !7)
!580 = !DILocation(line: 135, column: 23, scope: !575)
!581 = !DILocalVariable(name: "sockfd", arg: 2, scope: !575, file: !393, line: 135, type: !7)
!582 = !DILocation(line: 135, column: 35, scope: !575)
!583 = !DILocalVariable(name: "client_daemon", arg: 3, scope: !575, file: !393, line: 135, type: !578)
!584 = !DILocation(line: 135, column: 54, scope: !575)
!585 = !DILocation(line: 137, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !575, file: !393, line: 137, column: 9)
!587 = !DILocation(line: 137, column: 16, scope: !586)
!588 = !DILocation(line: 137, column: 9, scope: !575)
!589 = !DILocation(line: 137, column: 29, scope: !586)
!590 = !DILocation(line: 137, column: 23, scope: !586)
!591 = !DILocation(line: 138, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !575, file: !393, line: 138, column: 9)
!593 = !DILocation(line: 138, column: 23, scope: !592)
!594 = !DILocation(line: 138, column: 9, scope: !575)
!595 = !DILocation(line: 138, column: 48, scope: !592)
!596 = !DILocation(line: 138, column: 47, scope: !592)
!597 = !DILocation(line: 138, column: 32, scope: !592)
!598 = !DILocation(line: 139, column: 10, scope: !575)
!599 = !DILocation(line: 139, column: 5, scope: !575)
!600 = distinct !DISubprogram(name: "publish_callback", scope: !393, file: !393, line: 144, type: !179, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !148, retainedNodes: !272)
!601 = !DILocalVariable(name: "unused", arg: 1, scope: !600, file: !393, line: 144, type: !181)
!602 = !DILocation(line: 144, column: 30, scope: !600)
!603 = !DILocalVariable(name: "published", arg: 2, scope: !600, file: !393, line: 144, type: !182)
!604 = !DILocation(line: 144, column: 68, scope: !600)
!605 = !DILocation(line: 147, column: 1, scope: !600)
!606 = distinct !DISubprogram(name: "client_refresher", scope: !393, file: !393, line: 149, type: !607, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !148, retainedNodes: !272)
!607 = !DISubroutineType(types: !608)
!608 = !{!95, !95}
!609 = !DILocalVariable(name: "client", arg: 1, scope: !606, file: !393, line: 149, type: !95)
!610 = !DILocation(line: 149, column: 30, scope: !606)
!611 = !DILocation(line: 151, column: 5, scope: !606)
!612 = !DILocation(line: 153, column: 41, scope: !613)
!613 = distinct !DILexicalBlock(scope: !606, file: !393, line: 152, column: 5)
!614 = !DILocation(line: 153, column: 19, scope: !613)
!615 = !DILocation(line: 153, column: 9, scope: !613)
!616 = !DILocation(line: 154, column: 9, scope: !613)
!617 = distinct !{!617, !611, !618}
!618 = !DILocation(line: 155, column: 5, scope: !606)
!619 = distinct !DISubprogram(name: "mqtt_sync", scope: !135, file: !135, line: 35, type: !620, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!620 = !DISubroutineType(types: !621)
!621 = !{!5, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_client", file: !6, line: 1093, size: 1664, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !650, !651, !653, !657, !658, !665, !689}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "socketfd", scope: !623, file: !6, line: 1095, baseType: !123, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pid_lfsr", scope: !623, file: !6, line: 1098, baseType: !120, size: 16, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !623, file: !6, line: 1101, baseType: !120, size: 16, offset: 48)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_keep_alives", scope: !623, file: !6, line: 1107, baseType: !7, size: 32, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "send_offset", scope: !623, file: !6, line: 1114, baseType: !107, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "time_of_last_send", scope: !623, file: !6, line: 1123, baseType: !112, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !623, file: !6, line: 1133, baseType: !5, size: 32, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "response_timeout", scope: !623, file: !6, line: 1143, baseType: !7, size: 32, offset: 288)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_timeouts", scope: !623, file: !6, line: 1146, baseType: !7, size: 32, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "typical_response_time", scope: !623, file: !6, line: 1154, baseType: !128, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "publish_response_callback", scope: !623, file: !6, line: 1167, baseType: !636, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !181, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_publish", file: !6, line: 341, size: 320, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dup_flag", scope: !640, file: !6, line: 346, baseType: !101, size: 8)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "qos_level", scope: !640, file: !6, line: 355, baseType: !101, size: 8, offset: 8)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "retain_flag", scope: !640, file: !6, line: 358, baseType: !101, size: 8, offset: 16)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "topic_name_size", scope: !640, file: !6, line: 361, baseType: !120, size: 16, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "topic_name", scope: !640, file: !6, line: 368, baseType: !190, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !640, file: !6, line: 371, baseType: !120, size: 16, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "application_message", scope: !640, file: !6, line: 374, baseType: !190, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "application_message_size", scope: !640, file: !6, line: 377, baseType: !107, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "publish_response_callback_state", scope: !623, file: !6, line: 1175, baseType: !95, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "inspector_callback", scope: !623, file: !6, line: 1192, baseType: !652, size: 64, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_callback", scope: !623, file: !6, line: 1201, baseType: !654, size: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !622, !181}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_state", scope: !623, file: !6, line: 1207, baseType: !95, size: 64, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer", scope: !623, file: !6, line: 1224, baseType: !659, size: 256, offset: 768)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !623, file: !6, line: 1212, size: 256, elements: !660)
!660 = !{!661, !662, !663, !664}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !659, file: !6, line: 1214, baseType: !100, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mem_size", scope: !659, file: !6, line: 1217, baseType: !107, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !659, file: !6, line: 1220, baseType: !100, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "curr_sz", scope: !659, file: !6, line: 1223, baseType: !107, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !623, file: !6, line: 1232, baseType: !666, size: 320, offset: 1024)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mqtt_pal_mutex_t", file: !113, line: 86, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !215, line: 72, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !215, line: 67, size: 320, elements: !669)
!669 = !{!670, !687, !688}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !668, file: !215, line: 69, baseType: !671, size: 320)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !220, line: 22, size: 320, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !671, file: !220, line: 24, baseType: !7, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !671, file: !220, line: 25, baseType: !40, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !671, file: !220, line: 26, baseType: !7, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !671, file: !220, line: 28, baseType: !40, size: 32, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !671, file: !220, line: 32, baseType: !7, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !671, file: !220, line: 34, baseType: !228, size: 16, offset: 160)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !671, file: !220, line: 35, baseType: !228, size: 16, offset: 176)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !671, file: !220, line: 36, baseType: !681, size: 128, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !232, line: 53, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !232, line: 49, size: 128, elements: !683)
!683 = !{!684, !686}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !682, file: !232, line: 51, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !682, file: !232, line: 52, baseType: !685, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !668, file: !215, line: 70, baseType: !239, size: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !668, file: !215, line: 71, baseType: !117, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mq", scope: !623, file: !6, line: 1235, baseType: !690, size: 320, offset: 1344)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_message_queue", file: !6, line: 969, size: 320, elements: !691)
!691 = !{!692, !693, !694, !695, !696}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !690, file: !6, line: 975, baseType: !95, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !690, file: !6, line: 978, baseType: !95, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !690, file: !6, line: 986, baseType: !100, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "curr_sz", scope: !690, file: !6, line: 996, baseType: !107, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "queue_tail", scope: !690, file: !6, line: 1003, baseType: !96, size: 64, offset: 256)
!697 = !DILocalVariable(name: "client", arg: 1, scope: !619, file: !135, line: 35, type: !622)
!698 = !DILocation(line: 35, column: 47, scope: !619)
!699 = !DILocalVariable(name: "err", scope: !619, file: !135, line: 37, type: !5)
!700 = !DILocation(line: 37, column: 21, scope: !619)
!701 = !DILocalVariable(name: "reconnecting", scope: !619, file: !135, line: 38, type: !7)
!702 = !DILocation(line: 38, column: 9, scope: !619)
!703 = !DILocation(line: 39, column: 5, scope: !619)
!704 = !DILocation(line: 40, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !619, file: !135, line: 40, column: 9)
!706 = !DILocation(line: 40, column: 17, scope: !705)
!707 = !DILocation(line: 40, column: 23, scope: !705)
!708 = !DILocation(line: 40, column: 50, scope: !705)
!709 = !DILocation(line: 40, column: 53, scope: !705)
!710 = !DILocation(line: 40, column: 61, scope: !705)
!711 = !DILocation(line: 40, column: 67, scope: !705)
!712 = !DILocation(line: 40, column: 78, scope: !705)
!713 = !DILocation(line: 40, column: 81, scope: !705)
!714 = !DILocation(line: 40, column: 89, scope: !705)
!715 = !DILocation(line: 40, column: 108, scope: !705)
!716 = !DILocation(line: 40, column: 9, scope: !619)
!717 = !DILocation(line: 41, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !705, file: !135, line: 40, column: 117)
!719 = !DILocation(line: 41, column: 17, scope: !718)
!720 = !DILocation(line: 41, column: 36, scope: !718)
!721 = !DILocation(line: 41, column: 45, scope: !718)
!722 = !DILocation(line: 41, column: 53, scope: !718)
!723 = !DILocation(line: 43, column: 5, scope: !718)
!724 = !DILocation(line: 45, column: 13, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !135, line: 45, column: 13)
!726 = distinct !DILexicalBlock(scope: !705, file: !135, line: 43, column: 12)
!727 = !DILocation(line: 45, column: 21, scope: !725)
!728 = !DILocation(line: 45, column: 27, scope: !725)
!729 = !DILocation(line: 45, column: 13, scope: !726)
!730 = !DILocation(line: 46, column: 26, scope: !731)
!731 = distinct !DILexicalBlock(scope: !725, file: !135, line: 45, column: 55)
!732 = !DILocation(line: 47, column: 13, scope: !731)
!733 = !DILocation(line: 47, column: 21, scope: !731)
!734 = !DILocation(line: 47, column: 27, scope: !731)
!735 = !DILocation(line: 48, column: 9, scope: !731)
!736 = !DILocation(line: 49, column: 9, scope: !726)
!737 = !DILocation(line: 54, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !619, file: !135, line: 54, column: 9)
!739 = !DILocation(line: 54, column: 17, scope: !738)
!740 = !DILocation(line: 54, column: 36, scope: !738)
!741 = !DILocation(line: 54, column: 9, scope: !619)
!742 = !DILocation(line: 55, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !135, line: 54, column: 45)
!744 = !DILocation(line: 56, column: 15, scope: !743)
!745 = !DILocation(line: 56, column: 23, scope: !743)
!746 = !DILocation(line: 56, column: 42, scope: !743)
!747 = !DILocation(line: 56, column: 13, scope: !743)
!748 = !DILocation(line: 57, column: 9, scope: !743)
!749 = !DILocation(line: 58, column: 13, scope: !750)
!750 = distinct !DILexicalBlock(scope: !743, file: !135, line: 58, column: 13)
!751 = !DILocation(line: 58, column: 17, scope: !750)
!752 = !DILocation(line: 58, column: 13, scope: !743)
!753 = !DILocation(line: 58, column: 36, scope: !750)
!754 = !DILocation(line: 58, column: 29, scope: !750)
!755 = !DILocation(line: 59, column: 5, scope: !743)
!756 = !DILocation(line: 62, column: 23, scope: !619)
!757 = !DILocation(line: 62, column: 11, scope: !619)
!758 = !DILocation(line: 62, column: 9, scope: !619)
!759 = !DILocation(line: 63, column: 9, scope: !760)
!760 = distinct !DILexicalBlock(scope: !619, file: !135, line: 63, column: 9)
!761 = !DILocation(line: 63, column: 13, scope: !760)
!762 = !DILocation(line: 63, column: 9, scope: !619)
!763 = !DILocation(line: 63, column: 32, scope: !760)
!764 = !DILocation(line: 63, column: 25, scope: !760)
!765 = !DILocation(line: 66, column: 23, scope: !619)
!766 = !DILocation(line: 66, column: 11, scope: !619)
!767 = !DILocation(line: 66, column: 9, scope: !619)
!768 = !DILocation(line: 69, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !619, file: !135, line: 69, column: 9)
!770 = !DILocation(line: 69, column: 22, scope: !769)
!771 = !DILocation(line: 69, column: 25, scope: !769)
!772 = !DILocation(line: 69, column: 33, scope: !769)
!773 = !DILocation(line: 69, column: 52, scope: !769)
!774 = !DILocation(line: 69, column: 9, scope: !619)
!775 = !DILocation(line: 70, column: 9, scope: !776)
!776 = distinct !DILexicalBlock(scope: !769, file: !135, line: 69, column: 61)
!777 = !DILocation(line: 71, column: 9, scope: !776)
!778 = !DILocation(line: 71, column: 17, scope: !776)
!779 = !DILocation(line: 71, column: 36, scope: !776)
!780 = !DILocation(line: 71, column: 45, scope: !776)
!781 = !DILocation(line: 71, column: 53, scope: !776)
!782 = !DILocation(line: 72, column: 5, scope: !776)
!783 = !DILocation(line: 74, column: 12, scope: !619)
!784 = !DILocation(line: 74, column: 5, scope: !619)
!785 = !DILocation(line: 75, column: 1, scope: !619)
!786 = distinct !DISubprogram(name: "__mqtt_recv", scope: !135, file: !135, line: 640, type: !787, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!787 = !DISubroutineType(types: !788)
!788 = !{!789, !622}
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !790, line: 108, baseType: !791)
!790 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !104, line: 194, baseType: !117)
!792 = !DILocalVariable(name: "client", arg: 1, scope: !786, file: !135, line: 640, type: !622)
!793 = !DILocation(line: 640, column: 41, scope: !786)
!794 = !DILocalVariable(name: "response", scope: !786, file: !135, line: 642, type: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response", file: !6, line: 505, size: 448, elements: !796)
!796 = !{!797, !803}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_header", scope: !795, file: !6, line: 507, baseType: !798, size: 96)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_fixed_header", file: !6, line: 156, size: 96, elements: !799)
!799 = !{!800, !801, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "control_type", scope: !798, file: !6, line: 158, baseType: !45, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "control_flags", scope: !798, file: !6, line: 161, baseType: !130, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_length", scope: !798, file: !6, line: 164, baseType: !130, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "decoded", scope: !795, file: !6, line: 527, baseType: !804, size: 320, offset: 128)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !6, line: 517, size: 320, elements: !805)
!805 = !{!806, !811, !812, !816, !820, !824, !828, !835, !839}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "connack", scope: !804, file: !6, line: 518, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_connack", file: !6, line: 315, size: 64, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "session_present_flag", scope: !807, file: !6, line: 320, baseType: !101, size: 8)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "return_code", scope: !807, file: !6, line: 327, baseType: !69, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "publish", scope: !804, file: !6, line: 519, baseType: !640, size: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "puback", scope: !804, file: !6, line: 520, baseType: !813, size: 16)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_puback", file: !6, line: 389, size: 16, elements: !814)
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !813, file: !6, line: 391, baseType: !120, size: 16)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pubrec", scope: !804, file: !6, line: 521, baseType: !817, size: 16)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_pubrec", file: !6, line: 403, size: 16, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !817, file: !6, line: 405, baseType: !120, size: 16)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "pubrel", scope: !804, file: !6, line: 522, baseType: !821, size: 16)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_pubrel", file: !6, line: 417, size: 16, elements: !822)
!822 = !{!823}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !821, file: !6, line: 419, baseType: !120, size: 16)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "pubcomp", scope: !804, file: !6, line: 523, baseType: !825, size: 16)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_pubcomp", file: !6, line: 431, size: 16, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !825, file: !6, line: 433, baseType: !120, size: 16)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "suback", scope: !804, file: !6, line: 524, baseType: !829, size: 192)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_suback", file: !6, line: 459, size: 192, elements: !830)
!830 = !{!831, !832, !834}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !829, file: !6, line: 461, baseType: !120, size: 16)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "return_codes", scope: !829, file: !6, line: 468, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "num_return_codes", scope: !829, file: !6, line: 471, baseType: !107, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "unsuback", scope: !804, file: !6, line: 525, baseType: !836, size: 16)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_unsuback", file: !6, line: 482, size: 16, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "packet_id", scope: !836, file: !6, line: 484, baseType: !120, size: 16)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pingresp", scope: !804, file: !6, line: 526, baseType: !840, size: 32)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mqtt_response_pingresp", file: !6, line: 497, size: 32, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !840, file: !6, line: 498, baseType: !7, size: 32)
!843 = !DILocation(line: 642, column: 26, scope: !786)
!844 = !DILocalVariable(name: "mqtt_recv_ret", scope: !786, file: !135, line: 643, type: !789)
!845 = !DILocation(line: 643, column: 13, scope: !786)
!846 = !DILocation(line: 644, column: 5, scope: !786)
!847 = !DILocation(line: 647, column: 5, scope: !786)
!848 = !DILocation(line: 647, column: 11, scope: !786)
!849 = !DILocation(line: 647, column: 25, scope: !786)
!850 = !DILocalVariable(name: "rv", scope: !851, file: !135, line: 649, type: !789)
!851 = distinct !DILexicalBlock(scope: !786, file: !135, line: 647, column: 37)
!852 = !DILocation(line: 649, column: 17, scope: !851)
!853 = !DILocalVariable(name: "consumed", scope: !851, file: !135, line: 649, type: !789)
!854 = !DILocation(line: 649, column: 21, scope: !851)
!855 = !DILocalVariable(name: "msg", scope: !851, file: !135, line: 650, type: !96)
!856 = !DILocation(line: 650, column: 37, scope: !851)
!857 = !DILocation(line: 652, column: 31, scope: !851)
!858 = !DILocation(line: 652, column: 39, scope: !851)
!859 = !DILocation(line: 652, column: 49, scope: !851)
!860 = !DILocation(line: 652, column: 57, scope: !851)
!861 = !DILocation(line: 652, column: 69, scope: !851)
!862 = !DILocation(line: 652, column: 75, scope: !851)
!863 = !DILocation(line: 652, column: 83, scope: !851)
!864 = !DILocation(line: 652, column: 95, scope: !851)
!865 = !DILocation(line: 652, column: 14, scope: !851)
!866 = !DILocation(line: 652, column: 12, scope: !851)
!867 = !DILocation(line: 653, column: 13, scope: !868)
!868 = distinct !DILexicalBlock(scope: !851, file: !135, line: 653, column: 13)
!869 = !DILocation(line: 653, column: 16, scope: !868)
!870 = !DILocation(line: 653, column: 13, scope: !851)
!871 = !DILocation(line: 655, column: 29, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !135, line: 653, column: 21)
!873 = !DILocation(line: 655, column: 13, scope: !872)
!874 = !DILocation(line: 655, column: 21, scope: !872)
!875 = !DILocation(line: 655, column: 27, scope: !872)
!876 = !DILocation(line: 656, column: 13, scope: !872)
!877 = !DILocation(line: 657, column: 20, scope: !872)
!878 = !DILocation(line: 657, column: 13, scope: !872)
!879 = !DILocation(line: 659, column: 41, scope: !880)
!880 = distinct !DILexicalBlock(scope: !868, file: !135, line: 658, column: 16)
!881 = !DILocation(line: 659, column: 13, scope: !880)
!882 = !DILocation(line: 659, column: 21, scope: !880)
!883 = !DILocation(line: 659, column: 33, scope: !880)
!884 = !DILocation(line: 659, column: 38, scope: !880)
!885 = !DILocation(line: 660, column: 44, scope: !880)
!886 = !DILocation(line: 660, column: 13, scope: !880)
!887 = !DILocation(line: 660, column: 21, scope: !880)
!888 = !DILocation(line: 660, column: 33, scope: !880)
!889 = !DILocation(line: 660, column: 41, scope: !880)
!890 = !DILocation(line: 664, column: 52, scope: !851)
!891 = !DILocation(line: 664, column: 60, scope: !851)
!892 = !DILocation(line: 664, column: 72, scope: !851)
!893 = !DILocation(line: 664, column: 83, scope: !851)
!894 = !DILocation(line: 664, column: 91, scope: !851)
!895 = !DILocation(line: 664, column: 103, scope: !851)
!896 = !DILocation(line: 664, column: 110, scope: !851)
!897 = !DILocation(line: 664, column: 118, scope: !851)
!898 = !DILocation(line: 664, column: 130, scope: !851)
!899 = !DILocation(line: 664, column: 108, scope: !851)
!900 = !DILocation(line: 664, column: 20, scope: !851)
!901 = !DILocation(line: 664, column: 18, scope: !851)
!902 = !DILocation(line: 666, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !851, file: !135, line: 666, column: 13)
!904 = !DILocation(line: 666, column: 22, scope: !903)
!905 = !DILocation(line: 666, column: 13, scope: !851)
!906 = !DILocation(line: 667, column: 29, scope: !907)
!907 = distinct !DILexicalBlock(scope: !903, file: !135, line: 666, column: 27)
!908 = !DILocation(line: 667, column: 13, scope: !907)
!909 = !DILocation(line: 667, column: 21, scope: !907)
!910 = !DILocation(line: 667, column: 27, scope: !907)
!911 = !DILocation(line: 668, column: 13, scope: !907)
!912 = !DILocation(line: 669, column: 20, scope: !907)
!913 = !DILocation(line: 669, column: 13, scope: !907)
!914 = !DILocation(line: 670, column: 20, scope: !915)
!915 = distinct !DILexicalBlock(scope: !903, file: !135, line: 670, column: 20)
!916 = !DILocation(line: 670, column: 29, scope: !915)
!917 = !DILocation(line: 670, column: 20, scope: !903)
!918 = !DILocation(line: 672, column: 17, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !135, line: 672, column: 17)
!920 = distinct !DILexicalBlock(scope: !915, file: !135, line: 670, column: 35)
!921 = !DILocation(line: 672, column: 25, scope: !919)
!922 = !DILocation(line: 672, column: 37, scope: !919)
!923 = !DILocation(line: 672, column: 45, scope: !919)
!924 = !DILocation(line: 672, column: 17, scope: !920)
!925 = !DILocation(line: 673, column: 17, scope: !926)
!926 = distinct !DILexicalBlock(scope: !919, file: !135, line: 672, column: 51)
!927 = !DILocation(line: 673, column: 25, scope: !926)
!928 = !DILocation(line: 673, column: 31, scope: !926)
!929 = !DILocation(line: 674, column: 17, scope: !926)
!930 = !DILocation(line: 675, column: 17, scope: !926)
!931 = !DILocation(line: 679, column: 13, scope: !920)
!932 = !DILocation(line: 680, column: 13, scope: !920)
!933 = !DILocation(line: 713, column: 26, scope: !851)
!934 = !DILocation(line: 713, column: 39, scope: !851)
!935 = !DILocation(line: 713, column: 9, scope: !851)
!936 = !DILocation(line: 716, column: 37, scope: !937)
!937 = distinct !DILexicalBlock(scope: !851, file: !135, line: 713, column: 53)
!938 = !DILocation(line: 716, column: 45, scope: !937)
!939 = !DILocation(line: 716, column: 23, scope: !937)
!940 = !DILocation(line: 716, column: 21, scope: !937)
!941 = !DILocation(line: 717, column: 21, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !135, line: 717, column: 21)
!943 = !DILocation(line: 717, column: 25, scope: !942)
!944 = !DILocation(line: 717, column: 21, scope: !937)
!945 = !DILocation(line: 718, column: 21, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !135, line: 717, column: 34)
!947 = !DILocation(line: 718, column: 29, scope: !946)
!948 = !DILocation(line: 718, column: 35, scope: !946)
!949 = !DILocation(line: 719, column: 35, scope: !946)
!950 = !DILocation(line: 720, column: 21, scope: !946)
!951 = !DILocation(line: 722, column: 17, scope: !937)
!952 = !DILocation(line: 722, column: 22, scope: !937)
!953 = !DILocation(line: 722, column: 28, scope: !937)
!954 = !DILocation(line: 724, column: 59, scope: !937)
!955 = !DILocation(line: 724, column: 77, scope: !937)
!956 = !DILocation(line: 724, column: 82, scope: !937)
!957 = !DILocation(line: 724, column: 75, scope: !937)
!958 = !DILocation(line: 724, column: 49, scope: !937)
!959 = !DILocation(line: 724, column: 17, scope: !937)
!960 = !DILocation(line: 724, column: 25, scope: !937)
!961 = !DILocation(line: 724, column: 47, scope: !937)
!962 = !DILocation(line: 726, column: 30, scope: !963)
!963 = distinct !DILexicalBlock(scope: !937, file: !135, line: 726, column: 21)
!964 = !DILocation(line: 726, column: 38, scope: !963)
!965 = !DILocation(line: 726, column: 46, scope: !963)
!966 = !DILocation(line: 726, column: 58, scope: !963)
!967 = !DILocation(line: 726, column: 21, scope: !937)
!968 = !DILocation(line: 727, column: 34, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !135, line: 727, column: 25)
!970 = distinct !DILexicalBlock(scope: !963, file: !135, line: 726, column: 84)
!971 = !DILocation(line: 727, column: 42, scope: !969)
!972 = !DILocation(line: 727, column: 50, scope: !969)
!973 = !DILocation(line: 727, column: 62, scope: !969)
!974 = !DILocation(line: 727, column: 25, scope: !970)
!975 = !DILocation(line: 728, column: 25, scope: !976)
!976 = distinct !DILexicalBlock(scope: !969, file: !135, line: 727, column: 107)
!977 = !DILocation(line: 728, column: 33, scope: !976)
!978 = !DILocation(line: 728, column: 39, scope: !976)
!979 = !DILocation(line: 729, column: 39, scope: !976)
!980 = !DILocation(line: 730, column: 21, scope: !976)
!981 = !DILocation(line: 731, column: 25, scope: !982)
!982 = distinct !DILexicalBlock(scope: !969, file: !135, line: 730, column: 28)
!983 = !DILocation(line: 731, column: 33, scope: !982)
!984 = !DILocation(line: 731, column: 39, scope: !982)
!985 = !DILocation(line: 732, column: 39, scope: !982)
!986 = !DILocation(line: 734, column: 21, scope: !970)
!987 = !DILocation(line: 736, column: 17, scope: !937)
!988 = !DILocation(line: 739, column: 30, scope: !989)
!989 = distinct !DILexicalBlock(scope: !937, file: !135, line: 739, column: 21)
!990 = !DILocation(line: 739, column: 38, scope: !989)
!991 = !DILocation(line: 739, column: 46, scope: !989)
!992 = !DILocation(line: 739, column: 21, scope: !989)
!993 = !DILocation(line: 739, column: 56, scope: !989)
!994 = !DILocation(line: 739, column: 21, scope: !937)
!995 = !DILocation(line: 740, column: 40, scope: !996)
!996 = distinct !DILexicalBlock(scope: !989, file: !135, line: 739, column: 62)
!997 = !DILocation(line: 740, column: 57, scope: !996)
!998 = !DILocation(line: 740, column: 65, scope: !996)
!999 = !DILocation(line: 740, column: 73, scope: !996)
!1000 = !DILocation(line: 740, column: 26, scope: !996)
!1001 = !DILocation(line: 740, column: 24, scope: !996)
!1002 = !DILocation(line: 741, column: 25, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !996, file: !135, line: 741, column: 25)
!1004 = !DILocation(line: 741, column: 28, scope: !1003)
!1005 = !DILocation(line: 741, column: 25, scope: !996)
!1006 = !DILocation(line: 742, column: 41, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !135, line: 741, column: 40)
!1008 = !DILocation(line: 742, column: 25, scope: !1007)
!1009 = !DILocation(line: 742, column: 33, scope: !1007)
!1010 = !DILocation(line: 742, column: 39, scope: !1007)
!1011 = !DILocation(line: 743, column: 41, scope: !1007)
!1012 = !DILocation(line: 743, column: 39, scope: !1007)
!1013 = !DILocation(line: 744, column: 25, scope: !1007)
!1014 = !DILocation(line: 746, column: 17, scope: !996)
!1015 = !DILocation(line: 746, column: 37, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !989, file: !135, line: 746, column: 28)
!1017 = !DILocation(line: 746, column: 45, scope: !1016)
!1018 = !DILocation(line: 746, column: 53, scope: !1016)
!1019 = !DILocation(line: 746, column: 28, scope: !1016)
!1020 = !DILocation(line: 746, column: 63, scope: !1016)
!1021 = !DILocation(line: 746, column: 28, scope: !989)
!1022 = !DILocation(line: 748, column: 39, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !135, line: 748, column: 25)
!1024 = distinct !DILexicalBlock(scope: !1016, file: !135, line: 746, column: 69)
!1025 = !DILocation(line: 748, column: 47, scope: !1023)
!1026 = !DILocation(line: 748, column: 82, scope: !1023)
!1027 = !DILocation(line: 748, column: 90, scope: !1023)
!1028 = !DILocation(line: 748, column: 98, scope: !1023)
!1029 = !DILocation(line: 748, column: 25, scope: !1023)
!1030 = !DILocation(line: 748, column: 109, scope: !1023)
!1031 = !DILocation(line: 748, column: 25, scope: !1024)
!1032 = !DILocation(line: 749, column: 25, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1023, file: !135, line: 748, column: 118)
!1034 = !DILocation(line: 752, column: 40, scope: !1024)
!1035 = !DILocation(line: 752, column: 57, scope: !1024)
!1036 = !DILocation(line: 752, column: 65, scope: !1024)
!1037 = !DILocation(line: 752, column: 73, scope: !1024)
!1038 = !DILocation(line: 752, column: 26, scope: !1024)
!1039 = !DILocation(line: 752, column: 24, scope: !1024)
!1040 = !DILocation(line: 753, column: 25, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1024, file: !135, line: 753, column: 25)
!1042 = !DILocation(line: 753, column: 28, scope: !1041)
!1043 = !DILocation(line: 753, column: 25, scope: !1024)
!1044 = !DILocation(line: 754, column: 41, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !135, line: 753, column: 40)
!1046 = !DILocation(line: 754, column: 25, scope: !1045)
!1047 = !DILocation(line: 754, column: 33, scope: !1045)
!1048 = !DILocation(line: 754, column: 39, scope: !1045)
!1049 = !DILocation(line: 755, column: 41, scope: !1045)
!1050 = !DILocation(line: 755, column: 39, scope: !1045)
!1051 = !DILocation(line: 756, column: 25, scope: !1045)
!1052 = !DILocation(line: 758, column: 17, scope: !1024)
!1053 = !DILocation(line: 760, column: 17, scope: !937)
!1054 = !DILocation(line: 760, column: 25, scope: !937)
!1055 = !DILocation(line: 760, column: 52, scope: !937)
!1056 = !DILocation(line: 760, column: 60, scope: !937)
!1057 = !DILocation(line: 760, column: 103, scope: !937)
!1058 = !DILocation(line: 760, column: 111, scope: !937)
!1059 = !DILocation(line: 761, column: 17, scope: !937)
!1060 = !DILocation(line: 764, column: 37, scope: !937)
!1061 = !DILocation(line: 764, column: 45, scope: !937)
!1062 = !DILocation(line: 764, column: 81, scope: !937)
!1063 = !DILocation(line: 764, column: 89, scope: !937)
!1064 = !DILocation(line: 764, column: 96, scope: !937)
!1065 = !DILocation(line: 764, column: 23, scope: !937)
!1066 = !DILocation(line: 764, column: 21, scope: !937)
!1067 = !DILocation(line: 765, column: 21, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !937, file: !135, line: 765, column: 21)
!1069 = !DILocation(line: 765, column: 25, scope: !1068)
!1070 = !DILocation(line: 765, column: 21, scope: !937)
!1071 = !DILocation(line: 766, column: 21, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !135, line: 765, column: 34)
!1073 = !DILocation(line: 766, column: 29, scope: !1072)
!1074 = !DILocation(line: 766, column: 35, scope: !1072)
!1075 = !DILocation(line: 767, column: 35, scope: !1072)
!1076 = !DILocation(line: 768, column: 21, scope: !1072)
!1077 = !DILocation(line: 770, column: 17, scope: !937)
!1078 = !DILocation(line: 770, column: 22, scope: !937)
!1079 = !DILocation(line: 770, column: 28, scope: !937)
!1080 = !DILocation(line: 772, column: 58, scope: !937)
!1081 = !DILocation(line: 772, column: 66, scope: !937)
!1082 = !DILocation(line: 772, column: 55, scope: !937)
!1083 = !DILocation(line: 772, column: 109, scope: !937)
!1084 = !DILocation(line: 772, column: 127, scope: !937)
!1085 = !DILocation(line: 772, column: 132, scope: !937)
!1086 = !DILocation(line: 772, column: 125, scope: !937)
!1087 = !DILocation(line: 772, column: 99, scope: !937)
!1088 = !DILocation(line: 772, column: 97, scope: !937)
!1089 = !DILocation(line: 772, column: 89, scope: !937)
!1090 = !DILocation(line: 772, column: 17, scope: !937)
!1091 = !DILocation(line: 772, column: 25, scope: !937)
!1092 = !DILocation(line: 772, column: 47, scope: !937)
!1093 = !DILocation(line: 773, column: 17, scope: !937)
!1094 = !DILocation(line: 776, column: 35, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !937, file: !135, line: 776, column: 21)
!1096 = !DILocation(line: 776, column: 43, scope: !1095)
!1097 = !DILocation(line: 776, column: 78, scope: !1095)
!1098 = !DILocation(line: 776, column: 86, scope: !1095)
!1099 = !DILocation(line: 776, column: 93, scope: !1095)
!1100 = !DILocation(line: 776, column: 21, scope: !1095)
!1101 = !DILocation(line: 776, column: 104, scope: !1095)
!1102 = !DILocation(line: 776, column: 21, scope: !937)
!1103 = !DILocation(line: 777, column: 21, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1095, file: !135, line: 776, column: 113)
!1105 = !DILocation(line: 780, column: 37, scope: !937)
!1106 = !DILocation(line: 780, column: 45, scope: !937)
!1107 = !DILocation(line: 780, column: 81, scope: !937)
!1108 = !DILocation(line: 780, column: 89, scope: !937)
!1109 = !DILocation(line: 780, column: 96, scope: !937)
!1110 = !DILocation(line: 780, column: 23, scope: !937)
!1111 = !DILocation(line: 780, column: 21, scope: !937)
!1112 = !DILocation(line: 781, column: 21, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !937, file: !135, line: 781, column: 21)
!1114 = !DILocation(line: 781, column: 25, scope: !1113)
!1115 = !DILocation(line: 781, column: 21, scope: !937)
!1116 = !DILocation(line: 782, column: 21, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !135, line: 781, column: 34)
!1118 = !DILocation(line: 782, column: 29, scope: !1117)
!1119 = !DILocation(line: 782, column: 35, scope: !1117)
!1120 = !DILocation(line: 783, column: 35, scope: !1117)
!1121 = !DILocation(line: 784, column: 21, scope: !1117)
!1122 = !DILocation(line: 786, column: 17, scope: !937)
!1123 = !DILocation(line: 786, column: 22, scope: !937)
!1124 = !DILocation(line: 786, column: 28, scope: !937)
!1125 = !DILocation(line: 788, column: 58, scope: !937)
!1126 = !DILocation(line: 788, column: 66, scope: !937)
!1127 = !DILocation(line: 788, column: 55, scope: !937)
!1128 = !DILocation(line: 788, column: 109, scope: !937)
!1129 = !DILocation(line: 788, column: 127, scope: !937)
!1130 = !DILocation(line: 788, column: 132, scope: !937)
!1131 = !DILocation(line: 788, column: 125, scope: !937)
!1132 = !DILocation(line: 788, column: 99, scope: !937)
!1133 = !DILocation(line: 788, column: 97, scope: !937)
!1134 = !DILocation(line: 788, column: 89, scope: !937)
!1135 = !DILocation(line: 788, column: 17, scope: !937)
!1136 = !DILocation(line: 788, column: 25, scope: !937)
!1137 = !DILocation(line: 788, column: 47, scope: !937)
!1138 = !DILocation(line: 790, column: 36, scope: !937)
!1139 = !DILocation(line: 790, column: 53, scope: !937)
!1140 = !DILocation(line: 790, column: 61, scope: !937)
!1141 = !DILocation(line: 790, column: 68, scope: !937)
!1142 = !DILocation(line: 790, column: 22, scope: !937)
!1143 = !DILocation(line: 790, column: 20, scope: !937)
!1144 = !DILocation(line: 791, column: 21, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !937, file: !135, line: 791, column: 21)
!1146 = !DILocation(line: 791, column: 24, scope: !1145)
!1147 = !DILocation(line: 791, column: 21, scope: !937)
!1148 = !DILocation(line: 792, column: 37, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !135, line: 791, column: 36)
!1150 = !DILocation(line: 792, column: 21, scope: !1149)
!1151 = !DILocation(line: 792, column: 29, scope: !1149)
!1152 = !DILocation(line: 792, column: 35, scope: !1149)
!1153 = !DILocation(line: 793, column: 37, scope: !1149)
!1154 = !DILocation(line: 793, column: 35, scope: !1149)
!1155 = !DILocation(line: 794, column: 21, scope: !1149)
!1156 = !DILocation(line: 796, column: 17, scope: !937)
!1157 = !DILocation(line: 799, column: 37, scope: !937)
!1158 = !DILocation(line: 799, column: 45, scope: !937)
!1159 = !DILocation(line: 799, column: 80, scope: !937)
!1160 = !DILocation(line: 799, column: 88, scope: !937)
!1161 = !DILocation(line: 799, column: 95, scope: !937)
!1162 = !DILocation(line: 799, column: 23, scope: !937)
!1163 = !DILocation(line: 799, column: 21, scope: !937)
!1164 = !DILocation(line: 800, column: 21, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !937, file: !135, line: 800, column: 21)
!1166 = !DILocation(line: 800, column: 25, scope: !1165)
!1167 = !DILocation(line: 800, column: 21, scope: !937)
!1168 = !DILocation(line: 801, column: 21, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !135, line: 800, column: 34)
!1170 = !DILocation(line: 801, column: 29, scope: !1169)
!1171 = !DILocation(line: 801, column: 35, scope: !1169)
!1172 = !DILocation(line: 802, column: 35, scope: !1169)
!1173 = !DILocation(line: 803, column: 21, scope: !1169)
!1174 = !DILocation(line: 805, column: 17, scope: !937)
!1175 = !DILocation(line: 805, column: 22, scope: !937)
!1176 = !DILocation(line: 805, column: 28, scope: !937)
!1177 = !DILocation(line: 807, column: 58, scope: !937)
!1178 = !DILocation(line: 807, column: 66, scope: !937)
!1179 = !DILocation(line: 807, column: 55, scope: !937)
!1180 = !DILocation(line: 807, column: 109, scope: !937)
!1181 = !DILocation(line: 807, column: 127, scope: !937)
!1182 = !DILocation(line: 807, column: 132, scope: !937)
!1183 = !DILocation(line: 807, column: 125, scope: !937)
!1184 = !DILocation(line: 807, column: 99, scope: !937)
!1185 = !DILocation(line: 807, column: 97, scope: !937)
!1186 = !DILocation(line: 807, column: 89, scope: !937)
!1187 = !DILocation(line: 807, column: 17, scope: !937)
!1188 = !DILocation(line: 807, column: 25, scope: !937)
!1189 = !DILocation(line: 807, column: 47, scope: !937)
!1190 = !DILocation(line: 809, column: 37, scope: !937)
!1191 = !DILocation(line: 809, column: 54, scope: !937)
!1192 = !DILocation(line: 809, column: 62, scope: !937)
!1193 = !DILocation(line: 809, column: 69, scope: !937)
!1194 = !DILocation(line: 809, column: 22, scope: !937)
!1195 = !DILocation(line: 809, column: 20, scope: !937)
!1196 = !DILocation(line: 810, column: 21, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !937, file: !135, line: 810, column: 21)
!1198 = !DILocation(line: 810, column: 24, scope: !1197)
!1199 = !DILocation(line: 810, column: 21, scope: !937)
!1200 = !DILocation(line: 811, column: 37, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !135, line: 810, column: 36)
!1202 = !DILocation(line: 811, column: 21, scope: !1201)
!1203 = !DILocation(line: 811, column: 29, scope: !1201)
!1204 = !DILocation(line: 811, column: 35, scope: !1201)
!1205 = !DILocation(line: 812, column: 37, scope: !1201)
!1206 = !DILocation(line: 812, column: 35, scope: !1201)
!1207 = !DILocation(line: 813, column: 21, scope: !1201)
!1208 = !DILocation(line: 815, column: 17, scope: !937)
!1209 = !DILocation(line: 818, column: 37, scope: !937)
!1210 = !DILocation(line: 818, column: 45, scope: !937)
!1211 = !DILocation(line: 818, column: 80, scope: !937)
!1212 = !DILocation(line: 818, column: 88, scope: !937)
!1213 = !DILocation(line: 818, column: 96, scope: !937)
!1214 = !DILocation(line: 818, column: 23, scope: !937)
!1215 = !DILocation(line: 818, column: 21, scope: !937)
!1216 = !DILocation(line: 819, column: 21, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !937, file: !135, line: 819, column: 21)
!1218 = !DILocation(line: 819, column: 25, scope: !1217)
!1219 = !DILocation(line: 819, column: 21, scope: !937)
!1220 = !DILocation(line: 820, column: 21, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !135, line: 819, column: 34)
!1222 = !DILocation(line: 820, column: 29, scope: !1221)
!1223 = !DILocation(line: 820, column: 35, scope: !1221)
!1224 = !DILocation(line: 821, column: 35, scope: !1221)
!1225 = !DILocation(line: 822, column: 21, scope: !1221)
!1226 = !DILocation(line: 824, column: 17, scope: !937)
!1227 = !DILocation(line: 824, column: 22, scope: !937)
!1228 = !DILocation(line: 824, column: 28, scope: !937)
!1229 = !DILocation(line: 826, column: 58, scope: !937)
!1230 = !DILocation(line: 826, column: 66, scope: !937)
!1231 = !DILocation(line: 826, column: 55, scope: !937)
!1232 = !DILocation(line: 826, column: 109, scope: !937)
!1233 = !DILocation(line: 826, column: 127, scope: !937)
!1234 = !DILocation(line: 826, column: 132, scope: !937)
!1235 = !DILocation(line: 826, column: 125, scope: !937)
!1236 = !DILocation(line: 826, column: 99, scope: !937)
!1237 = !DILocation(line: 826, column: 97, scope: !937)
!1238 = !DILocation(line: 826, column: 89, scope: !937)
!1239 = !DILocation(line: 826, column: 17, scope: !937)
!1240 = !DILocation(line: 826, column: 25, scope: !937)
!1241 = !DILocation(line: 826, column: 47, scope: !937)
!1242 = !DILocation(line: 827, column: 17, scope: !937)
!1243 = !DILocation(line: 830, column: 37, scope: !937)
!1244 = !DILocation(line: 830, column: 45, scope: !937)
!1245 = !DILocation(line: 830, column: 83, scope: !937)
!1246 = !DILocation(line: 830, column: 91, scope: !937)
!1247 = !DILocation(line: 830, column: 98, scope: !937)
!1248 = !DILocation(line: 830, column: 23, scope: !937)
!1249 = !DILocation(line: 830, column: 21, scope: !937)
!1250 = !DILocation(line: 831, column: 21, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !937, file: !135, line: 831, column: 21)
!1252 = !DILocation(line: 831, column: 25, scope: !1251)
!1253 = !DILocation(line: 831, column: 21, scope: !937)
!1254 = !DILocation(line: 832, column: 21, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !135, line: 831, column: 34)
!1256 = !DILocation(line: 832, column: 29, scope: !1255)
!1257 = !DILocation(line: 832, column: 35, scope: !1255)
!1258 = !DILocation(line: 833, column: 35, scope: !1255)
!1259 = !DILocation(line: 834, column: 21, scope: !1255)
!1260 = !DILocation(line: 836, column: 17, scope: !937)
!1261 = !DILocation(line: 836, column: 22, scope: !937)
!1262 = !DILocation(line: 836, column: 28, scope: !937)
!1263 = !DILocation(line: 838, column: 58, scope: !937)
!1264 = !DILocation(line: 838, column: 66, scope: !937)
!1265 = !DILocation(line: 838, column: 55, scope: !937)
!1266 = !DILocation(line: 838, column: 109, scope: !937)
!1267 = !DILocation(line: 838, column: 127, scope: !937)
!1268 = !DILocation(line: 838, column: 132, scope: !937)
!1269 = !DILocation(line: 838, column: 125, scope: !937)
!1270 = !DILocation(line: 838, column: 99, scope: !937)
!1271 = !DILocation(line: 838, column: 97, scope: !937)
!1272 = !DILocation(line: 838, column: 89, scope: !937)
!1273 = !DILocation(line: 838, column: 17, scope: !937)
!1274 = !DILocation(line: 838, column: 25, scope: !937)
!1275 = !DILocation(line: 838, column: 47, scope: !937)
!1276 = !DILocation(line: 840, column: 30, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !937, file: !135, line: 840, column: 21)
!1278 = !DILocation(line: 840, column: 38, scope: !1277)
!1279 = !DILocation(line: 840, column: 45, scope: !1277)
!1280 = !DILocation(line: 840, column: 21, scope: !1277)
!1281 = !DILocation(line: 840, column: 61, scope: !1277)
!1282 = !DILocation(line: 840, column: 21, scope: !937)
!1283 = !DILocation(line: 841, column: 21, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1277, file: !135, line: 840, column: 85)
!1285 = !DILocation(line: 841, column: 29, scope: !1284)
!1286 = !DILocation(line: 841, column: 35, scope: !1284)
!1287 = !DILocation(line: 842, column: 35, scope: !1284)
!1288 = !DILocation(line: 843, column: 21, scope: !1284)
!1289 = !DILocation(line: 845, column: 17, scope: !937)
!1290 = !DILocation(line: 848, column: 37, scope: !937)
!1291 = !DILocation(line: 848, column: 45, scope: !937)
!1292 = !DILocation(line: 848, column: 85, scope: !937)
!1293 = !DILocation(line: 848, column: 93, scope: !937)
!1294 = !DILocation(line: 848, column: 102, scope: !937)
!1295 = !DILocation(line: 848, column: 23, scope: !937)
!1296 = !DILocation(line: 848, column: 21, scope: !937)
!1297 = !DILocation(line: 849, column: 21, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !937, file: !135, line: 849, column: 21)
!1299 = !DILocation(line: 849, column: 25, scope: !1298)
!1300 = !DILocation(line: 849, column: 21, scope: !937)
!1301 = !DILocation(line: 850, column: 21, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !135, line: 849, column: 34)
!1303 = !DILocation(line: 850, column: 29, scope: !1302)
!1304 = !DILocation(line: 850, column: 35, scope: !1302)
!1305 = !DILocation(line: 851, column: 35, scope: !1302)
!1306 = !DILocation(line: 852, column: 21, scope: !1302)
!1307 = !DILocation(line: 854, column: 17, scope: !937)
!1308 = !DILocation(line: 854, column: 22, scope: !937)
!1309 = !DILocation(line: 854, column: 28, scope: !937)
!1310 = !DILocation(line: 856, column: 58, scope: !937)
!1311 = !DILocation(line: 856, column: 66, scope: !937)
!1312 = !DILocation(line: 856, column: 55, scope: !937)
!1313 = !DILocation(line: 856, column: 109, scope: !937)
!1314 = !DILocation(line: 856, column: 127, scope: !937)
!1315 = !DILocation(line: 856, column: 132, scope: !937)
!1316 = !DILocation(line: 856, column: 125, scope: !937)
!1317 = !DILocation(line: 856, column: 99, scope: !937)
!1318 = !DILocation(line: 856, column: 97, scope: !937)
!1319 = !DILocation(line: 856, column: 89, scope: !937)
!1320 = !DILocation(line: 856, column: 17, scope: !937)
!1321 = !DILocation(line: 856, column: 25, scope: !937)
!1322 = !DILocation(line: 856, column: 47, scope: !937)
!1323 = !DILocation(line: 857, column: 17, scope: !937)
!1324 = !DILocation(line: 860, column: 37, scope: !937)
!1325 = !DILocation(line: 860, column: 45, scope: !937)
!1326 = !DILocation(line: 860, column: 23, scope: !937)
!1327 = !DILocation(line: 860, column: 21, scope: !937)
!1328 = !DILocation(line: 861, column: 21, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !937, file: !135, line: 861, column: 21)
!1330 = !DILocation(line: 861, column: 25, scope: !1329)
!1331 = !DILocation(line: 861, column: 21, scope: !937)
!1332 = !DILocation(line: 862, column: 21, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !135, line: 861, column: 34)
!1334 = !DILocation(line: 862, column: 29, scope: !1333)
!1335 = !DILocation(line: 862, column: 35, scope: !1333)
!1336 = !DILocation(line: 863, column: 35, scope: !1333)
!1337 = !DILocation(line: 864, column: 21, scope: !1333)
!1338 = !DILocation(line: 866, column: 17, scope: !937)
!1339 = !DILocation(line: 866, column: 22, scope: !937)
!1340 = !DILocation(line: 866, column: 28, scope: !937)
!1341 = !DILocation(line: 868, column: 58, scope: !937)
!1342 = !DILocation(line: 868, column: 66, scope: !937)
!1343 = !DILocation(line: 868, column: 55, scope: !937)
!1344 = !DILocation(line: 868, column: 109, scope: !937)
!1345 = !DILocation(line: 868, column: 127, scope: !937)
!1346 = !DILocation(line: 868, column: 132, scope: !937)
!1347 = !DILocation(line: 868, column: 125, scope: !937)
!1348 = !DILocation(line: 868, column: 99, scope: !937)
!1349 = !DILocation(line: 868, column: 97, scope: !937)
!1350 = !DILocation(line: 868, column: 89, scope: !937)
!1351 = !DILocation(line: 868, column: 17, scope: !937)
!1352 = !DILocation(line: 868, column: 25, scope: !937)
!1353 = !DILocation(line: 868, column: 47, scope: !937)
!1354 = !DILocation(line: 869, column: 17, scope: !937)
!1355 = !DILocation(line: 871, column: 17, scope: !937)
!1356 = !DILocation(line: 871, column: 25, scope: !937)
!1357 = !DILocation(line: 871, column: 31, scope: !937)
!1358 = !DILocation(line: 872, column: 31, scope: !937)
!1359 = !DILocation(line: 873, column: 17, scope: !937)
!1360 = !DILocalVariable(name: "dest", scope: !1361, file: !135, line: 877, type: !95)
!1361 = distinct !DILexicalBlock(scope: !851, file: !135, line: 875, column: 9)
!1362 = !DILocation(line: 877, column: 17, scope: !1361)
!1363 = !DILocation(line: 877, column: 40, scope: !1361)
!1364 = !DILocation(line: 877, column: 48, scope: !1361)
!1365 = !DILocation(line: 877, column: 60, scope: !1361)
!1366 = !DILocalVariable(name: "src", scope: !1361, file: !135, line: 878, type: !95)
!1367 = !DILocation(line: 878, column: 17, scope: !1361)
!1368 = !DILocation(line: 878, column: 40, scope: !1361)
!1369 = !DILocation(line: 878, column: 48, scope: !1361)
!1370 = !DILocation(line: 878, column: 60, scope: !1361)
!1371 = !DILocation(line: 878, column: 72, scope: !1361)
!1372 = !DILocation(line: 878, column: 70, scope: !1361)
!1373 = !DILocalVariable(name: "n", scope: !1361, file: !135, line: 879, type: !107)
!1374 = !DILocation(line: 879, column: 18, scope: !1361)
!1375 = !DILocation(line: 879, column: 22, scope: !1361)
!1376 = !DILocation(line: 879, column: 30, scope: !1361)
!1377 = !DILocation(line: 879, column: 42, scope: !1361)
!1378 = !DILocation(line: 879, column: 49, scope: !1361)
!1379 = !DILocation(line: 879, column: 57, scope: !1361)
!1380 = !DILocation(line: 879, column: 69, scope: !1361)
!1381 = !DILocation(line: 879, column: 47, scope: !1361)
!1382 = !DILocation(line: 879, column: 81, scope: !1361)
!1383 = !DILocation(line: 879, column: 79, scope: !1361)
!1384 = !DILocation(line: 880, column: 19, scope: !1361)
!1385 = !DILocation(line: 880, column: 25, scope: !1361)
!1386 = !DILocation(line: 880, column: 30, scope: !1361)
!1387 = !DILocation(line: 880, column: 11, scope: !1361)
!1388 = !DILocation(line: 881, column: 39, scope: !1361)
!1389 = !DILocation(line: 881, column: 11, scope: !1361)
!1390 = !DILocation(line: 881, column: 19, scope: !1361)
!1391 = !DILocation(line: 881, column: 31, scope: !1361)
!1392 = !DILocation(line: 881, column: 36, scope: !1361)
!1393 = !DILocation(line: 882, column: 42, scope: !1361)
!1394 = !DILocation(line: 882, column: 11, scope: !1361)
!1395 = !DILocation(line: 882, column: 19, scope: !1361)
!1396 = !DILocation(line: 882, column: 31, scope: !1361)
!1397 = !DILocation(line: 882, column: 39, scope: !1361)
!1398 = distinct !{!1398, !847, !1399, !377}
!1399 = !DILocation(line: 884, column: 5, scope: !786)
!1400 = !DILocation(line: 887, column: 5, scope: !786)
!1401 = !DILocation(line: 888, column: 12, scope: !786)
!1402 = !DILocation(line: 888, column: 5, scope: !786)
!1403 = !DILocation(line: 889, column: 1, scope: !786)
!1404 = distinct !DISubprogram(name: "__mqtt_send", scope: !135, file: !135, line: 498, type: !787, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!1405 = !DILocalVariable(name: "client", arg: 1, scope: !1404, file: !135, line: 498, type: !622)
!1406 = !DILocation(line: 498, column: 41, scope: !1404)
!1407 = !DILocalVariable(name: "inspected", scope: !1404, file: !135, line: 500, type: !101)
!1408 = !DILocation(line: 500, column: 13, scope: !1404)
!1409 = !DILocalVariable(name: "len", scope: !1404, file: !135, line: 501, type: !789)
!1410 = !DILocation(line: 501, column: 13, scope: !1404)
!1411 = !DILocalVariable(name: "inflight_qos2", scope: !1404, file: !135, line: 502, type: !7)
!1412 = !DILocation(line: 502, column: 9, scope: !1404)
!1413 = !DILocalVariable(name: "i", scope: !1404, file: !135, line: 503, type: !7)
!1414 = !DILocation(line: 503, column: 9, scope: !1404)
!1415 = !DILocation(line: 505, column: 5, scope: !1404)
!1416 = !DILocation(line: 507, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1404, file: !135, line: 507, column: 9)
!1418 = !DILocation(line: 507, column: 17, scope: !1417)
!1419 = !DILocation(line: 507, column: 23, scope: !1417)
!1420 = !DILocation(line: 507, column: 27, scope: !1417)
!1421 = !DILocation(line: 507, column: 30, scope: !1417)
!1422 = !DILocation(line: 507, column: 38, scope: !1417)
!1423 = !DILocation(line: 507, column: 44, scope: !1417)
!1424 = !DILocation(line: 507, column: 9, scope: !1404)
!1425 = !DILocation(line: 508, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1417, file: !135, line: 507, column: 79)
!1427 = !DILocation(line: 509, column: 16, scope: !1426)
!1428 = !DILocation(line: 509, column: 24, scope: !1426)
!1429 = !DILocation(line: 509, column: 9, scope: !1426)
!1430 = !DILocation(line: 513, column: 11, scope: !1404)
!1431 = !DILocation(line: 513, column: 9, scope: !1404)
!1432 = !DILocation(line: 514, column: 5, scope: !1404)
!1433 = !DILocation(line: 514, column: 11, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !135, line: 514, column: 5)
!1435 = distinct !DILexicalBlock(scope: !1404, file: !135, line: 514, column: 5)
!1436 = !DILocation(line: 514, column: 15, scope: !1434)
!1437 = !DILocation(line: 514, column: 13, scope: !1434)
!1438 = !DILocation(line: 514, column: 5, scope: !1435)
!1439 = !DILocalVariable(name: "msg", scope: !1440, file: !135, line: 515, type: !96)
!1440 = distinct !DILexicalBlock(scope: !1434, file: !135, line: 514, column: 25)
!1441 = !DILocation(line: 515, column: 37, scope: !1440)
!1442 = !DILocation(line: 515, column: 43, scope: !1440)
!1443 = !DILocalVariable(name: "resend", scope: !1440, file: !135, line: 516, type: !7)
!1444 = !DILocation(line: 516, column: 13, scope: !1440)
!1445 = !DILocation(line: 517, column: 13, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1440, file: !135, line: 517, column: 13)
!1447 = !DILocation(line: 517, column: 18, scope: !1446)
!1448 = !DILocation(line: 517, column: 24, scope: !1446)
!1449 = !DILocation(line: 517, column: 13, scope: !1440)
!1450 = !DILocation(line: 519, column: 20, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !135, line: 517, column: 47)
!1452 = !DILocation(line: 520, column: 9, scope: !1451)
!1453 = !DILocation(line: 520, column: 20, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1446, file: !135, line: 520, column: 20)
!1455 = !DILocation(line: 520, column: 25, scope: !1454)
!1456 = !DILocation(line: 520, column: 31, scope: !1454)
!1457 = !DILocation(line: 520, column: 20, scope: !1446)
!1458 = !DILocation(line: 522, column: 17, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !135, line: 522, column: 17)
!1460 = distinct !DILexicalBlock(scope: !1454, file: !135, line: 520, column: 60)
!1461 = !DILocation(line: 522, column: 35, scope: !1459)
!1462 = !DILocation(line: 522, column: 40, scope: !1459)
!1463 = !DILocation(line: 522, column: 52, scope: !1459)
!1464 = !DILocation(line: 522, column: 60, scope: !1459)
!1465 = !DILocation(line: 522, column: 50, scope: !1459)
!1466 = !DILocation(line: 522, column: 33, scope: !1459)
!1467 = !DILocation(line: 522, column: 17, scope: !1460)
!1468 = !DILocation(line: 523, column: 24, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1459, file: !135, line: 522, column: 78)
!1470 = !DILocation(line: 524, column: 17, scope: !1469)
!1471 = !DILocation(line: 524, column: 25, scope: !1469)
!1472 = !DILocation(line: 524, column: 44, scope: !1469)
!1473 = !DILocation(line: 525, column: 17, scope: !1469)
!1474 = !DILocation(line: 525, column: 25, scope: !1469)
!1475 = !DILocation(line: 525, column: 37, scope: !1469)
!1476 = !DILocation(line: 526, column: 13, scope: !1469)
!1477 = !DILocation(line: 527, column: 9, scope: !1460)
!1478 = !DILocation(line: 530, column: 13, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1440, file: !135, line: 530, column: 13)
!1480 = !DILocation(line: 530, column: 18, scope: !1479)
!1481 = !DILocation(line: 530, column: 31, scope: !1479)
!1482 = !DILocation(line: 531, column: 13, scope: !1479)
!1483 = !DILocation(line: 531, column: 17, scope: !1479)
!1484 = !DILocation(line: 531, column: 22, scope: !1479)
!1485 = !DILocation(line: 531, column: 28, scope: !1479)
!1486 = !DILocation(line: 531, column: 50, scope: !1479)
!1487 = !DILocation(line: 531, column: 53, scope: !1479)
!1488 = !DILocation(line: 531, column: 58, scope: !1479)
!1489 = !DILocation(line: 531, column: 64, scope: !1479)
!1490 = !DILocation(line: 530, column: 13, scope: !1440)
!1491 = !DILocation(line: 533, column: 34, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1479, file: !135, line: 532, column: 9)
!1493 = !DILocation(line: 533, column: 39, scope: !1492)
!1494 = !DILocation(line: 533, column: 33, scope: !1492)
!1495 = !DILocation(line: 533, column: 49, scope: !1492)
!1496 = !DILocation(line: 533, column: 30, scope: !1492)
!1497 = !DILocation(line: 533, column: 25, scope: !1492)
!1498 = !DILocation(line: 533, column: 23, scope: !1492)
!1499 = !DILocation(line: 534, column: 17, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1492, file: !135, line: 534, column: 17)
!1501 = !DILocation(line: 534, column: 27, scope: !1500)
!1502 = !DILocation(line: 534, column: 17, scope: !1492)
!1503 = !DILocation(line: 535, column: 21, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !135, line: 535, column: 21)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !135, line: 534, column: 33)
!1506 = !DILocation(line: 535, column: 21, scope: !1505)
!1507 = !DILocation(line: 536, column: 28, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !135, line: 535, column: 36)
!1509 = !DILocation(line: 537, column: 17, scope: !1508)
!1510 = !DILocation(line: 538, column: 31, scope: !1505)
!1511 = !DILocation(line: 539, column: 13, scope: !1505)
!1512 = !DILocation(line: 540, column: 9, scope: !1492)
!1513 = !DILocation(line: 543, column: 14, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1440, file: !135, line: 543, column: 13)
!1515 = !DILocation(line: 543, column: 13, scope: !1440)
!1516 = !DILocation(line: 544, column: 13, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !135, line: 543, column: 22)
!1518 = !DILocalVariable(name: "tmp", scope: !1519, file: !135, line: 549, type: !789)
!1519 = distinct !DILexicalBlock(scope: !1440, file: !135, line: 548, column: 9)
!1520 = !DILocation(line: 549, column: 19, scope: !1519)
!1521 = !DILocation(line: 549, column: 42, scope: !1519)
!1522 = !DILocation(line: 549, column: 50, scope: !1519)
!1523 = !DILocation(line: 549, column: 60, scope: !1519)
!1524 = !DILocation(line: 549, column: 65, scope: !1519)
!1525 = !DILocation(line: 549, column: 73, scope: !1519)
!1526 = !DILocation(line: 549, column: 81, scope: !1519)
!1527 = !DILocation(line: 549, column: 71, scope: !1519)
!1528 = !DILocation(line: 549, column: 94, scope: !1519)
!1529 = !DILocation(line: 549, column: 99, scope: !1519)
!1530 = !DILocation(line: 549, column: 106, scope: !1519)
!1531 = !DILocation(line: 549, column: 114, scope: !1519)
!1532 = !DILocation(line: 549, column: 104, scope: !1519)
!1533 = !DILocation(line: 549, column: 25, scope: !1519)
!1534 = !DILocation(line: 550, column: 15, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1519, file: !135, line: 550, column: 15)
!1536 = !DILocation(line: 550, column: 19, scope: !1535)
!1537 = !DILocation(line: 550, column: 15, scope: !1519)
!1538 = !DILocation(line: 551, column: 29, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !135, line: 550, column: 24)
!1540 = !DILocation(line: 551, column: 13, scope: !1539)
!1541 = !DILocation(line: 551, column: 21, scope: !1539)
!1542 = !DILocation(line: 551, column: 27, scope: !1539)
!1543 = !DILocation(line: 552, column: 13, scope: !1539)
!1544 = !DILocation(line: 553, column: 20, scope: !1539)
!1545 = !DILocation(line: 553, column: 13, scope: !1539)
!1546 = !DILocation(line: 555, column: 36, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1535, file: !135, line: 554, column: 18)
!1548 = !DILocation(line: 555, column: 13, scope: !1547)
!1549 = !DILocation(line: 555, column: 21, scope: !1547)
!1550 = !DILocation(line: 555, column: 33, scope: !1547)
!1551 = !DILocation(line: 556, column: 16, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !135, line: 556, column: 16)
!1553 = !DILocation(line: 556, column: 24, scope: !1552)
!1554 = !DILocation(line: 556, column: 38, scope: !1552)
!1555 = !DILocation(line: 556, column: 43, scope: !1552)
!1556 = !DILocation(line: 556, column: 36, scope: !1552)
!1557 = !DILocation(line: 556, column: 16, scope: !1547)
!1558 = !DILocation(line: 558, column: 15, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !135, line: 556, column: 49)
!1560 = !DILocation(line: 561, column: 15, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1552, file: !135, line: 559, column: 20)
!1562 = !DILocation(line: 561, column: 23, scope: !1561)
!1563 = !DILocation(line: 561, column: 35, scope: !1561)
!1564 = !DILocation(line: 569, column: 37, scope: !1440)
!1565 = !DILocation(line: 569, column: 9, scope: !1440)
!1566 = !DILocation(line: 569, column: 17, scope: !1440)
!1567 = !DILocation(line: 569, column: 35, scope: !1440)
!1568 = !DILocation(line: 570, column: 26, scope: !1440)
!1569 = !DILocation(line: 570, column: 34, scope: !1440)
!1570 = !DILocation(line: 570, column: 9, scope: !1440)
!1571 = !DILocation(line: 570, column: 14, scope: !1440)
!1572 = !DILocation(line: 570, column: 24, scope: !1440)
!1573 = !DILocation(line: 590, column: 17, scope: !1440)
!1574 = !DILocation(line: 590, column: 22, scope: !1440)
!1575 = !DILocation(line: 590, column: 9, scope: !1440)
!1576 = !DILocation(line: 594, column: 13, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1440, file: !135, line: 590, column: 36)
!1578 = !DILocation(line: 594, column: 18, scope: !1577)
!1579 = !DILocation(line: 594, column: 24, scope: !1577)
!1580 = !DILocation(line: 595, column: 13, scope: !1577)
!1581 = !DILocation(line: 597, column: 52, scope: !1577)
!1582 = !DILocation(line: 597, column: 57, scope: !1577)
!1583 = !DILocation(line: 597, column: 51, scope: !1577)
!1584 = !DILocation(line: 597, column: 49, scope: !1577)
!1585 = !DILocation(line: 597, column: 69, scope: !1577)
!1586 = !DILocation(line: 597, column: 25, scope: !1577)
!1587 = !DILocation(line: 597, column: 23, scope: !1577)
!1588 = !DILocation(line: 598, column: 17, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1577, file: !135, line: 598, column: 17)
!1590 = !DILocation(line: 598, column: 27, scope: !1589)
!1591 = !DILocation(line: 598, column: 17, scope: !1577)
!1592 = !DILocation(line: 599, column: 17, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !135, line: 598, column: 33)
!1594 = !DILocation(line: 599, column: 22, scope: !1593)
!1595 = !DILocation(line: 599, column: 28, scope: !1593)
!1596 = !DILocation(line: 600, column: 13, scope: !1593)
!1597 = !DILocation(line: 600, column: 24, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1589, file: !135, line: 600, column: 24)
!1599 = !DILocation(line: 600, column: 34, scope: !1598)
!1600 = !DILocation(line: 600, column: 24, scope: !1589)
!1601 = !DILocation(line: 601, column: 17, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !135, line: 600, column: 40)
!1603 = !DILocation(line: 601, column: 22, scope: !1602)
!1604 = !DILocation(line: 601, column: 28, scope: !1602)
!1605 = !DILocation(line: 603, column: 17, scope: !1602)
!1606 = !DILocation(line: 603, column: 22, scope: !1602)
!1607 = !DILocation(line: 603, column: 31, scope: !1602)
!1608 = !DILocation(line: 604, column: 13, scope: !1602)
!1609 = !DILocation(line: 605, column: 17, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1598, file: !135, line: 604, column: 20)
!1611 = !DILocation(line: 605, column: 22, scope: !1610)
!1612 = !DILocation(line: 605, column: 28, scope: !1610)
!1613 = !DILocation(line: 607, column: 13, scope: !1577)
!1614 = !DILocation(line: 614, column: 13, scope: !1577)
!1615 = !DILocation(line: 614, column: 18, scope: !1577)
!1616 = !DILocation(line: 614, column: 24, scope: !1577)
!1617 = !DILocation(line: 615, column: 13, scope: !1577)
!1618 = !DILocation(line: 617, column: 13, scope: !1577)
!1619 = !DILocation(line: 617, column: 21, scope: !1577)
!1620 = !DILocation(line: 617, column: 27, scope: !1577)
!1621 = !DILocation(line: 618, column: 13, scope: !1577)
!1622 = !DILocation(line: 619, column: 13, scope: !1577)
!1623 = !DILocation(line: 621, column: 5, scope: !1440)
!1624 = !DILocation(line: 514, column: 20, scope: !1434)
!1625 = !DILocation(line: 514, column: 5, scope: !1434)
!1626 = distinct !{!1626, !1438, !1627, !377}
!1627 = !DILocation(line: 621, column: 5, scope: !1435)
!1628 = !DILocalVariable(name: "keep_alive_timeout", scope: !1629, file: !135, line: 625, type: !112)
!1629 = distinct !DILexicalBlock(scope: !1404, file: !135, line: 624, column: 5)
!1630 = !DILocation(line: 625, column: 25, scope: !1629)
!1631 = !DILocation(line: 625, column: 46, scope: !1629)
!1632 = !DILocation(line: 625, column: 54, scope: !1629)
!1633 = !DILocation(line: 625, column: 100, scope: !1629)
!1634 = !DILocation(line: 625, column: 108, scope: !1629)
!1635 = !DILocation(line: 625, column: 92, scope: !1629)
!1636 = !DILocation(line: 625, column: 120, scope: !1629)
!1637 = !DILocation(line: 625, column: 74, scope: !1629)
!1638 = !DILocation(line: 625, column: 72, scope: !1629)
!1639 = !DILocation(line: 626, column: 13, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1629, file: !135, line: 626, column: 13)
!1641 = !DILocation(line: 626, column: 31, scope: !1640)
!1642 = !DILocation(line: 626, column: 29, scope: !1640)
!1643 = !DILocation(line: 626, column: 13, scope: !1629)
!1644 = !DILocalVariable(name: "rv", scope: !1645, file: !135, line: 627, type: !789)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !135, line: 626, column: 51)
!1646 = !DILocation(line: 627, column: 19, scope: !1645)
!1647 = !DILocation(line: 627, column: 36, scope: !1645)
!1648 = !DILocation(line: 627, column: 24, scope: !1645)
!1649 = !DILocation(line: 628, column: 15, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !135, line: 628, column: 15)
!1651 = !DILocation(line: 628, column: 18, scope: !1650)
!1652 = !DILocation(line: 628, column: 15, scope: !1645)
!1653 = !DILocation(line: 629, column: 29, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !135, line: 628, column: 30)
!1655 = !DILocation(line: 629, column: 13, scope: !1654)
!1656 = !DILocation(line: 629, column: 21, scope: !1654)
!1657 = !DILocation(line: 629, column: 27, scope: !1654)
!1658 = !DILocation(line: 630, column: 13, scope: !1654)
!1659 = !DILocation(line: 631, column: 20, scope: !1654)
!1660 = !DILocation(line: 631, column: 13, scope: !1654)
!1661 = !DILocation(line: 633, column: 9, scope: !1645)
!1662 = !DILocation(line: 636, column: 5, scope: !1404)
!1663 = !DILocation(line: 637, column: 5, scope: !1404)
!1664 = !DILocation(line: 638, column: 1, scope: !1404)
!1665 = distinct !DISubprogram(name: "__mqtt_ping", scope: !135, file: !135, line: 445, type: !620, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!1666 = !DILocalVariable(name: "client", arg: 1, scope: !1665, file: !135, line: 445, type: !622)
!1667 = !DILocation(line: 445, column: 49, scope: !1665)
!1668 = !DILocalVariable(name: "rv", scope: !1665, file: !135, line: 447, type: !789)
!1669 = !DILocation(line: 447, column: 13, scope: !1665)
!1670 = !DILocalVariable(name: "msg", scope: !1665, file: !135, line: 448, type: !96)
!1671 = !DILocation(line: 448, column: 33, scope: !1665)
!1672 = !DILocation(line: 451, column: 5, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1665, file: !135, line: 451, column: 5)
!1674 = !DILocation(line: 451, column: 5, scope: !1665)
!1675 = !DILocation(line: 451, column: 5, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1673, file: !135, line: 451, column: 5)
!1677 = !DILocation(line: 451, column: 5, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1665, file: !135, line: 451, column: 5)
!1679 = !DILocation(line: 451, column: 5, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1678, file: !135, line: 451, column: 5)
!1681 = !DILocation(line: 451, column: 5, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !135, line: 451, column: 5)
!1683 = !DILocation(line: 451, column: 5, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1682, file: !135, line: 451, column: 5)
!1685 = !DILocation(line: 451, column: 5, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1684, file: !135, line: 451, column: 5)
!1687 = !DILocation(line: 451, column: 5, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1686, file: !135, line: 451, column: 5)
!1689 = !DILocation(line: 451, column: 5, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !135, line: 451, column: 5)
!1691 = !DILocation(line: 451, column: 5, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1690, file: !135, line: 451, column: 5)
!1693 = !DILocation(line: 459, column: 5, scope: !1665)
!1694 = !DILocation(line: 459, column: 10, scope: !1665)
!1695 = !DILocation(line: 459, column: 23, scope: !1665)
!1696 = !DILocation(line: 462, column: 5, scope: !1665)
!1697 = !DILocation(line: 463, column: 1, scope: !1665)
!1698 = distinct !DISubprogram(name: "mqtt_pack_ping_request", scope: !135, file: !135, line: 1253, type: !1699, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!789, !100, !107}
!1701 = !DILocalVariable(name: "buf", arg: 1, scope: !1698, file: !135, line: 1253, type: !100)
!1702 = !DILocation(line: 1253, column: 41, scope: !1698)
!1703 = !DILocalVariable(name: "bufsz", arg: 2, scope: !1698, file: !135, line: 1253, type: !107)
!1704 = !DILocation(line: 1253, column: 53, scope: !1698)
!1705 = !DILocalVariable(name: "fixed_header", scope: !1698, file: !135, line: 1254, type: !798)
!1706 = !DILocation(line: 1254, column: 30, scope: !1698)
!1707 = !DILocation(line: 1255, column: 18, scope: !1698)
!1708 = !DILocation(line: 1255, column: 31, scope: !1698)
!1709 = !DILocation(line: 1256, column: 18, scope: !1698)
!1710 = !DILocation(line: 1256, column: 32, scope: !1698)
!1711 = !DILocation(line: 1257, column: 18, scope: !1698)
!1712 = !DILocation(line: 1257, column: 35, scope: !1698)
!1713 = !DILocation(line: 1258, column: 35, scope: !1698)
!1714 = !DILocation(line: 1258, column: 40, scope: !1698)
!1715 = !DILocation(line: 1258, column: 12, scope: !1698)
!1716 = !DILocation(line: 1258, column: 5, scope: !1698)
!1717 = distinct !DISubprogram(name: "mqtt_mq_clean", scope: !135, file: !135, line: 1632, type: !1718, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!1721 = !DILocalVariable(name: "mq", arg: 1, scope: !1717, file: !135, line: 1632, type: !1720)
!1722 = !DILocation(line: 1632, column: 47, scope: !1717)
!1723 = !DILocalVariable(name: "new_head", scope: !1717, file: !135, line: 1633, type: !96)
!1724 = !DILocation(line: 1633, column: 33, scope: !1717)
!1725 = !DILocation(line: 1635, column: 20, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1717, file: !135, line: 1635, column: 5)
!1727 = !DILocation(line: 1635, column: 18, scope: !1726)
!1728 = !DILocation(line: 1635, column: 9, scope: !1726)
!1729 = !DILocation(line: 1635, column: 40, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1726, file: !135, line: 1635, column: 5)
!1731 = !DILocation(line: 1635, column: 52, scope: !1730)
!1732 = !DILocation(line: 1635, column: 56, scope: !1730)
!1733 = !DILocation(line: 1635, column: 49, scope: !1730)
!1734 = !DILocation(line: 1635, column: 5, scope: !1726)
!1735 = !DILocation(line: 1636, column: 13, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !135, line: 1636, column: 13)
!1737 = distinct !DILexicalBlock(scope: !1730, file: !135, line: 1635, column: 80)
!1738 = !DILocation(line: 1636, column: 23, scope: !1736)
!1739 = !DILocation(line: 1636, column: 29, scope: !1736)
!1740 = !DILocation(line: 1636, column: 13, scope: !1737)
!1741 = !DILocation(line: 1636, column: 54, scope: !1736)
!1742 = !DILocation(line: 1637, column: 5, scope: !1737)
!1743 = !DILocation(line: 1635, column: 68, scope: !1730)
!1744 = !DILocation(line: 1635, column: 5, scope: !1730)
!1745 = distinct !{!1745, !1734, !1746, !377}
!1746 = !DILocation(line: 1637, column: 5, scope: !1726)
!1747 = !DILocation(line: 1640, column: 9, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1717, file: !135, line: 1640, column: 9)
!1749 = !DILocation(line: 1640, column: 20, scope: !1748)
!1750 = !DILocation(line: 1640, column: 24, scope: !1748)
!1751 = !DILocation(line: 1640, column: 18, scope: !1748)
!1752 = !DILocation(line: 1640, column: 9, scope: !1717)
!1753 = !DILocation(line: 1641, column: 20, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1748, file: !135, line: 1640, column: 36)
!1755 = !DILocation(line: 1641, column: 24, scope: !1754)
!1756 = !DILocation(line: 1641, column: 9, scope: !1754)
!1757 = !DILocation(line: 1641, column: 13, scope: !1754)
!1758 = !DILocation(line: 1641, column: 18, scope: !1754)
!1759 = !DILocation(line: 1642, column: 26, scope: !1754)
!1760 = !DILocation(line: 1642, column: 30, scope: !1754)
!1761 = !DILocation(line: 1642, column: 9, scope: !1754)
!1762 = !DILocation(line: 1642, column: 13, scope: !1754)
!1763 = !DILocation(line: 1642, column: 24, scope: !1754)
!1764 = !DILocation(line: 1643, column: 23, scope: !1754)
!1765 = !DILocation(line: 1643, column: 9, scope: !1754)
!1766 = !DILocation(line: 1643, column: 13, scope: !1754)
!1767 = !DILocation(line: 1643, column: 21, scope: !1754)
!1768 = !DILocation(line: 1644, column: 9, scope: !1754)
!1769 = !DILocation(line: 1645, column: 16, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1748, file: !135, line: 1645, column: 16)
!1771 = !DILocation(line: 1645, column: 28, scope: !1770)
!1772 = !DILocation(line: 1645, column: 25, scope: !1770)
!1773 = !DILocation(line: 1645, column: 16, scope: !1748)
!1774 = !DILocation(line: 1647, column: 9, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1770, file: !135, line: 1645, column: 48)
!1776 = !DILocalVariable(name: "n", scope: !1777, file: !135, line: 1652, type: !107)
!1777 = distinct !DILexicalBlock(scope: !1717, file: !135, line: 1651, column: 5)
!1778 = !DILocation(line: 1652, column: 16, scope: !1777)
!1779 = !DILocation(line: 1652, column: 20, scope: !1777)
!1780 = !DILocation(line: 1652, column: 24, scope: !1777)
!1781 = !DILocation(line: 1652, column: 31, scope: !1777)
!1782 = !DILocation(line: 1652, column: 41, scope: !1777)
!1783 = !DILocation(line: 1652, column: 29, scope: !1777)
!1784 = !DILocalVariable(name: "removing", scope: !1777, file: !135, line: 1653, type: !107)
!1785 = !DILocation(line: 1653, column: 16, scope: !1777)
!1786 = !DILocation(line: 1653, column: 27, scope: !1777)
!1787 = !DILocation(line: 1653, column: 37, scope: !1777)
!1788 = !DILocation(line: 1653, column: 56, scope: !1777)
!1789 = !DILocation(line: 1653, column: 60, scope: !1777)
!1790 = !DILocation(line: 1653, column: 43, scope: !1777)
!1791 = !DILocation(line: 1654, column: 17, scope: !1777)
!1792 = !DILocation(line: 1654, column: 21, scope: !1777)
!1793 = !DILocation(line: 1654, column: 32, scope: !1777)
!1794 = !DILocation(line: 1654, column: 42, scope: !1777)
!1795 = !DILocation(line: 1654, column: 49, scope: !1777)
!1796 = !DILocation(line: 1654, column: 9, scope: !1777)
!1797 = !DILocation(line: 1655, column: 36, scope: !1777)
!1798 = !DILocation(line: 1655, column: 40, scope: !1777)
!1799 = !DILocation(line: 1655, column: 52, scope: !1777)
!1800 = !DILocation(line: 1655, column: 50, scope: !1777)
!1801 = !DILocation(line: 1655, column: 9, scope: !1777)
!1802 = !DILocation(line: 1655, column: 13, scope: !1777)
!1803 = !DILocation(line: 1655, column: 18, scope: !1777)
!1804 = !DILocalVariable(name: "new_tail_idx", scope: !1805, file: !135, line: 1660, type: !789)
!1805 = distinct !DILexicalBlock(scope: !1777, file: !135, line: 1659, column: 9)
!1806 = !DILocation(line: 1660, column: 21, scope: !1805)
!1807 = !DILocation(line: 1660, column: 36, scope: !1805)
!1808 = !DILocation(line: 1660, column: 47, scope: !1805)
!1809 = !DILocation(line: 1660, column: 51, scope: !1805)
!1810 = !DILocation(line: 1660, column: 45, scope: !1805)
!1811 = !DILocation(line: 1661, column: 21, scope: !1805)
!1812 = !DILocation(line: 1661, column: 13, scope: !1805)
!1813 = !DILocation(line: 1661, column: 52, scope: !1805)
!1814 = !DILocation(line: 1661, column: 56, scope: !1805)
!1815 = !DILocation(line: 1661, column: 106, scope: !1805)
!1816 = !DILocation(line: 1661, column: 119, scope: !1805)
!1817 = !DILocation(line: 1661, column: 103, scope: !1805)
!1818 = !DILocation(line: 1662, column: 30, scope: !1805)
!1819 = !DILocation(line: 1662, column: 13, scope: !1805)
!1820 = !DILocation(line: 1662, column: 17, scope: !1805)
!1821 = !DILocation(line: 1662, column: 28, scope: !1805)
!1822 = !DILocalVariable(name: "i", scope: !1823, file: !135, line: 1666, type: !789)
!1823 = distinct !DILexicalBlock(scope: !1805, file: !135, line: 1664, column: 13)
!1824 = !DILocation(line: 1666, column: 25, scope: !1823)
!1825 = !DILocation(line: 1667, column: 17, scope: !1823)
!1826 = !DILocation(line: 1667, column: 23, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !135, line: 1667, column: 17)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !135, line: 1667, column: 17)
!1829 = !DILocation(line: 1667, column: 27, scope: !1827)
!1830 = !DILocation(line: 1667, column: 40, scope: !1827)
!1831 = !DILocation(line: 1667, column: 25, scope: !1827)
!1832 = !DILocation(line: 1667, column: 17, scope: !1828)
!1833 = !DILocation(line: 1668, column: 50, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1827, file: !135, line: 1667, column: 50)
!1835 = !DILocation(line: 1668, column: 21, scope: !1834)
!1836 = !DILocation(line: 1668, column: 41, scope: !1834)
!1837 = !DILocation(line: 1668, column: 47, scope: !1834)
!1838 = !DILocation(line: 1669, column: 17, scope: !1834)
!1839 = !DILocation(line: 1667, column: 45, scope: !1827)
!1840 = !DILocation(line: 1667, column: 17, scope: !1827)
!1841 = distinct !{!1841, !1832, !1842, !377}
!1842 = !DILocation(line: 1669, column: 17, scope: !1828)
!1843 = !DILocation(line: 1675, column: 19, scope: !1717)
!1844 = !DILocation(line: 1675, column: 5, scope: !1717)
!1845 = !DILocation(line: 1675, column: 9, scope: !1717)
!1846 = !DILocation(line: 1675, column: 17, scope: !1717)
!1847 = !DILocation(line: 1676, column: 1, scope: !1717)
!1848 = distinct !DISubprogram(name: "mqtt_mq_register", scope: !135, file: !135, line: 1617, type: !1849, scopeLine: 1618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!96, !1720, !107}
!1851 = !DILocalVariable(name: "mq", arg: 1, scope: !1848, file: !135, line: 1617, type: !1720)
!1852 = !DILocation(line: 1617, column: 73, scope: !1848)
!1853 = !DILocalVariable(name: "nbytes", arg: 2, scope: !1848, file: !135, line: 1617, type: !107)
!1854 = !DILocation(line: 1617, column: 84, scope: !1848)
!1855 = !DILocation(line: 1620, column: 8, scope: !1848)
!1856 = !DILocation(line: 1620, column: 12, scope: !1848)
!1857 = !DILocation(line: 1620, column: 5, scope: !1848)
!1858 = !DILocation(line: 1621, column: 29, scope: !1848)
!1859 = !DILocation(line: 1621, column: 33, scope: !1848)
!1860 = !DILocation(line: 1621, column: 5, scope: !1848)
!1861 = !DILocation(line: 1621, column: 9, scope: !1848)
!1862 = !DILocation(line: 1621, column: 21, scope: !1848)
!1863 = !DILocation(line: 1621, column: 27, scope: !1848)
!1864 = !DILocation(line: 1622, column: 28, scope: !1848)
!1865 = !DILocation(line: 1622, column: 5, scope: !1848)
!1866 = !DILocation(line: 1622, column: 9, scope: !1848)
!1867 = !DILocation(line: 1622, column: 21, scope: !1848)
!1868 = !DILocation(line: 1622, column: 26, scope: !1848)
!1869 = !DILocation(line: 1623, column: 5, scope: !1848)
!1870 = !DILocation(line: 1623, column: 9, scope: !1848)
!1871 = !DILocation(line: 1623, column: 21, scope: !1848)
!1872 = !DILocation(line: 1623, column: 27, scope: !1848)
!1873 = !DILocation(line: 1626, column: 17, scope: !1848)
!1874 = !DILocation(line: 1626, column: 5, scope: !1848)
!1875 = !DILocation(line: 1626, column: 9, scope: !1848)
!1876 = !DILocation(line: 1626, column: 14, scope: !1848)
!1877 = !DILocation(line: 1627, column: 19, scope: !1848)
!1878 = !DILocation(line: 1627, column: 5, scope: !1848)
!1879 = !DILocation(line: 1627, column: 9, scope: !1848)
!1880 = !DILocation(line: 1627, column: 17, scope: !1848)
!1881 = !DILocation(line: 1629, column: 12, scope: !1848)
!1882 = !DILocation(line: 1629, column: 16, scope: !1848)
!1883 = !DILocation(line: 1629, column: 5, scope: !1848)
!1884 = distinct !DISubprogram(name: "mqtt_pack_fixed_header", scope: !135, file: !135, line: 1039, type: !1885, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!789, !100, !107, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!1889 = !DILocalVariable(name: "buf", arg: 1, scope: !1884, file: !135, line: 1039, type: !100)
!1890 = !DILocation(line: 1039, column: 41, scope: !1884)
!1891 = !DILocalVariable(name: "bufsz", arg: 2, scope: !1884, file: !135, line: 1039, type: !107)
!1892 = !DILocation(line: 1039, column: 53, scope: !1884)
!1893 = !DILocalVariable(name: "fixed_header", arg: 3, scope: !1884, file: !135, line: 1039, type: !1887)
!1894 = !DILocation(line: 1039, column: 92, scope: !1884)
!1895 = !DILocalVariable(name: "start", scope: !1884, file: !135, line: 1040, type: !833)
!1896 = !DILocation(line: 1040, column: 20, scope: !1884)
!1897 = !DILocation(line: 1040, column: 28, scope: !1884)
!1898 = !DILocalVariable(name: "errcode", scope: !1884, file: !135, line: 1041, type: !789)
!1899 = !DILocation(line: 1041, column: 13, scope: !1884)
!1900 = !DILocalVariable(name: "remaining_length", scope: !1884, file: !135, line: 1042, type: !130)
!1901 = !DILocation(line: 1042, column: 14, scope: !1884)
!1902 = !DILocation(line: 1045, column: 9, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1884, file: !135, line: 1045, column: 9)
!1904 = !DILocation(line: 1045, column: 22, scope: !1903)
!1905 = !DILocation(line: 1045, column: 30, scope: !1903)
!1906 = !DILocation(line: 1045, column: 33, scope: !1903)
!1907 = !DILocation(line: 1045, column: 37, scope: !1903)
!1908 = !DILocation(line: 1045, column: 9, scope: !1884)
!1909 = !DILocation(line: 1046, column: 9, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1903, file: !135, line: 1045, column: 46)
!1911 = !DILocation(line: 1050, column: 48, scope: !1884)
!1912 = !DILocation(line: 1050, column: 15, scope: !1884)
!1913 = !DILocation(line: 1050, column: 13, scope: !1884)
!1914 = !DILocation(line: 1051, column: 9, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1884, file: !135, line: 1051, column: 9)
!1916 = !DILocation(line: 1051, column: 9, scope: !1884)
!1917 = !DILocation(line: 1052, column: 16, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !135, line: 1051, column: 18)
!1919 = !DILocation(line: 1052, column: 9, scope: !1918)
!1920 = !DILocation(line: 1056, column: 9, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1884, file: !135, line: 1056, column: 9)
!1922 = !DILocation(line: 1056, column: 15, scope: !1921)
!1923 = !DILocation(line: 1056, column: 9, scope: !1884)
!1924 = !DILocation(line: 1056, column: 21, scope: !1921)
!1925 = !DILocation(line: 1059, column: 25, scope: !1884)
!1926 = !DILocation(line: 1059, column: 39, scope: !1884)
!1927 = !DILocation(line: 1059, column: 15, scope: !1884)
!1928 = !DILocation(line: 1059, column: 14, scope: !1884)
!1929 = !DILocation(line: 1059, column: 53, scope: !1884)
!1930 = !DILocation(line: 1059, column: 59, scope: !1884)
!1931 = !DILocation(line: 1059, column: 13, scope: !1884)
!1932 = !DILocation(line: 1059, column: 6, scope: !1884)
!1933 = !DILocation(line: 1059, column: 10, scope: !1884)
!1934 = !DILocation(line: 1060, column: 24, scope: !1884)
!1935 = !DILocation(line: 1060, column: 38, scope: !1884)
!1936 = !DILocation(line: 1060, column: 14, scope: !1884)
!1937 = !DILocation(line: 1060, column: 13, scope: !1884)
!1938 = !DILocation(line: 1060, column: 59, scope: !1884)
!1939 = !DILocation(line: 1060, column: 6, scope: !1884)
!1940 = !DILocation(line: 1060, column: 10, scope: !1884)
!1941 = !DILocation(line: 1062, column: 24, scope: !1884)
!1942 = !DILocation(line: 1062, column: 38, scope: !1884)
!1943 = !DILocation(line: 1062, column: 22, scope: !1884)
!1944 = !DILocation(line: 1065, column: 8, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1884, file: !135, line: 1065, column: 8)
!1946 = !DILocation(line: 1065, column: 25, scope: !1945)
!1947 = !DILocation(line: 1065, column: 8, scope: !1884)
!1948 = !DILocation(line: 1066, column: 9, scope: !1945)
!1949 = !DILocation(line: 1068, column: 5, scope: !1884)
!1950 = !DILocation(line: 1070, column: 9, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1884, file: !135, line: 1068, column: 8)
!1952 = !DILocation(line: 1071, column: 9, scope: !1951)
!1953 = !DILocation(line: 1072, column: 13, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !135, line: 1072, column: 13)
!1955 = !DILocation(line: 1072, column: 19, scope: !1954)
!1956 = !DILocation(line: 1072, column: 13, scope: !1951)
!1957 = !DILocation(line: 1072, column: 25, scope: !1954)
!1958 = !DILocation(line: 1075, column: 17, scope: !1951)
!1959 = !DILocation(line: 1075, column: 34, scope: !1951)
!1960 = !DILocation(line: 1075, column: 10, scope: !1951)
!1961 = !DILocation(line: 1075, column: 15, scope: !1951)
!1962 = !DILocation(line: 1076, column: 12, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1951, file: !135, line: 1076, column: 12)
!1964 = !DILocation(line: 1076, column: 29, scope: !1963)
!1965 = !DILocation(line: 1076, column: 12, scope: !1951)
!1966 = !DILocation(line: 1076, column: 37, scope: !1963)
!1967 = !DILocation(line: 1076, column: 41, scope: !1963)
!1968 = !DILocation(line: 1076, column: 36, scope: !1963)
!1969 = !DILocation(line: 1077, column: 28, scope: !1951)
!1970 = !DILocation(line: 1077, column: 45, scope: !1951)
!1971 = !DILocation(line: 1077, column: 26, scope: !1951)
!1972 = !DILocation(line: 1078, column: 5, scope: !1951)
!1973 = !DILocation(line: 1078, column: 14, scope: !1884)
!1974 = !DILocation(line: 1078, column: 13, scope: !1884)
!1975 = !DILocation(line: 1078, column: 18, scope: !1884)
!1976 = distinct !{!1976, !1949, !1977, !377}
!1977 = !DILocation(line: 1078, column: 24, scope: !1884)
!1978 = !DILocation(line: 1081, column: 5, scope: !1884)
!1979 = !DILocation(line: 1082, column: 5, scope: !1884)
!1980 = !DILocation(line: 1085, column: 9, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1884, file: !135, line: 1085, column: 9)
!1982 = !DILocation(line: 1085, column: 17, scope: !1981)
!1983 = !DILocation(line: 1085, column: 31, scope: !1981)
!1984 = !DILocation(line: 1085, column: 15, scope: !1981)
!1985 = !DILocation(line: 1085, column: 9, scope: !1884)
!1986 = !DILocation(line: 1086, column: 9, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1981, file: !135, line: 1085, column: 49)
!1988 = !DILocation(line: 1090, column: 12, scope: !1884)
!1989 = !DILocation(line: 1090, column: 18, scope: !1884)
!1990 = !DILocation(line: 1090, column: 16, scope: !1884)
!1991 = !DILocation(line: 1090, column: 5, scope: !1884)
!1992 = !DILocation(line: 1091, column: 1, scope: !1884)
!1993 = distinct !DISubprogram(name: "mqtt_fixed_header_rule_violation", scope: !135, file: !135, line: 956, type: !1994, scopeLine: 956, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!789, !1887}
!1996 = !DILocalVariable(name: "fixed_header", arg: 1, scope: !1993, file: !135, line: 956, type: !1887)
!1997 = !DILocation(line: 956, column: 81, scope: !1993)
!1998 = !DILocalVariable(name: "control_type", scope: !1993, file: !135, line: 957, type: !101)
!1999 = !DILocation(line: 957, column: 13, scope: !1993)
!2000 = !DILocalVariable(name: "control_flags", scope: !1993, file: !135, line: 958, type: !101)
!2001 = !DILocation(line: 958, column: 13, scope: !1993)
!2002 = !DILocalVariable(name: "required_flags", scope: !1993, file: !135, line: 959, type: !101)
!2003 = !DILocation(line: 959, column: 13, scope: !1993)
!2004 = !DILocalVariable(name: "mask_required_flags", scope: !1993, file: !135, line: 960, type: !101)
!2005 = !DILocation(line: 960, column: 13, scope: !1993)
!2006 = !DILocation(line: 963, column: 20, scope: !1993)
!2007 = !DILocation(line: 963, column: 34, scope: !1993)
!2008 = !DILocation(line: 963, column: 18, scope: !1993)
!2009 = !DILocation(line: 964, column: 21, scope: !1993)
!2010 = !DILocation(line: 964, column: 35, scope: !1993)
!2011 = !DILocation(line: 964, column: 19, scope: !1993)
!2012 = !DILocation(line: 965, column: 61, scope: !1993)
!2013 = !DILocation(line: 965, column: 22, scope: !1993)
!2014 = !DILocation(line: 965, column: 20, scope: !1993)
!2015 = !DILocation(line: 966, column: 71, scope: !1993)
!2016 = !DILocation(line: 966, column: 27, scope: !1993)
!2017 = !DILocation(line: 966, column: 25, scope: !1993)
!2018 = !DILocation(line: 969, column: 56, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1993, file: !135, line: 969, column: 9)
!2020 = !DILocation(line: 969, column: 10, scope: !2019)
!2021 = !DILocation(line: 969, column: 9, scope: !1993)
!2022 = !DILocation(line: 970, column: 9, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !135, line: 969, column: 71)
!2024 = !DILocation(line: 974, column: 8, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1993, file: !135, line: 974, column: 8)
!2026 = !DILocation(line: 974, column: 8, scope: !1993)
!2027 = !DILocation(line: 975, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !135, line: 974, column: 91)
!2029 = !DILocation(line: 978, column: 5, scope: !1993)
!2030 = !DILocation(line: 979, column: 1, scope: !1993)
!2031 = distinct !DISubprogram(name: "mqtt_unpack_response", scope: !135, file: !135, line: 1694, type: !2032, scopeLine: 1694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!789, !2034, !833, !107}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!2035 = !DILocalVariable(name: "response", arg: 1, scope: !2031, file: !135, line: 1694, type: !2034)
!2036 = !DILocation(line: 1694, column: 52, scope: !2031)
!2037 = !DILocalVariable(name: "buf", arg: 2, scope: !2031, file: !135, line: 1694, type: !833)
!2038 = !DILocation(line: 1694, column: 77, scope: !2031)
!2039 = !DILocalVariable(name: "bufsz", arg: 3, scope: !2031, file: !135, line: 1694, type: !107)
!2040 = !DILocation(line: 1694, column: 89, scope: !2031)
!2041 = !DILocalVariable(name: "start", scope: !2031, file: !135, line: 1695, type: !2042)
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!2043 = !DILocation(line: 1695, column: 26, scope: !2031)
!2044 = !DILocation(line: 1695, column: 34, scope: !2031)
!2045 = !DILocalVariable(name: "rv", scope: !2031, file: !135, line: 1696, type: !789)
!2046 = !DILocation(line: 1696, column: 13, scope: !2031)
!2047 = !DILocation(line: 1696, column: 43, scope: !2031)
!2048 = !DILocation(line: 1696, column: 53, scope: !2031)
!2049 = !DILocation(line: 1696, column: 58, scope: !2031)
!2050 = !DILocation(line: 1696, column: 18, scope: !2031)
!2051 = !DILocation(line: 1697, column: 9, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2031, file: !135, line: 1697, column: 9)
!2053 = !DILocation(line: 1697, column: 12, scope: !2052)
!2054 = !DILocation(line: 1697, column: 9, scope: !2031)
!2055 = !DILocation(line: 1697, column: 25, scope: !2052)
!2056 = !DILocation(line: 1697, column: 18, scope: !2052)
!2057 = !DILocation(line: 1698, column: 17, scope: !2052)
!2058 = !DILocation(line: 1698, column: 14, scope: !2052)
!2059 = !DILocation(line: 1699, column: 12, scope: !2031)
!2060 = !DILocation(line: 1699, column: 22, scope: !2031)
!2061 = !DILocation(line: 1699, column: 35, scope: !2031)
!2062 = !DILocation(line: 1699, column: 5, scope: !2031)
!2063 = !DILocation(line: 1701, column: 47, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2031, file: !135, line: 1699, column: 49)
!2065 = !DILocation(line: 1701, column: 57, scope: !2064)
!2066 = !DILocation(line: 1701, column: 18, scope: !2064)
!2067 = !DILocation(line: 1701, column: 16, scope: !2064)
!2068 = !DILocation(line: 1702, column: 13, scope: !2064)
!2069 = !DILocation(line: 1704, column: 47, scope: !2064)
!2070 = !DILocation(line: 1704, column: 57, scope: !2064)
!2071 = !DILocation(line: 1704, column: 18, scope: !2064)
!2072 = !DILocation(line: 1704, column: 16, scope: !2064)
!2073 = !DILocation(line: 1705, column: 13, scope: !2064)
!2074 = !DILocation(line: 1707, column: 46, scope: !2064)
!2075 = !DILocation(line: 1707, column: 56, scope: !2064)
!2076 = !DILocation(line: 1707, column: 18, scope: !2064)
!2077 = !DILocation(line: 1707, column: 16, scope: !2064)
!2078 = !DILocation(line: 1708, column: 13, scope: !2064)
!2079 = !DILocation(line: 1710, column: 46, scope: !2064)
!2080 = !DILocation(line: 1710, column: 56, scope: !2064)
!2081 = !DILocation(line: 1710, column: 18, scope: !2064)
!2082 = !DILocation(line: 1710, column: 16, scope: !2064)
!2083 = !DILocation(line: 1711, column: 13, scope: !2064)
!2084 = !DILocation(line: 1713, column: 46, scope: !2064)
!2085 = !DILocation(line: 1713, column: 56, scope: !2064)
!2086 = !DILocation(line: 1713, column: 18, scope: !2064)
!2087 = !DILocation(line: 1713, column: 16, scope: !2064)
!2088 = !DILocation(line: 1714, column: 13, scope: !2064)
!2089 = !DILocation(line: 1716, column: 46, scope: !2064)
!2090 = !DILocation(line: 1716, column: 56, scope: !2064)
!2091 = !DILocation(line: 1716, column: 18, scope: !2064)
!2092 = !DILocation(line: 1716, column: 16, scope: !2064)
!2093 = !DILocation(line: 1717, column: 13, scope: !2064)
!2094 = !DILocation(line: 1719, column: 46, scope: !2064)
!2095 = !DILocation(line: 1719, column: 56, scope: !2064)
!2096 = !DILocation(line: 1719, column: 18, scope: !2064)
!2097 = !DILocation(line: 1719, column: 16, scope: !2064)
!2098 = !DILocation(line: 1720, column: 13, scope: !2064)
!2099 = !DILocation(line: 1722, column: 48, scope: !2064)
!2100 = !DILocation(line: 1722, column: 58, scope: !2064)
!2101 = !DILocation(line: 1722, column: 18, scope: !2064)
!2102 = !DILocation(line: 1722, column: 16, scope: !2064)
!2103 = !DILocation(line: 1723, column: 13, scope: !2064)
!2104 = !DILocation(line: 1725, column: 20, scope: !2064)
!2105 = !DILocation(line: 1725, column: 13, scope: !2064)
!2106 = !DILocation(line: 1727, column: 13, scope: !2064)
!2107 = !DILocation(line: 1730, column: 9, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2031, file: !135, line: 1730, column: 9)
!2109 = !DILocation(line: 1730, column: 12, scope: !2108)
!2110 = !DILocation(line: 1730, column: 9, scope: !2031)
!2111 = !DILocation(line: 1730, column: 24, scope: !2108)
!2112 = !DILocation(line: 1730, column: 17, scope: !2108)
!2113 = !DILocation(line: 1731, column: 12, scope: !2031)
!2114 = !DILocation(line: 1731, column: 9, scope: !2031)
!2115 = !DILocation(line: 1732, column: 12, scope: !2031)
!2116 = !DILocation(line: 1732, column: 18, scope: !2031)
!2117 = !DILocation(line: 1732, column: 16, scope: !2031)
!2118 = !DILocation(line: 1732, column: 5, scope: !2031)
!2119 = !DILocation(line: 1733, column: 1, scope: !2031)
!2120 = distinct !DISubprogram(name: "mqtt_mq_find", scope: !135, file: !135, line: 1678, type: !2121, scopeLine: 1679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!96, !1720, !45, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!2124 = !DILocalVariable(name: "mq", arg: 1, scope: !2120, file: !135, line: 1678, type: !1720)
!2125 = !DILocation(line: 1678, column: 69, scope: !2120)
!2126 = !DILocalVariable(name: "control_type", arg: 2, scope: !2120, file: !135, line: 1678, type: !45)
!2127 = !DILocation(line: 1678, column: 100, scope: !2120)
!2128 = !DILocalVariable(name: "packet_id", arg: 3, scope: !2120, file: !135, line: 1678, type: !2123)
!2129 = !DILocation(line: 1678, column: 124, scope: !2120)
!2130 = !DILocalVariable(name: "curr", scope: !2120, file: !135, line: 1680, type: !96)
!2131 = !DILocation(line: 1680, column: 33, scope: !2120)
!2132 = !DILocation(line: 1681, column: 16, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2120, file: !135, line: 1681, column: 5)
!2134 = !DILocation(line: 1681, column: 14, scope: !2133)
!2135 = !DILocation(line: 1681, column: 9, scope: !2133)
!2136 = !DILocation(line: 1681, column: 36, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2133, file: !135, line: 1681, column: 5)
!2138 = !DILocation(line: 1681, column: 44, scope: !2137)
!2139 = !DILocation(line: 1681, column: 48, scope: !2137)
!2140 = !DILocation(line: 1681, column: 41, scope: !2137)
!2141 = !DILocation(line: 1681, column: 5, scope: !2133)
!2142 = !DILocation(line: 1682, column: 13, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !135, line: 1682, column: 13)
!2144 = distinct !DILexicalBlock(scope: !2137, file: !135, line: 1681, column: 68)
!2145 = !DILocation(line: 1682, column: 19, scope: !2143)
!2146 = !DILocation(line: 1682, column: 35, scope: !2143)
!2147 = !DILocation(line: 1682, column: 32, scope: !2143)
!2148 = !DILocation(line: 1682, column: 13, scope: !2144)
!2149 = !DILocation(line: 1683, column: 18, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !135, line: 1683, column: 17)
!2151 = distinct !DILexicalBlock(scope: !2143, file: !135, line: 1682, column: 49)
!2152 = !DILocation(line: 1683, column: 28, scope: !2150)
!2153 = !DILocation(line: 1683, column: 36, scope: !2150)
!2154 = !DILocation(line: 1683, column: 39, scope: !2150)
!2155 = !DILocation(line: 1683, column: 45, scope: !2150)
!2156 = !DILocation(line: 1683, column: 51, scope: !2150)
!2157 = !DILocation(line: 1683, column: 76, scope: !2150)
!2158 = !DILocation(line: 1684, column: 18, scope: !2150)
!2159 = !DILocation(line: 1684, column: 28, scope: !2150)
!2160 = !DILocation(line: 1684, column: 36, scope: !2150)
!2161 = !DILocation(line: 1684, column: 40, scope: !2150)
!2162 = !DILocation(line: 1684, column: 39, scope: !2150)
!2163 = !DILocation(line: 1684, column: 53, scope: !2150)
!2164 = !DILocation(line: 1684, column: 59, scope: !2150)
!2165 = !DILocation(line: 1684, column: 50, scope: !2150)
!2166 = !DILocation(line: 1683, column: 17, scope: !2151)
!2167 = !DILocation(line: 1685, column: 24, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2150, file: !135, line: 1684, column: 71)
!2169 = !DILocation(line: 1685, column: 17, scope: !2168)
!2170 = !DILocation(line: 1687, column: 9, scope: !2151)
!2171 = !DILocation(line: 1688, column: 5, scope: !2144)
!2172 = !DILocation(line: 1681, column: 60, scope: !2137)
!2173 = !DILocation(line: 1681, column: 5, scope: !2137)
!2174 = distinct !{!2174, !2141, !2175, !377}
!2175 = !DILocation(line: 1688, column: 5, scope: !2133)
!2176 = !DILocation(line: 1689, column: 5, scope: !2120)
!2177 = !DILocation(line: 1690, column: 1, scope: !2120)
!2178 = distinct !DISubprogram(name: "__mqtt_puback", scope: !135, file: !135, line: 296, type: !2179, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!789, !622, !120}
!2181 = !DILocalVariable(name: "client", arg: 1, scope: !2178, file: !135, line: 296, type: !622)
!2182 = !DILocation(line: 296, column: 43, scope: !2178)
!2183 = !DILocalVariable(name: "packet_id", arg: 2, scope: !2178, file: !135, line: 296, type: !120)
!2184 = !DILocation(line: 296, column: 60, scope: !2178)
!2185 = !DILocalVariable(name: "rv", scope: !2178, file: !135, line: 297, type: !789)
!2186 = !DILocation(line: 297, column: 13, scope: !2178)
!2187 = !DILocalVariable(name: "msg", scope: !2178, file: !135, line: 298, type: !96)
!2188 = !DILocation(line: 298, column: 33, scope: !2178)
!2189 = !DILocation(line: 301, column: 5, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2178, file: !135, line: 301, column: 5)
!2191 = !DILocation(line: 301, column: 5, scope: !2178)
!2192 = !DILocation(line: 301, column: 5, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2190, file: !135, line: 301, column: 5)
!2194 = !DILocation(line: 301, column: 5, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2178, file: !135, line: 301, column: 5)
!2196 = !DILocation(line: 301, column: 5, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2195, file: !135, line: 301, column: 5)
!2198 = !DILocation(line: 301, column: 5, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !135, line: 301, column: 5)
!2200 = !DILocation(line: 301, column: 5, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2199, file: !135, line: 301, column: 5)
!2202 = !DILocation(line: 301, column: 5, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2201, file: !135, line: 301, column: 5)
!2204 = !DILocation(line: 301, column: 5, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2203, file: !135, line: 301, column: 5)
!2206 = !DILocation(line: 301, column: 5, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !135, line: 301, column: 5)
!2208 = !DILocation(line: 301, column: 5, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2207, file: !135, line: 301, column: 5)
!2210 = !DILocation(line: 311, column: 5, scope: !2178)
!2211 = !DILocation(line: 311, column: 10, scope: !2178)
!2212 = !DILocation(line: 311, column: 23, scope: !2178)
!2213 = !DILocation(line: 312, column: 22, scope: !2178)
!2214 = !DILocation(line: 312, column: 5, scope: !2178)
!2215 = !DILocation(line: 312, column: 10, scope: !2178)
!2216 = !DILocation(line: 312, column: 20, scope: !2178)
!2217 = !DILocation(line: 314, column: 5, scope: !2178)
!2218 = !DILocation(line: 315, column: 1, scope: !2178)
!2219 = distinct !DISubprogram(name: "__mqtt_pubrec", scope: !135, file: !135, line: 317, type: !2179, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2220 = !DILocalVariable(name: "client", arg: 1, scope: !2219, file: !135, line: 317, type: !622)
!2221 = !DILocation(line: 317, column: 43, scope: !2219)
!2222 = !DILocalVariable(name: "packet_id", arg: 2, scope: !2219, file: !135, line: 317, type: !120)
!2223 = !DILocation(line: 317, column: 60, scope: !2219)
!2224 = !DILocalVariable(name: "rv", scope: !2219, file: !135, line: 318, type: !789)
!2225 = !DILocation(line: 318, column: 13, scope: !2219)
!2226 = !DILocalVariable(name: "msg", scope: !2219, file: !135, line: 319, type: !96)
!2227 = !DILocation(line: 319, column: 33, scope: !2219)
!2228 = !DILocation(line: 322, column: 5, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2219, file: !135, line: 322, column: 5)
!2230 = !DILocation(line: 322, column: 5, scope: !2219)
!2231 = !DILocation(line: 322, column: 5, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !135, line: 322, column: 5)
!2233 = !DILocation(line: 322, column: 5, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2219, file: !135, line: 322, column: 5)
!2235 = !DILocation(line: 322, column: 5, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2234, file: !135, line: 322, column: 5)
!2237 = !DILocation(line: 322, column: 5, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !135, line: 322, column: 5)
!2239 = !DILocation(line: 322, column: 5, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2238, file: !135, line: 322, column: 5)
!2241 = !DILocation(line: 322, column: 5, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2240, file: !135, line: 322, column: 5)
!2243 = !DILocation(line: 322, column: 5, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2242, file: !135, line: 322, column: 5)
!2245 = !DILocation(line: 322, column: 5, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !135, line: 322, column: 5)
!2247 = !DILocation(line: 322, column: 5, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2246, file: !135, line: 322, column: 5)
!2249 = !DILocation(line: 332, column: 5, scope: !2219)
!2250 = !DILocation(line: 332, column: 10, scope: !2219)
!2251 = !DILocation(line: 332, column: 23, scope: !2219)
!2252 = !DILocation(line: 333, column: 22, scope: !2219)
!2253 = !DILocation(line: 333, column: 5, scope: !2219)
!2254 = !DILocation(line: 333, column: 10, scope: !2219)
!2255 = !DILocation(line: 333, column: 20, scope: !2219)
!2256 = !DILocation(line: 335, column: 5, scope: !2219)
!2257 = !DILocation(line: 336, column: 1, scope: !2219)
!2258 = distinct !DISubprogram(name: "__mqtt_pubrel", scope: !135, file: !135, line: 338, type: !2179, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2259 = !DILocalVariable(name: "client", arg: 1, scope: !2258, file: !135, line: 338, type: !622)
!2260 = !DILocation(line: 338, column: 43, scope: !2258)
!2261 = !DILocalVariable(name: "packet_id", arg: 2, scope: !2258, file: !135, line: 338, type: !120)
!2262 = !DILocation(line: 338, column: 60, scope: !2258)
!2263 = !DILocalVariable(name: "rv", scope: !2258, file: !135, line: 339, type: !789)
!2264 = !DILocation(line: 339, column: 13, scope: !2258)
!2265 = !DILocalVariable(name: "msg", scope: !2258, file: !135, line: 340, type: !96)
!2266 = !DILocation(line: 340, column: 33, scope: !2258)
!2267 = !DILocation(line: 343, column: 5, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2258, file: !135, line: 343, column: 5)
!2269 = !DILocation(line: 343, column: 5, scope: !2258)
!2270 = !DILocation(line: 343, column: 5, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2268, file: !135, line: 343, column: 5)
!2272 = !DILocation(line: 343, column: 5, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2258, file: !135, line: 343, column: 5)
!2274 = !DILocation(line: 343, column: 5, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2273, file: !135, line: 343, column: 5)
!2276 = !DILocation(line: 343, column: 5, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !135, line: 343, column: 5)
!2278 = !DILocation(line: 343, column: 5, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2277, file: !135, line: 343, column: 5)
!2280 = !DILocation(line: 343, column: 5, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2279, file: !135, line: 343, column: 5)
!2282 = !DILocation(line: 343, column: 5, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2281, file: !135, line: 343, column: 5)
!2284 = !DILocation(line: 343, column: 5, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2281, file: !135, line: 343, column: 5)
!2286 = !DILocation(line: 343, column: 5, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2285, file: !135, line: 343, column: 5)
!2288 = !DILocation(line: 353, column: 5, scope: !2258)
!2289 = !DILocation(line: 353, column: 10, scope: !2258)
!2290 = !DILocation(line: 353, column: 23, scope: !2258)
!2291 = !DILocation(line: 354, column: 22, scope: !2258)
!2292 = !DILocation(line: 354, column: 5, scope: !2258)
!2293 = !DILocation(line: 354, column: 10, scope: !2258)
!2294 = !DILocation(line: 354, column: 20, scope: !2258)
!2295 = !DILocation(line: 356, column: 5, scope: !2258)
!2296 = !DILocation(line: 357, column: 1, scope: !2258)
!2297 = distinct !DISubprogram(name: "__mqtt_pubcomp", scope: !135, file: !135, line: 359, type: !2179, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2298 = !DILocalVariable(name: "client", arg: 1, scope: !2297, file: !135, line: 359, type: !622)
!2299 = !DILocation(line: 359, column: 44, scope: !2297)
!2300 = !DILocalVariable(name: "packet_id", arg: 2, scope: !2297, file: !135, line: 359, type: !120)
!2301 = !DILocation(line: 359, column: 61, scope: !2297)
!2302 = !DILocalVariable(name: "rv", scope: !2297, file: !135, line: 360, type: !789)
!2303 = !DILocation(line: 360, column: 13, scope: !2297)
!2304 = !DILocalVariable(name: "msg", scope: !2297, file: !135, line: 361, type: !96)
!2305 = !DILocation(line: 361, column: 33, scope: !2297)
!2306 = !DILocation(line: 364, column: 5, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2297, file: !135, line: 364, column: 5)
!2308 = !DILocation(line: 364, column: 5, scope: !2297)
!2309 = !DILocation(line: 364, column: 5, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !135, line: 364, column: 5)
!2311 = !DILocation(line: 364, column: 5, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2297, file: !135, line: 364, column: 5)
!2313 = !DILocation(line: 364, column: 5, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2312, file: !135, line: 364, column: 5)
!2315 = !DILocation(line: 364, column: 5, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2312, file: !135, line: 364, column: 5)
!2317 = !DILocation(line: 364, column: 5, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2316, file: !135, line: 364, column: 5)
!2319 = !DILocation(line: 364, column: 5, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2318, file: !135, line: 364, column: 5)
!2321 = !DILocation(line: 364, column: 5, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2320, file: !135, line: 364, column: 5)
!2323 = !DILocation(line: 364, column: 5, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !135, line: 364, column: 5)
!2325 = !DILocation(line: 364, column: 5, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2324, file: !135, line: 364, column: 5)
!2327 = !DILocation(line: 374, column: 5, scope: !2297)
!2328 = !DILocation(line: 374, column: 10, scope: !2297)
!2329 = !DILocation(line: 374, column: 23, scope: !2297)
!2330 = !DILocation(line: 375, column: 22, scope: !2297)
!2331 = !DILocation(line: 375, column: 5, scope: !2297)
!2332 = !DILocation(line: 375, column: 10, scope: !2297)
!2333 = !DILocation(line: 375, column: 20, scope: !2297)
!2334 = !DILocation(line: 377, column: 5, scope: !2297)
!2335 = !DILocation(line: 378, column: 1, scope: !2297)
!2336 = distinct !DISubprogram(name: "mqtt_pack_pubxxx_request", scope: !135, file: !135, line: 1376, type: !2337, scopeLine: 1379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!789, !100, !107, !45, !120}
!2339 = !DILocalVariable(name: "buf", arg: 1, scope: !2336, file: !135, line: 1376, type: !100)
!2340 = !DILocation(line: 1376, column: 43, scope: !2336)
!2341 = !DILocalVariable(name: "bufsz", arg: 2, scope: !2336, file: !135, line: 1376, type: !107)
!2342 = !DILocation(line: 1376, column: 55, scope: !2336)
!2343 = !DILocalVariable(name: "control_type", arg: 3, scope: !2336, file: !135, line: 1377, type: !45)
!2344 = !DILocation(line: 1377, column: 61, scope: !2336)
!2345 = !DILocalVariable(name: "packet_id", arg: 4, scope: !2336, file: !135, line: 1378, type: !120)
!2346 = !DILocation(line: 1378, column: 43, scope: !2336)
!2347 = !DILocalVariable(name: "start", scope: !2336, file: !135, line: 1380, type: !2042)
!2348 = !DILocation(line: 1380, column: 26, scope: !2336)
!2349 = !DILocation(line: 1380, column: 34, scope: !2336)
!2350 = !DILocalVariable(name: "fixed_header", scope: !2336, file: !135, line: 1381, type: !798)
!2351 = !DILocation(line: 1381, column: 30, scope: !2336)
!2352 = !DILocalVariable(name: "rv", scope: !2336, file: !135, line: 1382, type: !789)
!2353 = !DILocation(line: 1382, column: 13, scope: !2336)
!2354 = !DILocation(line: 1383, column: 9, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2336, file: !135, line: 1383, column: 9)
!2356 = !DILocation(line: 1383, column: 13, scope: !2355)
!2357 = !DILocation(line: 1383, column: 9, scope: !2336)
!2358 = !DILocation(line: 1384, column: 9, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !135, line: 1383, column: 22)
!2360 = !DILocation(line: 1388, column: 33, scope: !2336)
!2361 = !DILocation(line: 1388, column: 18, scope: !2336)
!2362 = !DILocation(line: 1388, column: 31, scope: !2336)
!2363 = !DILocation(line: 1389, column: 9, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2336, file: !135, line: 1389, column: 9)
!2365 = !DILocation(line: 1389, column: 22, scope: !2364)
!2366 = !DILocation(line: 1389, column: 9, scope: !2336)
!2367 = !DILocation(line: 1390, column: 22, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !135, line: 1389, column: 46)
!2369 = !DILocation(line: 1390, column: 36, scope: !2368)
!2370 = !DILocation(line: 1391, column: 5, scope: !2368)
!2371 = !DILocation(line: 1392, column: 22, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2364, file: !135, line: 1391, column: 12)
!2373 = !DILocation(line: 1392, column: 36, scope: !2372)
!2374 = !DILocation(line: 1394, column: 18, scope: !2336)
!2375 = !DILocation(line: 1394, column: 35, scope: !2336)
!2376 = !DILocation(line: 1395, column: 33, scope: !2336)
!2377 = !DILocation(line: 1395, column: 38, scope: !2336)
!2378 = !DILocation(line: 1395, column: 10, scope: !2336)
!2379 = !DILocation(line: 1395, column: 8, scope: !2336)
!2380 = !DILocation(line: 1396, column: 9, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2336, file: !135, line: 1396, column: 9)
!2382 = !DILocation(line: 1396, column: 12, scope: !2381)
!2383 = !DILocation(line: 1396, column: 9, scope: !2336)
!2384 = !DILocation(line: 1397, column: 16, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !135, line: 1396, column: 18)
!2386 = !DILocation(line: 1397, column: 9, scope: !2385)
!2387 = !DILocation(line: 1399, column: 12, scope: !2336)
!2388 = !DILocation(line: 1399, column: 9, scope: !2336)
!2389 = !DILocation(line: 1400, column: 14, scope: !2336)
!2390 = !DILocation(line: 1400, column: 11, scope: !2336)
!2391 = !DILocation(line: 1402, column: 9, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2336, file: !135, line: 1402, column: 9)
!2393 = !DILocation(line: 1402, column: 30, scope: !2392)
!2394 = !DILocation(line: 1402, column: 17, scope: !2392)
!2395 = !DILocation(line: 1402, column: 15, scope: !2392)
!2396 = !DILocation(line: 1402, column: 9, scope: !2336)
!2397 = !DILocation(line: 1403, column: 9, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2392, file: !135, line: 1402, column: 48)
!2399 = !DILocation(line: 1406, column: 31, scope: !2336)
!2400 = !DILocation(line: 1406, column: 36, scope: !2336)
!2401 = !DILocation(line: 1406, column: 12, scope: !2336)
!2402 = !DILocation(line: 1406, column: 9, scope: !2336)
!2403 = !DILocation(line: 1408, column: 12, scope: !2336)
!2404 = !DILocation(line: 1408, column: 18, scope: !2336)
!2405 = !DILocation(line: 1408, column: 16, scope: !2336)
!2406 = !DILocation(line: 1408, column: 5, scope: !2336)
!2407 = !DILocation(line: 1409, column: 1, scope: !2336)
!2408 = distinct !DISubprogram(name: "__mqtt_pack_uint16", scope: !135, file: !135, line: 1736, type: !2409, scopeLine: 1737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!789, !100, !120}
!2411 = !DILocalVariable(name: "buf", arg: 1, scope: !2408, file: !135, line: 1736, type: !100)
!2412 = !DILocation(line: 1736, column: 37, scope: !2408)
!2413 = !DILocalVariable(name: "integer", arg: 2, scope: !2408, file: !135, line: 1736, type: !120)
!2414 = !DILocation(line: 1736, column: 51, scope: !2408)
!2415 = !DILocalVariable(name: "integer_htons", scope: !2408, file: !135, line: 1738, type: !120)
!2416 = !DILocation(line: 1738, column: 12, scope: !2408)
!2417 = !DILocation(line: 1738, column: 28, scope: !2408)
!2418 = !DILocation(line: 1739, column: 10, scope: !2408)
!2419 = !DILocation(line: 1739, column: 3, scope: !2408)
!2420 = !DILocation(line: 1740, column: 3, scope: !2408)
!2421 = distinct !DISubprogram(name: "mqtt_unpack_fixed_header", scope: !135, file: !135, line: 981, type: !2032, scopeLine: 981, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2422 = !DILocalVariable(name: "response", arg: 1, scope: !2421, file: !135, line: 981, type: !2034)
!2423 = !DILocation(line: 981, column: 56, scope: !2421)
!2424 = !DILocalVariable(name: "buf", arg: 2, scope: !2421, file: !135, line: 981, type: !833)
!2425 = !DILocation(line: 981, column: 81, scope: !2421)
!2426 = !DILocalVariable(name: "bufsz", arg: 3, scope: !2421, file: !135, line: 981, type: !107)
!2427 = !DILocation(line: 981, column: 93, scope: !2421)
!2428 = !DILocalVariable(name: "fixed_header", scope: !2421, file: !135, line: 982, type: !2429)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!2430 = !DILocation(line: 982, column: 31, scope: !2421)
!2431 = !DILocalVariable(name: "start", scope: !2421, file: !135, line: 983, type: !833)
!2432 = !DILocation(line: 983, column: 20, scope: !2421)
!2433 = !DILocation(line: 983, column: 28, scope: !2421)
!2434 = !DILocalVariable(name: "lshift", scope: !2421, file: !135, line: 984, type: !7)
!2435 = !DILocation(line: 984, column: 9, scope: !2421)
!2436 = !DILocalVariable(name: "errcode", scope: !2421, file: !135, line: 985, type: !789)
!2437 = !DILocation(line: 985, column: 13, scope: !2421)
!2438 = !DILocation(line: 988, column: 9, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2421, file: !135, line: 988, column: 9)
!2440 = !DILocation(line: 988, column: 18, scope: !2439)
!2441 = !DILocation(line: 988, column: 26, scope: !2439)
!2442 = !DILocation(line: 988, column: 29, scope: !2439)
!2443 = !DILocation(line: 988, column: 33, scope: !2439)
!2444 = !DILocation(line: 988, column: 9, scope: !2421)
!2445 = !DILocation(line: 989, column: 9, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2439, file: !135, line: 988, column: 42)
!2447 = !DILocation(line: 991, column: 22, scope: !2421)
!2448 = !DILocation(line: 991, column: 32, scope: !2421)
!2449 = !DILocation(line: 991, column: 18, scope: !2421)
!2450 = !DILocation(line: 994, column: 9, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2421, file: !135, line: 994, column: 9)
!2452 = !DILocation(line: 994, column: 15, scope: !2451)
!2453 = !DILocation(line: 994, column: 9, scope: !2421)
!2454 = !DILocation(line: 994, column: 21, scope: !2451)
!2455 = !DILocation(line: 997, column: 36, scope: !2421)
!2456 = !DILocation(line: 997, column: 35, scope: !2421)
!2457 = !DILocation(line: 997, column: 40, scope: !2421)
!2458 = !DILocation(line: 997, column: 5, scope: !2421)
!2459 = !DILocation(line: 997, column: 19, scope: !2421)
!2460 = !DILocation(line: 997, column: 33, scope: !2421)
!2461 = !DILocation(line: 998, column: 36, scope: !2421)
!2462 = !DILocation(line: 998, column: 35, scope: !2421)
!2463 = !DILocation(line: 998, column: 40, scope: !2421)
!2464 = !DILocation(line: 998, column: 5, scope: !2421)
!2465 = !DILocation(line: 998, column: 19, scope: !2421)
!2466 = !DILocation(line: 998, column: 33, scope: !2421)
!2467 = !DILocation(line: 1001, column: 5, scope: !2421)
!2468 = !DILocation(line: 1001, column: 19, scope: !2421)
!2469 = !DILocation(line: 1001, column: 36, scope: !2421)
!2470 = !DILocation(line: 1003, column: 12, scope: !2421)
!2471 = !DILocation(line: 1004, column: 5, scope: !2421)
!2472 = !DILocation(line: 1007, column: 12, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !135, line: 1007, column: 12)
!2474 = distinct !DILexicalBlock(scope: !2421, file: !135, line: 1004, column: 8)
!2475 = !DILocation(line: 1007, column: 19, scope: !2473)
!2476 = !DILocation(line: 1007, column: 12, scope: !2474)
!2477 = !DILocation(line: 1008, column: 13, scope: !2473)
!2478 = !DILocation(line: 1011, column: 9, scope: !2474)
!2479 = !DILocation(line: 1012, column: 9, scope: !2474)
!2480 = !DILocation(line: 1013, column: 13, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2474, file: !135, line: 1013, column: 13)
!2482 = !DILocation(line: 1013, column: 19, scope: !2481)
!2483 = !DILocation(line: 1013, column: 13, scope: !2474)
!2484 = !DILocation(line: 1013, column: 25, scope: !2481)
!2485 = !DILocation(line: 1016, column: 45, scope: !2474)
!2486 = !DILocation(line: 1016, column: 44, scope: !2474)
!2487 = !DILocation(line: 1016, column: 49, scope: !2474)
!2488 = !DILocation(line: 1016, column: 60, scope: !2474)
!2489 = !DILocation(line: 1016, column: 57, scope: !2474)
!2490 = !DILocation(line: 1016, column: 9, scope: !2474)
!2491 = !DILocation(line: 1016, column: 23, scope: !2474)
!2492 = !DILocation(line: 1016, column: 40, scope: !2474)
!2493 = !DILocation(line: 1017, column: 16, scope: !2474)
!2494 = !DILocation(line: 1018, column: 5, scope: !2474)
!2495 = !DILocation(line: 1018, column: 14, scope: !2421)
!2496 = !DILocation(line: 1018, column: 13, scope: !2421)
!2497 = !DILocation(line: 1018, column: 18, scope: !2421)
!2498 = distinct !{!2498, !2471, !2499, !377}
!2499 = !DILocation(line: 1018, column: 24, scope: !2421)
!2500 = !DILocation(line: 1021, column: 5, scope: !2421)
!2501 = !DILocation(line: 1022, column: 5, scope: !2421)
!2502 = !DILocation(line: 1025, column: 48, scope: !2421)
!2503 = !DILocation(line: 1025, column: 15, scope: !2421)
!2504 = !DILocation(line: 1025, column: 13, scope: !2421)
!2505 = !DILocation(line: 1026, column: 9, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2421, file: !135, line: 1026, column: 9)
!2507 = !DILocation(line: 1026, column: 9, scope: !2421)
!2508 = !DILocation(line: 1027, column: 16, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2506, file: !135, line: 1026, column: 18)
!2510 = !DILocation(line: 1027, column: 9, scope: !2509)
!2511 = !DILocation(line: 1031, column: 9, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2421, file: !135, line: 1031, column: 9)
!2513 = !DILocation(line: 1031, column: 17, scope: !2512)
!2514 = !DILocation(line: 1031, column: 31, scope: !2512)
!2515 = !DILocation(line: 1031, column: 15, scope: !2512)
!2516 = !DILocation(line: 1031, column: 9, scope: !2421)
!2517 = !DILocation(line: 1032, column: 9, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2512, file: !135, line: 1031, column: 49)
!2519 = !DILocation(line: 1036, column: 12, scope: !2421)
!2520 = !DILocation(line: 1036, column: 18, scope: !2421)
!2521 = !DILocation(line: 1036, column: 16, scope: !2421)
!2522 = !DILocation(line: 1036, column: 5, scope: !2421)
!2523 = !DILocation(line: 1037, column: 1, scope: !2421)
!2524 = distinct !DISubprogram(name: "mqtt_unpack_connack_response", scope: !135, file: !135, line: 1216, type: !2525, scopeLine: 1216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!789, !2034, !833}
!2527 = !DILocalVariable(name: "mqtt_response", arg: 1, scope: !2524, file: !135, line: 1216, type: !2034)
!2528 = !DILocation(line: 1216, column: 60, scope: !2524)
!2529 = !DILocalVariable(name: "buf", arg: 2, scope: !2524, file: !135, line: 1216, type: !833)
!2530 = !DILocation(line: 1216, column: 90, scope: !2524)
!2531 = !DILocalVariable(name: "start", scope: !2524, file: !135, line: 1217, type: !2042)
!2532 = !DILocation(line: 1217, column: 26, scope: !2524)
!2533 = !DILocation(line: 1217, column: 34, scope: !2524)
!2534 = !DILocalVariable(name: "response", scope: !2524, file: !135, line: 1218, type: !2535)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!2536 = !DILocation(line: 1218, column: 35, scope: !2524)
!2537 = !DILocation(line: 1221, column: 9, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2524, file: !135, line: 1221, column: 9)
!2539 = !DILocation(line: 1221, column: 24, scope: !2538)
!2540 = !DILocation(line: 1221, column: 37, scope: !2538)
!2541 = !DILocation(line: 1221, column: 54, scope: !2538)
!2542 = !DILocation(line: 1221, column: 9, scope: !2524)
!2543 = !DILocation(line: 1222, column: 9, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2538, file: !135, line: 1221, column: 60)
!2545 = !DILocation(line: 1225, column: 18, scope: !2524)
!2546 = !DILocation(line: 1225, column: 33, scope: !2524)
!2547 = !DILocation(line: 1225, column: 41, scope: !2524)
!2548 = !DILocation(line: 1225, column: 14, scope: !2524)
!2549 = !DILocation(line: 1227, column: 10, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2524, file: !135, line: 1227, column: 9)
!2551 = !DILocation(line: 1227, column: 9, scope: !2550)
!2552 = !DILocation(line: 1227, column: 14, scope: !2550)
!2553 = !DILocation(line: 1227, column: 9, scope: !2524)
!2554 = !DILocation(line: 1229, column: 9, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !135, line: 1227, column: 22)
!2556 = !DILocation(line: 1231, column: 46, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !135, line: 1230, column: 12)
!2558 = !DILocation(line: 1231, column: 42, scope: !2557)
!2559 = !DILocation(line: 1231, column: 9, scope: !2557)
!2560 = !DILocation(line: 1231, column: 19, scope: !2557)
!2561 = !DILocation(line: 1231, column: 40, scope: !2557)
!2562 = !DILocation(line: 1234, column: 10, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2524, file: !135, line: 1234, column: 9)
!2564 = !DILocation(line: 1234, column: 9, scope: !2563)
!2565 = !DILocation(line: 1234, column: 14, scope: !2563)
!2566 = !DILocation(line: 1234, column: 9, scope: !2524)
!2567 = !DILocation(line: 1236, column: 9, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !135, line: 1234, column: 20)
!2569 = !DILocation(line: 1238, column: 66, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2563, file: !135, line: 1237, column: 12)
!2571 = !DILocation(line: 1238, column: 62, scope: !2570)
!2572 = !DILocation(line: 1238, column: 33, scope: !2570)
!2573 = !DILocation(line: 1238, column: 9, scope: !2570)
!2574 = !DILocation(line: 1238, column: 19, scope: !2570)
!2575 = !DILocation(line: 1238, column: 31, scope: !2570)
!2576 = !DILocation(line: 1240, column: 12, scope: !2524)
!2577 = !DILocation(line: 1240, column: 18, scope: !2524)
!2578 = !DILocation(line: 1240, column: 16, scope: !2524)
!2579 = !DILocation(line: 1240, column: 5, scope: !2524)
!2580 = !DILocation(line: 1241, column: 1, scope: !2524)
!2581 = distinct !DISubprogram(name: "mqtt_unpack_publish_response", scope: !135, file: !135, line: 1332, type: !2525, scopeLine: 1333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2582 = !DILocalVariable(name: "mqtt_response", arg: 1, scope: !2581, file: !135, line: 1332, type: !2034)
!2583 = !DILocation(line: 1332, column: 60, scope: !2581)
!2584 = !DILocalVariable(name: "buf", arg: 2, scope: !2581, file: !135, line: 1332, type: !833)
!2585 = !DILocation(line: 1332, column: 90, scope: !2581)
!2586 = !DILocalVariable(name: "start", scope: !2581, file: !135, line: 1334, type: !2042)
!2587 = !DILocation(line: 1334, column: 26, scope: !2581)
!2588 = !DILocation(line: 1334, column: 34, scope: !2581)
!2589 = !DILocalVariable(name: "fixed_header", scope: !2581, file: !135, line: 1335, type: !2429)
!2590 = !DILocation(line: 1335, column: 31, scope: !2581)
!2591 = !DILocalVariable(name: "response", scope: !2581, file: !135, line: 1336, type: !639)
!2592 = !DILocation(line: 1336, column: 35, scope: !2581)
!2593 = !DILocation(line: 1338, column: 22, scope: !2581)
!2594 = !DILocation(line: 1338, column: 37, scope: !2581)
!2595 = !DILocation(line: 1338, column: 18, scope: !2581)
!2596 = !DILocation(line: 1339, column: 18, scope: !2581)
!2597 = !DILocation(line: 1339, column: 33, scope: !2581)
!2598 = !DILocation(line: 1339, column: 41, scope: !2581)
!2599 = !DILocation(line: 1339, column: 14, scope: !2581)
!2600 = !DILocation(line: 1342, column: 27, scope: !2581)
!2601 = !DILocation(line: 1342, column: 41, scope: !2581)
!2602 = !DILocation(line: 1342, column: 55, scope: !2581)
!2603 = !DILocation(line: 1342, column: 75, scope: !2581)
!2604 = !DILocation(line: 1342, column: 26, scope: !2581)
!2605 = !DILocation(line: 1342, column: 5, scope: !2581)
!2606 = !DILocation(line: 1342, column: 15, scope: !2581)
!2607 = !DILocation(line: 1342, column: 24, scope: !2581)
!2608 = !DILocation(line: 1343, column: 28, scope: !2581)
!2609 = !DILocation(line: 1343, column: 42, scope: !2581)
!2610 = !DILocation(line: 1343, column: 56, scope: !2581)
!2611 = !DILocation(line: 1343, column: 81, scope: !2581)
!2612 = !DILocation(line: 1343, column: 27, scope: !2581)
!2613 = !DILocation(line: 1343, column: 5, scope: !2581)
!2614 = !DILocation(line: 1343, column: 15, scope: !2581)
!2615 = !DILocation(line: 1343, column: 25, scope: !2581)
!2616 = !DILocation(line: 1344, column: 29, scope: !2581)
!2617 = !DILocation(line: 1344, column: 43, scope: !2581)
!2618 = !DILocation(line: 1344, column: 57, scope: !2581)
!2619 = !DILocation(line: 1344, column: 5, scope: !2581)
!2620 = !DILocation(line: 1344, column: 15, scope: !2581)
!2621 = !DILocation(line: 1344, column: 27, scope: !2581)
!2622 = !DILocation(line: 1347, column: 9, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2581, file: !135, line: 1347, column: 9)
!2624 = !DILocation(line: 1347, column: 24, scope: !2623)
!2625 = !DILocation(line: 1347, column: 37, scope: !2623)
!2626 = !DILocation(line: 1347, column: 54, scope: !2623)
!2627 = !DILocation(line: 1347, column: 9, scope: !2581)
!2628 = !DILocation(line: 1348, column: 9, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2623, file: !135, line: 1347, column: 59)
!2630 = !DILocation(line: 1352, column: 54, scope: !2581)
!2631 = !DILocation(line: 1352, column: 33, scope: !2581)
!2632 = !DILocation(line: 1352, column: 5, scope: !2581)
!2633 = !DILocation(line: 1352, column: 15, scope: !2581)
!2634 = !DILocation(line: 1352, column: 31, scope: !2581)
!2635 = !DILocation(line: 1353, column: 9, scope: !2581)
!2636 = !DILocation(line: 1354, column: 28, scope: !2581)
!2637 = !DILocation(line: 1354, column: 5, scope: !2581)
!2638 = !DILocation(line: 1354, column: 15, scope: !2581)
!2639 = !DILocation(line: 1354, column: 26, scope: !2581)
!2640 = !DILocation(line: 1355, column: 12, scope: !2581)
!2641 = !DILocation(line: 1355, column: 22, scope: !2581)
!2642 = !DILocation(line: 1355, column: 9, scope: !2581)
!2643 = !DILocation(line: 1357, column: 9, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2581, file: !135, line: 1357, column: 9)
!2645 = !DILocation(line: 1357, column: 19, scope: !2644)
!2646 = !DILocation(line: 1357, column: 29, scope: !2644)
!2647 = !DILocation(line: 1357, column: 9, scope: !2581)
!2648 = !DILocation(line: 1358, column: 52, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2644, file: !135, line: 1357, column: 34)
!2650 = !DILocation(line: 1358, column: 31, scope: !2649)
!2651 = !DILocation(line: 1358, column: 9, scope: !2649)
!2652 = !DILocation(line: 1358, column: 19, scope: !2649)
!2653 = !DILocation(line: 1358, column: 29, scope: !2649)
!2654 = !DILocation(line: 1359, column: 13, scope: !2649)
!2655 = !DILocation(line: 1360, column: 5, scope: !2649)
!2656 = !DILocation(line: 1363, column: 37, scope: !2581)
!2657 = !DILocation(line: 1363, column: 5, scope: !2581)
!2658 = !DILocation(line: 1363, column: 15, scope: !2581)
!2659 = !DILocation(line: 1363, column: 35, scope: !2581)
!2660 = !DILocation(line: 1364, column: 9, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2581, file: !135, line: 1364, column: 9)
!2662 = !DILocation(line: 1364, column: 19, scope: !2661)
!2663 = !DILocation(line: 1364, column: 29, scope: !2661)
!2664 = !DILocation(line: 1364, column: 9, scope: !2581)
!2665 = !DILocation(line: 1365, column: 46, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2661, file: !135, line: 1364, column: 35)
!2667 = !DILocation(line: 1365, column: 60, scope: !2666)
!2668 = !DILocation(line: 1365, column: 79, scope: !2666)
!2669 = !DILocation(line: 1365, column: 89, scope: !2666)
!2670 = !DILocation(line: 1365, column: 77, scope: !2666)
!2671 = !DILocation(line: 1365, column: 105, scope: !2666)
!2672 = !DILocation(line: 1365, column: 9, scope: !2666)
!2673 = !DILocation(line: 1365, column: 19, scope: !2666)
!2674 = !DILocation(line: 1365, column: 44, scope: !2666)
!2675 = !DILocation(line: 1366, column: 5, scope: !2666)
!2676 = !DILocation(line: 1367, column: 46, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2661, file: !135, line: 1366, column: 12)
!2678 = !DILocation(line: 1367, column: 60, scope: !2677)
!2679 = !DILocation(line: 1367, column: 79, scope: !2677)
!2680 = !DILocation(line: 1367, column: 89, scope: !2677)
!2681 = !DILocation(line: 1367, column: 77, scope: !2677)
!2682 = !DILocation(line: 1367, column: 105, scope: !2677)
!2683 = !DILocation(line: 1367, column: 9, scope: !2677)
!2684 = !DILocation(line: 1367, column: 19, scope: !2677)
!2685 = !DILocation(line: 1367, column: 44, scope: !2677)
!2686 = !DILocation(line: 1369, column: 12, scope: !2581)
!2687 = !DILocation(line: 1369, column: 22, scope: !2581)
!2688 = !DILocation(line: 1369, column: 9, scope: !2581)
!2689 = !DILocation(line: 1372, column: 12, scope: !2581)
!2690 = !DILocation(line: 1372, column: 18, scope: !2581)
!2691 = !DILocation(line: 1372, column: 16, scope: !2581)
!2692 = !DILocation(line: 1372, column: 5, scope: !2581)
!2693 = !DILocation(line: 1373, column: 1, scope: !2581)
!2694 = distinct !DISubprogram(name: "mqtt_unpack_pubxxx_response", scope: !135, file: !135, line: 1411, type: !2525, scopeLine: 1412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2695 = !DILocalVariable(name: "mqtt_response", arg: 1, scope: !2694, file: !135, line: 1411, type: !2034)
!2696 = !DILocation(line: 1411, column: 59, scope: !2694)
!2697 = !DILocalVariable(name: "buf", arg: 2, scope: !2694, file: !135, line: 1411, type: !833)
!2698 = !DILocation(line: 1411, column: 89, scope: !2694)
!2699 = !DILocalVariable(name: "start", scope: !2694, file: !135, line: 1413, type: !2042)
!2700 = !DILocation(line: 1413, column: 26, scope: !2694)
!2701 = !DILocation(line: 1413, column: 34, scope: !2694)
!2702 = !DILocalVariable(name: "packet_id", scope: !2694, file: !135, line: 1414, type: !120)
!2703 = !DILocation(line: 1414, column: 14, scope: !2694)
!2704 = !DILocation(line: 1417, column: 9, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2694, file: !135, line: 1417, column: 9)
!2706 = !DILocation(line: 1417, column: 24, scope: !2705)
!2707 = !DILocation(line: 1417, column: 37, scope: !2705)
!2708 = !DILocation(line: 1417, column: 54, scope: !2705)
!2709 = !DILocation(line: 1417, column: 9, scope: !2694)
!2710 = !DILocation(line: 1418, column: 9, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2705, file: !135, line: 1417, column: 60)
!2712 = !DILocation(line: 1422, column: 38, scope: !2694)
!2713 = !DILocation(line: 1422, column: 17, scope: !2694)
!2714 = !DILocation(line: 1422, column: 15, scope: !2694)
!2715 = !DILocation(line: 1423, column: 9, scope: !2694)
!2716 = !DILocation(line: 1425, column: 9, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2694, file: !135, line: 1425, column: 9)
!2718 = !DILocation(line: 1425, column: 24, scope: !2717)
!2719 = !DILocation(line: 1425, column: 37, scope: !2717)
!2720 = !DILocation(line: 1425, column: 50, scope: !2717)
!2721 = !DILocation(line: 1425, column: 9, scope: !2694)
!2722 = !DILocation(line: 1426, column: 51, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2717, file: !135, line: 1425, column: 74)
!2724 = !DILocation(line: 1426, column: 9, scope: !2723)
!2725 = !DILocation(line: 1426, column: 24, scope: !2723)
!2726 = !DILocation(line: 1426, column: 32, scope: !2723)
!2727 = !DILocation(line: 1426, column: 39, scope: !2723)
!2728 = !DILocation(line: 1426, column: 49, scope: !2723)
!2729 = !DILocation(line: 1427, column: 5, scope: !2723)
!2730 = !DILocation(line: 1427, column: 16, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2717, file: !135, line: 1427, column: 16)
!2732 = !DILocation(line: 1427, column: 31, scope: !2731)
!2733 = !DILocation(line: 1427, column: 44, scope: !2731)
!2734 = !DILocation(line: 1427, column: 57, scope: !2731)
!2735 = !DILocation(line: 1427, column: 16, scope: !2717)
!2736 = !DILocation(line: 1428, column: 51, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2731, file: !135, line: 1427, column: 81)
!2738 = !DILocation(line: 1428, column: 9, scope: !2737)
!2739 = !DILocation(line: 1428, column: 24, scope: !2737)
!2740 = !DILocation(line: 1428, column: 32, scope: !2737)
!2741 = !DILocation(line: 1428, column: 39, scope: !2737)
!2742 = !DILocation(line: 1428, column: 49, scope: !2737)
!2743 = !DILocation(line: 1429, column: 5, scope: !2737)
!2744 = !DILocation(line: 1429, column: 16, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2731, file: !135, line: 1429, column: 16)
!2746 = !DILocation(line: 1429, column: 31, scope: !2745)
!2747 = !DILocation(line: 1429, column: 44, scope: !2745)
!2748 = !DILocation(line: 1429, column: 57, scope: !2745)
!2749 = !DILocation(line: 1429, column: 16, scope: !2731)
!2750 = !DILocation(line: 1430, column: 51, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2745, file: !135, line: 1429, column: 81)
!2752 = !DILocation(line: 1430, column: 9, scope: !2751)
!2753 = !DILocation(line: 1430, column: 24, scope: !2751)
!2754 = !DILocation(line: 1430, column: 32, scope: !2751)
!2755 = !DILocation(line: 1430, column: 39, scope: !2751)
!2756 = !DILocation(line: 1430, column: 49, scope: !2751)
!2757 = !DILocation(line: 1431, column: 5, scope: !2751)
!2758 = !DILocation(line: 1432, column: 52, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2745, file: !135, line: 1431, column: 12)
!2760 = !DILocation(line: 1432, column: 9, scope: !2759)
!2761 = !DILocation(line: 1432, column: 24, scope: !2759)
!2762 = !DILocation(line: 1432, column: 32, scope: !2759)
!2763 = !DILocation(line: 1432, column: 40, scope: !2759)
!2764 = !DILocation(line: 1432, column: 50, scope: !2759)
!2765 = !DILocation(line: 1435, column: 12, scope: !2694)
!2766 = !DILocation(line: 1435, column: 18, scope: !2694)
!2767 = !DILocation(line: 1435, column: 16, scope: !2694)
!2768 = !DILocation(line: 1435, column: 5, scope: !2694)
!2769 = !DILocation(line: 1436, column: 1, scope: !2694)
!2770 = distinct !DISubprogram(name: "mqtt_unpack_suback_response", scope: !135, file: !135, line: 1439, type: !2525, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2771 = !DILocalVariable(name: "mqtt_response", arg: 1, scope: !2770, file: !135, line: 1439, type: !2034)
!2772 = !DILocation(line: 1439, column: 60, scope: !2770)
!2773 = !DILocalVariable(name: "buf", arg: 2, scope: !2770, file: !135, line: 1439, type: !833)
!2774 = !DILocation(line: 1439, column: 90, scope: !2770)
!2775 = !DILocalVariable(name: "start", scope: !2770, file: !135, line: 1440, type: !2042)
!2776 = !DILocation(line: 1440, column: 26, scope: !2770)
!2777 = !DILocation(line: 1440, column: 34, scope: !2770)
!2778 = !DILocalVariable(name: "remaining_length", scope: !2770, file: !135, line: 1441, type: !130)
!2779 = !DILocation(line: 1441, column: 14, scope: !2770)
!2780 = !DILocation(line: 1441, column: 33, scope: !2770)
!2781 = !DILocation(line: 1441, column: 48, scope: !2770)
!2782 = !DILocation(line: 1441, column: 61, scope: !2770)
!2783 = !DILocation(line: 1444, column: 9, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2770, file: !135, line: 1444, column: 9)
!2785 = !DILocation(line: 1444, column: 26, scope: !2784)
!2786 = !DILocation(line: 1444, column: 9, scope: !2770)
!2787 = !DILocation(line: 1445, column: 9, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !135, line: 1444, column: 31)
!2789 = !DILocation(line: 1449, column: 68, scope: !2770)
!2790 = !DILocation(line: 1449, column: 47, scope: !2770)
!2791 = !DILocation(line: 1449, column: 5, scope: !2770)
!2792 = !DILocation(line: 1449, column: 20, scope: !2770)
!2793 = !DILocation(line: 1449, column: 28, scope: !2770)
!2794 = !DILocation(line: 1449, column: 35, scope: !2770)
!2795 = !DILocation(line: 1449, column: 45, scope: !2770)
!2796 = !DILocation(line: 1450, column: 9, scope: !2770)
!2797 = !DILocation(line: 1451, column: 22, scope: !2770)
!2798 = !DILocation(line: 1454, column: 63, scope: !2770)
!2799 = !DILocation(line: 1454, column: 54, scope: !2770)
!2800 = !DILocation(line: 1454, column: 5, scope: !2770)
!2801 = !DILocation(line: 1454, column: 20, scope: !2770)
!2802 = !DILocation(line: 1454, column: 28, scope: !2770)
!2803 = !DILocation(line: 1454, column: 35, scope: !2770)
!2804 = !DILocation(line: 1454, column: 52, scope: !2770)
!2805 = !DILocation(line: 1455, column: 50, scope: !2770)
!2806 = !DILocation(line: 1455, column: 5, scope: !2770)
!2807 = !DILocation(line: 1455, column: 20, scope: !2770)
!2808 = !DILocation(line: 1455, column: 28, scope: !2770)
!2809 = !DILocation(line: 1455, column: 35, scope: !2770)
!2810 = !DILocation(line: 1455, column: 48, scope: !2770)
!2811 = !DILocation(line: 1456, column: 12, scope: !2770)
!2812 = !DILocation(line: 1456, column: 9, scope: !2770)
!2813 = !DILocation(line: 1458, column: 12, scope: !2770)
!2814 = !DILocation(line: 1458, column: 18, scope: !2770)
!2815 = !DILocation(line: 1458, column: 16, scope: !2770)
!2816 = !DILocation(line: 1458, column: 5, scope: !2770)
!2817 = !DILocation(line: 1459, column: 1, scope: !2770)
!2818 = distinct !DISubprogram(name: "mqtt_unpack_unsuback_response", scope: !135, file: !135, line: 1528, type: !2525, scopeLine: 1529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2819 = !DILocalVariable(name: "mqtt_response", arg: 1, scope: !2818, file: !135, line: 1528, type: !2034)
!2820 = !DILocation(line: 1528, column: 61, scope: !2818)
!2821 = !DILocalVariable(name: "buf", arg: 2, scope: !2818, file: !135, line: 1528, type: !833)
!2822 = !DILocation(line: 1528, column: 91, scope: !2818)
!2823 = !DILocalVariable(name: "start", scope: !2818, file: !135, line: 1530, type: !2042)
!2824 = !DILocation(line: 1530, column: 26, scope: !2818)
!2825 = !DILocation(line: 1530, column: 34, scope: !2818)
!2826 = !DILocation(line: 1532, column: 9, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2818, file: !135, line: 1532, column: 9)
!2828 = !DILocation(line: 1532, column: 24, scope: !2827)
!2829 = !DILocation(line: 1532, column: 37, scope: !2827)
!2830 = !DILocation(line: 1532, column: 54, scope: !2827)
!2831 = !DILocation(line: 1532, column: 9, scope: !2818)
!2832 = !DILocation(line: 1533, column: 9, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2827, file: !135, line: 1532, column: 60)
!2834 = !DILocation(line: 1537, column: 70, scope: !2818)
!2835 = !DILocation(line: 1537, column: 49, scope: !2818)
!2836 = !DILocation(line: 1537, column: 5, scope: !2818)
!2837 = !DILocation(line: 1537, column: 20, scope: !2818)
!2838 = !DILocation(line: 1537, column: 28, scope: !2818)
!2839 = !DILocation(line: 1537, column: 37, scope: !2818)
!2840 = !DILocation(line: 1537, column: 47, scope: !2818)
!2841 = !DILocation(line: 1538, column: 9, scope: !2818)
!2842 = !DILocation(line: 1540, column: 12, scope: !2818)
!2843 = !DILocation(line: 1540, column: 18, scope: !2818)
!2844 = !DILocation(line: 1540, column: 16, scope: !2818)
!2845 = !DILocation(line: 1540, column: 5, scope: !2818)
!2846 = !DILocation(line: 1541, column: 1, scope: !2818)
!2847 = distinct !DISubprogram(name: "__mqtt_unpack_uint16", scope: !135, file: !135, line: 1743, type: !2848, scopeLine: 1744, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!120, !833}
!2850 = !DILocalVariable(name: "buf", arg: 1, scope: !2847, file: !135, line: 1743, type: !833)
!2851 = !DILocation(line: 1743, column: 46, scope: !2847)
!2852 = !DILocalVariable(name: "integer_htons", scope: !2847, file: !135, line: 1745, type: !120)
!2853 = !DILocation(line: 1745, column: 12, scope: !2847)
!2854 = !DILocation(line: 1746, column: 3, scope: !2847)
!2855 = !DILocation(line: 1746, column: 26, scope: !2847)
!2856 = !DILocation(line: 1747, column: 10, scope: !2847)
!2857 = !DILocation(line: 1747, column: 3, scope: !2847)
!2858 = distinct !DISubprogram(name: "__mqtt_next_pid", scope: !135, file: !135, line: 77, type: !2859, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!120, !622}
!2861 = !DILocalVariable(name: "client", arg: 1, scope: !2858, file: !135, line: 77, type: !622)
!2862 = !DILocation(line: 77, column: 46, scope: !2858)
!2863 = !DILocalVariable(name: "pid_exists", scope: !2858, file: !135, line: 78, type: !7)
!2864 = !DILocation(line: 78, column: 9, scope: !2858)
!2865 = !DILocation(line: 79, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2858, file: !135, line: 79, column: 9)
!2867 = !DILocation(line: 79, column: 17, scope: !2866)
!2868 = !DILocation(line: 79, column: 26, scope: !2866)
!2869 = !DILocation(line: 79, column: 9, scope: !2858)
!2870 = !DILocation(line: 80, column: 9, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !135, line: 79, column: 32)
!2872 = !DILocation(line: 80, column: 17, scope: !2871)
!2873 = !DILocation(line: 80, column: 26, scope: !2871)
!2874 = !DILocation(line: 81, column: 5, scope: !2871)
!2875 = !DILocation(line: 84, column: 5, scope: !2858)
!2876 = !DILocalVariable(name: "curr", scope: !2877, file: !135, line: 85, type: !96)
!2877 = distinct !DILexicalBlock(scope: !2858, file: !135, line: 84, column: 8)
!2878 = !DILocation(line: 85, column: 37, scope: !2877)
!2879 = !DILocalVariable(name: "lsb", scope: !2877, file: !135, line: 86, type: !40)
!2880 = !DILocation(line: 86, column: 18, scope: !2877)
!2881 = !DILocation(line: 86, column: 24, scope: !2877)
!2882 = !DILocation(line: 86, column: 32, scope: !2877)
!2883 = !DILocation(line: 86, column: 41, scope: !2877)
!2884 = !DILocation(line: 87, column: 10, scope: !2877)
!2885 = !DILocation(line: 87, column: 18, scope: !2877)
!2886 = !DILocation(line: 87, column: 28, scope: !2877)
!2887 = !DILocation(line: 88, column: 13, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2877, file: !135, line: 88, column: 13)
!2889 = !DILocation(line: 88, column: 13, scope: !2877)
!2890 = !DILocation(line: 89, column: 13, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2888, file: !135, line: 88, column: 18)
!2892 = !DILocation(line: 89, column: 21, scope: !2891)
!2893 = !DILocation(line: 89, column: 30, scope: !2891)
!2894 = !DILocation(line: 90, column: 9, scope: !2891)
!2895 = !DILocation(line: 93, column: 20, scope: !2877)
!2896 = !DILocation(line: 94, column: 20, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2877, file: !135, line: 94, column: 9)
!2898 = !DILocation(line: 94, column: 18, scope: !2897)
!2899 = !DILocation(line: 94, column: 13, scope: !2897)
!2900 = !DILocation(line: 94, column: 51, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2897, file: !135, line: 94, column: 9)
!2902 = !DILocation(line: 94, column: 59, scope: !2901)
!2903 = !DILocation(line: 94, column: 67, scope: !2901)
!2904 = !DILocation(line: 94, column: 70, scope: !2901)
!2905 = !DILocation(line: 94, column: 56, scope: !2901)
!2906 = !DILocation(line: 94, column: 9, scope: !2897)
!2907 = !DILocation(line: 95, column: 17, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !135, line: 95, column: 17)
!2909 = distinct !DILexicalBlock(scope: !2901, file: !135, line: 94, column: 90)
!2910 = !DILocation(line: 95, column: 23, scope: !2908)
!2911 = !DILocation(line: 95, column: 36, scope: !2908)
!2912 = !DILocation(line: 95, column: 44, scope: !2908)
!2913 = !DILocation(line: 95, column: 33, scope: !2908)
!2914 = !DILocation(line: 95, column: 17, scope: !2909)
!2915 = !DILocation(line: 96, column: 28, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2908, file: !135, line: 95, column: 54)
!2917 = !DILocation(line: 97, column: 17, scope: !2916)
!2918 = !DILocation(line: 99, column: 9, scope: !2909)
!2919 = !DILocation(line: 94, column: 82, scope: !2901)
!2920 = !DILocation(line: 94, column: 9, scope: !2901)
!2921 = distinct !{!2921, !2906, !2922, !377}
!2922 = !DILocation(line: 99, column: 9, scope: !2897)
!2923 = !DILocation(line: 101, column: 5, scope: !2877)
!2924 = !DILocation(line: 101, column: 13, scope: !2858)
!2925 = distinct !{!2925, !2875, !2926, !377}
!2926 = !DILocation(line: 101, column: 23, scope: !2858)
!2927 = !DILocation(line: 102, column: 12, scope: !2858)
!2928 = !DILocation(line: 102, column: 20, scope: !2858)
!2929 = !DILocation(line: 102, column: 5, scope: !2858)
!2930 = distinct !DISubprogram(name: "mqtt_init", scope: !135, file: !135, line: 105, type: !2931, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!5, !622, !123, !100, !107, !100, !107, !636}
!2933 = !DILocalVariable(name: "client", arg: 1, scope: !2930, file: !135, line: 105, type: !622)
!2934 = !DILocation(line: 105, column: 47, scope: !2930)
!2935 = !DILocalVariable(name: "sockfd", arg: 2, scope: !2930, file: !135, line: 106, type: !123)
!2936 = !DILocation(line: 106, column: 39, scope: !2930)
!2937 = !DILocalVariable(name: "sendbuf", arg: 3, scope: !2930, file: !135, line: 107, type: !100)
!2938 = !DILocation(line: 107, column: 25, scope: !2930)
!2939 = !DILocalVariable(name: "sendbufsz", arg: 4, scope: !2930, file: !135, line: 107, type: !107)
!2940 = !DILocation(line: 107, column: 41, scope: !2930)
!2941 = !DILocalVariable(name: "recvbuf", arg: 5, scope: !2930, file: !135, line: 108, type: !100)
!2942 = !DILocation(line: 108, column: 25, scope: !2930)
!2943 = !DILocalVariable(name: "recvbufsz", arg: 6, scope: !2930, file: !135, line: 108, type: !107)
!2944 = !DILocation(line: 108, column: 41, scope: !2930)
!2945 = !DILocalVariable(name: "publish_response_callback", arg: 7, scope: !2930, file: !135, line: 109, type: !636)
!2946 = !DILocation(line: 109, column: 23, scope: !2930)
!2947 = !DILocation(line: 111, column: 9, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2930, file: !135, line: 111, column: 9)
!2949 = !DILocation(line: 111, column: 16, scope: !2948)
!2950 = !DILocation(line: 111, column: 24, scope: !2948)
!2951 = !DILocation(line: 111, column: 27, scope: !2948)
!2952 = !DILocation(line: 111, column: 35, scope: !2948)
!2953 = !DILocation(line: 111, column: 43, scope: !2948)
!2954 = !DILocation(line: 111, column: 46, scope: !2948)
!2955 = !DILocation(line: 111, column: 54, scope: !2948)
!2956 = !DILocation(line: 111, column: 9, scope: !2930)
!2957 = !DILocation(line: 112, column: 9, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2948, file: !135, line: 111, column: 63)
!2959 = !DILocation(line: 116, column: 5, scope: !2930)
!2960 = !DILocation(line: 117, column: 5, scope: !2930)
!2961 = !DILocation(line: 119, column: 24, scope: !2930)
!2962 = !DILocation(line: 119, column: 5, scope: !2930)
!2963 = !DILocation(line: 119, column: 13, scope: !2930)
!2964 = !DILocation(line: 119, column: 22, scope: !2930)
!2965 = !DILocation(line: 121, column: 19, scope: !2930)
!2966 = !DILocation(line: 121, column: 27, scope: !2930)
!2967 = !DILocation(line: 121, column: 31, scope: !2930)
!2968 = !DILocation(line: 121, column: 40, scope: !2930)
!2969 = !DILocation(line: 121, column: 5, scope: !2930)
!2970 = !DILocation(line: 123, column: 37, scope: !2930)
!2971 = !DILocation(line: 123, column: 5, scope: !2930)
!2972 = !DILocation(line: 123, column: 13, scope: !2930)
!2973 = !DILocation(line: 123, column: 25, scope: !2930)
!2974 = !DILocation(line: 123, column: 35, scope: !2930)
!2975 = !DILocation(line: 124, column: 36, scope: !2930)
!2976 = !DILocation(line: 124, column: 5, scope: !2930)
!2977 = !DILocation(line: 124, column: 13, scope: !2930)
!2978 = !DILocation(line: 124, column: 25, scope: !2930)
!2979 = !DILocation(line: 124, column: 34, scope: !2930)
!2980 = !DILocation(line: 125, column: 32, scope: !2930)
!2981 = !DILocation(line: 125, column: 40, scope: !2930)
!2982 = !DILocation(line: 125, column: 52, scope: !2930)
!2983 = !DILocation(line: 125, column: 5, scope: !2930)
!2984 = !DILocation(line: 125, column: 13, scope: !2930)
!2985 = !DILocation(line: 125, column: 25, scope: !2930)
!2986 = !DILocation(line: 125, column: 30, scope: !2930)
!2987 = !DILocation(line: 126, column: 35, scope: !2930)
!2988 = !DILocation(line: 126, column: 43, scope: !2930)
!2989 = !DILocation(line: 126, column: 55, scope: !2930)
!2990 = !DILocation(line: 126, column: 5, scope: !2930)
!2991 = !DILocation(line: 126, column: 13, scope: !2930)
!2992 = !DILocation(line: 126, column: 25, scope: !2930)
!2993 = !DILocation(line: 126, column: 33, scope: !2930)
!2994 = !DILocation(line: 128, column: 5, scope: !2930)
!2995 = !DILocation(line: 128, column: 13, scope: !2930)
!2996 = !DILocation(line: 128, column: 19, scope: !2930)
!2997 = !DILocation(line: 129, column: 5, scope: !2930)
!2998 = !DILocation(line: 129, column: 13, scope: !2930)
!2999 = !DILocation(line: 129, column: 30, scope: !2930)
!3000 = !DILocation(line: 130, column: 5, scope: !2930)
!3001 = !DILocation(line: 130, column: 13, scope: !2930)
!3002 = !DILocation(line: 130, column: 32, scope: !2930)
!3003 = !DILocation(line: 131, column: 5, scope: !2930)
!3004 = !DILocation(line: 131, column: 13, scope: !2930)
!3005 = !DILocation(line: 131, column: 35, scope: !2930)
!3006 = !DILocation(line: 132, column: 5, scope: !2930)
!3007 = !DILocation(line: 132, column: 13, scope: !2930)
!3008 = !DILocation(line: 132, column: 35, scope: !2930)
!3009 = !DILocation(line: 133, column: 41, scope: !2930)
!3010 = !DILocation(line: 133, column: 5, scope: !2930)
!3011 = !DILocation(line: 133, column: 13, scope: !2930)
!3012 = !DILocation(line: 133, column: 39, scope: !2930)
!3013 = !DILocation(line: 134, column: 5, scope: !2930)
!3014 = !DILocation(line: 134, column: 13, scope: !2930)
!3015 = !DILocation(line: 134, column: 22, scope: !2930)
!3016 = !DILocation(line: 135, column: 5, scope: !2930)
!3017 = !DILocation(line: 135, column: 13, scope: !2930)
!3018 = !DILocation(line: 135, column: 25, scope: !2930)
!3019 = !DILocation(line: 137, column: 5, scope: !2930)
!3020 = !DILocation(line: 137, column: 13, scope: !2930)
!3021 = !DILocation(line: 137, column: 32, scope: !2930)
!3022 = !DILocation(line: 138, column: 5, scope: !2930)
!3023 = !DILocation(line: 138, column: 13, scope: !2930)
!3024 = !DILocation(line: 138, column: 32, scope: !2930)
!3025 = !DILocation(line: 139, column: 5, scope: !2930)
!3026 = !DILocation(line: 139, column: 13, scope: !2930)
!3027 = !DILocation(line: 139, column: 29, scope: !2930)
!3028 = !DILocation(line: 141, column: 5, scope: !2930)
!3029 = !DILocation(line: 142, column: 1, scope: !2930)
!3030 = distinct !DISubprogram(name: "mqtt_mq_init", scope: !135, file: !135, line: 1605, type: !3031, scopeLine: 1606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !1720, !95, !107}
!3033 = !DILocalVariable(name: "mq", arg: 1, scope: !3030, file: !135, line: 1605, type: !1720)
!3034 = !DILocation(line: 1605, column: 46, scope: !3030)
!3035 = !DILocalVariable(name: "buf", arg: 2, scope: !3030, file: !135, line: 1605, type: !95)
!3036 = !DILocation(line: 1605, column: 56, scope: !3030)
!3037 = !DILocalVariable(name: "bufsz", arg: 3, scope: !3030, file: !135, line: 1605, type: !107)
!3038 = !DILocation(line: 1605, column: 68, scope: !3030)
!3039 = !DILocation(line: 1607, column: 8, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3030, file: !135, line: 1607, column: 8)
!3041 = !DILocation(line: 1607, column: 12, scope: !3040)
!3042 = !DILocation(line: 1607, column: 8, scope: !3030)
!3043 = !DILocation(line: 1609, column: 25, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3040, file: !135, line: 1608, column: 5)
!3045 = !DILocation(line: 1609, column: 9, scope: !3044)
!3046 = !DILocation(line: 1609, column: 13, scope: !3044)
!3047 = !DILocation(line: 1609, column: 23, scope: !3044)
!3048 = !DILocation(line: 1610, column: 39, scope: !3044)
!3049 = !DILocation(line: 1610, column: 45, scope: !3044)
!3050 = !DILocation(line: 1610, column: 43, scope: !3044)
!3051 = !DILocation(line: 1610, column: 9, scope: !3044)
!3052 = !DILocation(line: 1610, column: 13, scope: !3044)
!3053 = !DILocation(line: 1610, column: 21, scope: !3044)
!3054 = !DILocation(line: 1611, column: 20, scope: !3044)
!3055 = !DILocation(line: 1611, column: 9, scope: !3044)
!3056 = !DILocation(line: 1611, column: 13, scope: !3044)
!3057 = !DILocation(line: 1611, column: 18, scope: !3044)
!3058 = !DILocation(line: 1612, column: 26, scope: !3044)
!3059 = !DILocation(line: 1612, column: 30, scope: !3044)
!3060 = !DILocation(line: 1612, column: 9, scope: !3044)
!3061 = !DILocation(line: 1612, column: 13, scope: !3044)
!3062 = !DILocation(line: 1612, column: 24, scope: !3044)
!3063 = !DILocation(line: 1613, column: 23, scope: !3044)
!3064 = !DILocation(line: 1613, column: 9, scope: !3044)
!3065 = !DILocation(line: 1613, column: 13, scope: !3044)
!3066 = !DILocation(line: 1613, column: 21, scope: !3044)
!3067 = !DILocation(line: 1614, column: 5, scope: !3044)
!3068 = !DILocation(line: 1615, column: 1, scope: !3030)
!3069 = distinct !DISubprogram(name: "mqtt_init_reconnect", scope: !135, file: !135, line: 144, type: !3070, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !622, !654, !95, !636}
!3072 = !DILocalVariable(name: "client", arg: 1, scope: !3069, file: !135, line: 144, type: !622)
!3073 = !DILocation(line: 144, column: 46, scope: !3069)
!3074 = !DILocalVariable(name: "reconnect", arg: 2, scope: !3069, file: !135, line: 145, type: !654)
!3075 = !DILocation(line: 145, column: 33, scope: !3069)
!3076 = !DILocalVariable(name: "reconnect_state", arg: 3, scope: !3069, file: !135, line: 146, type: !95)
!3077 = !DILocation(line: 146, column: 32, scope: !3069)
!3078 = !DILocalVariable(name: "publish_response_callback", arg: 4, scope: !3069, file: !135, line: 147, type: !636)
!3079 = !DILocation(line: 147, column: 33, scope: !3069)
!3080 = !DILocation(line: 150, column: 5, scope: !3069)
!3081 = !DILocation(line: 152, column: 5, scope: !3069)
!3082 = !DILocation(line: 152, column: 13, scope: !3069)
!3083 = !DILocation(line: 152, column: 22, scope: !3069)
!3084 = !DILocation(line: 154, column: 19, scope: !3069)
!3085 = !DILocation(line: 154, column: 27, scope: !3069)
!3086 = !DILocation(line: 154, column: 5, scope: !3069)
!3087 = !DILocation(line: 156, column: 5, scope: !3069)
!3088 = !DILocation(line: 156, column: 13, scope: !3069)
!3089 = !DILocation(line: 156, column: 25, scope: !3069)
!3090 = !DILocation(line: 156, column: 35, scope: !3069)
!3091 = !DILocation(line: 157, column: 5, scope: !3069)
!3092 = !DILocation(line: 157, column: 13, scope: !3069)
!3093 = !DILocation(line: 157, column: 25, scope: !3069)
!3094 = !DILocation(line: 157, column: 34, scope: !3069)
!3095 = !DILocation(line: 158, column: 5, scope: !3069)
!3096 = !DILocation(line: 158, column: 13, scope: !3069)
!3097 = !DILocation(line: 158, column: 25, scope: !3069)
!3098 = !DILocation(line: 158, column: 30, scope: !3069)
!3099 = !DILocation(line: 159, column: 5, scope: !3069)
!3100 = !DILocation(line: 159, column: 13, scope: !3069)
!3101 = !DILocation(line: 159, column: 25, scope: !3069)
!3102 = !DILocation(line: 159, column: 33, scope: !3069)
!3103 = !DILocation(line: 161, column: 5, scope: !3069)
!3104 = !DILocation(line: 161, column: 13, scope: !3069)
!3105 = !DILocation(line: 161, column: 19, scope: !3069)
!3106 = !DILocation(line: 162, column: 5, scope: !3069)
!3107 = !DILocation(line: 162, column: 13, scope: !3069)
!3108 = !DILocation(line: 162, column: 30, scope: !3069)
!3109 = !DILocation(line: 163, column: 5, scope: !3069)
!3110 = !DILocation(line: 163, column: 13, scope: !3069)
!3111 = !DILocation(line: 163, column: 32, scope: !3069)
!3112 = !DILocation(line: 164, column: 5, scope: !3069)
!3113 = !DILocation(line: 164, column: 13, scope: !3069)
!3114 = !DILocation(line: 164, column: 35, scope: !3069)
!3115 = !DILocation(line: 165, column: 5, scope: !3069)
!3116 = !DILocation(line: 165, column: 13, scope: !3069)
!3117 = !DILocation(line: 165, column: 35, scope: !3069)
!3118 = !DILocation(line: 166, column: 41, scope: !3069)
!3119 = !DILocation(line: 166, column: 5, scope: !3069)
!3120 = !DILocation(line: 166, column: 13, scope: !3069)
!3121 = !DILocation(line: 166, column: 39, scope: !3069)
!3122 = !DILocation(line: 167, column: 5, scope: !3069)
!3123 = !DILocation(line: 167, column: 13, scope: !3069)
!3124 = !DILocation(line: 167, column: 25, scope: !3069)
!3125 = !DILocation(line: 169, column: 5, scope: !3069)
!3126 = !DILocation(line: 169, column: 13, scope: !3069)
!3127 = !DILocation(line: 169, column: 32, scope: !3069)
!3128 = !DILocation(line: 170, column: 34, scope: !3069)
!3129 = !DILocation(line: 170, column: 5, scope: !3069)
!3130 = !DILocation(line: 170, column: 13, scope: !3069)
!3131 = !DILocation(line: 170, column: 32, scope: !3069)
!3132 = !DILocation(line: 171, column: 31, scope: !3069)
!3133 = !DILocation(line: 171, column: 5, scope: !3069)
!3134 = !DILocation(line: 171, column: 13, scope: !3069)
!3135 = !DILocation(line: 171, column: 29, scope: !3069)
!3136 = !DILocation(line: 172, column: 1, scope: !3069)
!3137 = distinct !DISubprogram(name: "mqtt_reinit", scope: !135, file: !135, line: 174, type: !3138, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{null, !622, !123, !100, !107, !100, !107}
!3140 = !DILocalVariable(name: "client", arg: 1, scope: !3137, file: !135, line: 174, type: !622)
!3141 = !DILocation(line: 174, column: 38, scope: !3137)
!3142 = !DILocalVariable(name: "socketfd", arg: 2, scope: !3137, file: !135, line: 175, type: !123)
!3143 = !DILocation(line: 175, column: 41, scope: !3137)
!3144 = !DILocalVariable(name: "sendbuf", arg: 3, scope: !3137, file: !135, line: 176, type: !100)
!3145 = !DILocation(line: 176, column: 27, scope: !3137)
!3146 = !DILocalVariable(name: "sendbufsz", arg: 4, scope: !3137, file: !135, line: 176, type: !107)
!3147 = !DILocation(line: 176, column: 43, scope: !3137)
!3148 = !DILocalVariable(name: "recvbuf", arg: 5, scope: !3137, file: !135, line: 177, type: !100)
!3149 = !DILocation(line: 177, column: 27, scope: !3137)
!3150 = !DILocalVariable(name: "recvbufsz", arg: 6, scope: !3137, file: !135, line: 177, type: !107)
!3151 = !DILocation(line: 177, column: 43, scope: !3137)
!3152 = !DILocation(line: 179, column: 5, scope: !3137)
!3153 = !DILocation(line: 179, column: 13, scope: !3137)
!3154 = !DILocation(line: 179, column: 19, scope: !3137)
!3155 = !DILocation(line: 180, column: 24, scope: !3137)
!3156 = !DILocation(line: 180, column: 5, scope: !3137)
!3157 = !DILocation(line: 180, column: 13, scope: !3137)
!3158 = !DILocation(line: 180, column: 22, scope: !3137)
!3159 = !DILocation(line: 182, column: 19, scope: !3137)
!3160 = !DILocation(line: 182, column: 27, scope: !3137)
!3161 = !DILocation(line: 182, column: 31, scope: !3137)
!3162 = !DILocation(line: 182, column: 40, scope: !3137)
!3163 = !DILocation(line: 182, column: 5, scope: !3137)
!3164 = !DILocation(line: 184, column: 37, scope: !3137)
!3165 = !DILocation(line: 184, column: 5, scope: !3137)
!3166 = !DILocation(line: 184, column: 13, scope: !3137)
!3167 = !DILocation(line: 184, column: 25, scope: !3137)
!3168 = !DILocation(line: 184, column: 35, scope: !3137)
!3169 = !DILocation(line: 185, column: 36, scope: !3137)
!3170 = !DILocation(line: 185, column: 5, scope: !3137)
!3171 = !DILocation(line: 185, column: 13, scope: !3137)
!3172 = !DILocation(line: 185, column: 25, scope: !3137)
!3173 = !DILocation(line: 185, column: 34, scope: !3137)
!3174 = !DILocation(line: 186, column: 32, scope: !3137)
!3175 = !DILocation(line: 186, column: 40, scope: !3137)
!3176 = !DILocation(line: 186, column: 52, scope: !3137)
!3177 = !DILocation(line: 186, column: 5, scope: !3137)
!3178 = !DILocation(line: 186, column: 13, scope: !3137)
!3179 = !DILocation(line: 186, column: 25, scope: !3137)
!3180 = !DILocation(line: 186, column: 30, scope: !3137)
!3181 = !DILocation(line: 187, column: 35, scope: !3137)
!3182 = !DILocation(line: 187, column: 43, scope: !3137)
!3183 = !DILocation(line: 187, column: 55, scope: !3137)
!3184 = !DILocation(line: 187, column: 5, scope: !3137)
!3185 = !DILocation(line: 187, column: 13, scope: !3137)
!3186 = !DILocation(line: 187, column: 25, scope: !3137)
!3187 = !DILocation(line: 187, column: 33, scope: !3137)
!3188 = !DILocation(line: 188, column: 1, scope: !3137)
!3189 = distinct !DISubprogram(name: "mqtt_connect", scope: !135, file: !135, line: 224, type: !3190, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!5, !622, !124, !124, !190, !107, !124, !124, !101, !120}
!3192 = !DILocalVariable(name: "client", arg: 1, scope: !3189, file: !135, line: 224, type: !622)
!3193 = !DILocation(line: 224, column: 50, scope: !3189)
!3194 = !DILocalVariable(name: "client_id", arg: 2, scope: !3189, file: !135, line: 225, type: !124)
!3195 = !DILocation(line: 225, column: 34, scope: !3189)
!3196 = !DILocalVariable(name: "will_topic", arg: 3, scope: !3189, file: !135, line: 226, type: !124)
!3197 = !DILocation(line: 226, column: 34, scope: !3189)
!3198 = !DILocalVariable(name: "will_message", arg: 4, scope: !3189, file: !135, line: 227, type: !190)
!3199 = !DILocation(line: 227, column: 34, scope: !3189)
!3200 = !DILocalVariable(name: "will_message_size", arg: 5, scope: !3189, file: !135, line: 228, type: !107)
!3201 = !DILocation(line: 228, column: 29, scope: !3189)
!3202 = !DILocalVariable(name: "user_name", arg: 6, scope: !3189, file: !135, line: 229, type: !124)
!3203 = !DILocation(line: 229, column: 34, scope: !3189)
!3204 = !DILocalVariable(name: "password", arg: 7, scope: !3189, file: !135, line: 230, type: !124)
!3205 = !DILocation(line: 230, column: 34, scope: !3189)
!3206 = !DILocalVariable(name: "connect_flags", arg: 8, scope: !3189, file: !135, line: 231, type: !101)
!3207 = !DILocation(line: 231, column: 30, scope: !3189)
!3208 = !DILocalVariable(name: "keep_alive", arg: 9, scope: !3189, file: !135, line: 232, type: !120)
!3209 = !DILocation(line: 232, column: 31, scope: !3189)
!3210 = !DILocalVariable(name: "rv", scope: !3189, file: !135, line: 234, type: !789)
!3211 = !DILocation(line: 234, column: 13, scope: !3189)
!3212 = !DILocalVariable(name: "msg", scope: !3189, file: !135, line: 235, type: !96)
!3213 = !DILocation(line: 235, column: 33, scope: !3189)
!3214 = !DILocation(line: 240, column: 26, scope: !3189)
!3215 = !DILocation(line: 240, column: 5, scope: !3189)
!3216 = !DILocation(line: 240, column: 13, scope: !3189)
!3217 = !DILocation(line: 240, column: 24, scope: !3189)
!3218 = !DILocation(line: 241, column: 9, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3189, file: !135, line: 241, column: 9)
!3220 = !DILocation(line: 241, column: 17, scope: !3219)
!3221 = !DILocation(line: 241, column: 23, scope: !3219)
!3222 = !DILocation(line: 241, column: 9, scope: !3189)
!3223 = !DILocation(line: 242, column: 9, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3219, file: !135, line: 241, column: 57)
!3225 = !DILocation(line: 242, column: 17, scope: !3224)
!3226 = !DILocation(line: 242, column: 23, scope: !3224)
!3227 = !DILocation(line: 243, column: 5, scope: !3224)
!3228 = !DILocation(line: 246, column: 5, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3189, file: !135, line: 246, column: 5)
!3230 = !DILocation(line: 246, column: 5, scope: !3189)
!3231 = !DILocation(line: 246, column: 5, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !135, line: 246, column: 5)
!3233 = distinct !DILexicalBlock(scope: !3229, file: !135, line: 246, column: 5)
!3234 = !DILocation(line: 246, column: 5, scope: !3233)
!3235 = !DILocation(line: 246, column: 5, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3189, file: !135, line: 246, column: 5)
!3237 = !DILocation(line: 246, column: 5, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3236, file: !135, line: 246, column: 5)
!3239 = !DILocation(line: 246, column: 5, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3238, file: !135, line: 246, column: 5)
!3241 = !DILocation(line: 246, column: 5, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3236, file: !135, line: 246, column: 5)
!3243 = !DILocation(line: 246, column: 5, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3242, file: !135, line: 246, column: 5)
!3245 = !DILocation(line: 246, column: 5, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3244, file: !135, line: 246, column: 5)
!3247 = !DILocation(line: 246, column: 5, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3246, file: !135, line: 246, column: 5)
!3249 = !DILocation(line: 246, column: 5, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3248, file: !135, line: 246, column: 5)
!3251 = !DILocation(line: 246, column: 5, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3246, file: !135, line: 246, column: 5)
!3253 = !DILocation(line: 246, column: 5, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3252, file: !135, line: 246, column: 5)
!3255 = !DILocation(line: 246, column: 5, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3254, file: !135, line: 246, column: 5)
!3257 = !DILocation(line: 256, column: 5, scope: !3189)
!3258 = !DILocation(line: 256, column: 10, scope: !3189)
!3259 = !DILocation(line: 256, column: 23, scope: !3189)
!3260 = !DILocation(line: 258, column: 5, scope: !3189)
!3261 = !DILocation(line: 259, column: 5, scope: !3189)
!3262 = !DILocation(line: 260, column: 1, scope: !3189)
!3263 = distinct !DISubprogram(name: "mqtt_pack_connection_request", scope: !135, file: !135, line: 1094, type: !3264, scopeLine: 1103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!789, !100, !107, !124, !124, !190, !107, !124, !124, !101, !120}
!3266 = !DILocalVariable(name: "buf", arg: 1, scope: !3263, file: !135, line: 1094, type: !100)
!3267 = !DILocation(line: 1094, column: 47, scope: !3263)
!3268 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3263, file: !135, line: 1094, type: !107)
!3269 = !DILocation(line: 1094, column: 59, scope: !3263)
!3270 = !DILocalVariable(name: "client_id", arg: 3, scope: !3263, file: !135, line: 1095, type: !124)
!3271 = !DILocation(line: 1095, column: 50, scope: !3263)
!3272 = !DILocalVariable(name: "will_topic", arg: 4, scope: !3263, file: !135, line: 1096, type: !124)
!3273 = !DILocation(line: 1096, column: 50, scope: !3263)
!3274 = !DILocalVariable(name: "will_message", arg: 5, scope: !3263, file: !135, line: 1097, type: !190)
!3275 = !DILocation(line: 1097, column: 50, scope: !3263)
!3276 = !DILocalVariable(name: "will_message_size", arg: 6, scope: !3263, file: !135, line: 1098, type: !107)
!3277 = !DILocation(line: 1098, column: 45, scope: !3263)
!3278 = !DILocalVariable(name: "user_name", arg: 7, scope: !3263, file: !135, line: 1099, type: !124)
!3279 = !DILocation(line: 1099, column: 50, scope: !3263)
!3280 = !DILocalVariable(name: "password", arg: 8, scope: !3263, file: !135, line: 1100, type: !124)
!3281 = !DILocation(line: 1100, column: 50, scope: !3263)
!3282 = !DILocalVariable(name: "connect_flags", arg: 9, scope: !3263, file: !135, line: 1101, type: !101)
!3283 = !DILocation(line: 1101, column: 46, scope: !3263)
!3284 = !DILocalVariable(name: "keep_alive", arg: 10, scope: !3263, file: !135, line: 1102, type: !120)
!3285 = !DILocation(line: 1102, column: 47, scope: !3263)
!3286 = !DILocalVariable(name: "fixed_header", scope: !3263, file: !135, line: 1104, type: !798)
!3287 = !DILocation(line: 1104, column: 30, scope: !3263)
!3288 = !DILocalVariable(name: "remaining_length", scope: !3263, file: !135, line: 1105, type: !107)
!3289 = !DILocation(line: 1105, column: 12, scope: !3263)
!3290 = !DILocalVariable(name: "start", scope: !3263, file: !135, line: 1106, type: !2042)
!3291 = !DILocation(line: 1106, column: 26, scope: !3263)
!3292 = !DILocation(line: 1106, column: 34, scope: !3263)
!3293 = !DILocalVariable(name: "rv", scope: !3263, file: !135, line: 1107, type: !789)
!3294 = !DILocation(line: 1107, column: 13, scope: !3263)
!3295 = !DILocation(line: 1110, column: 18, scope: !3263)
!3296 = !DILocation(line: 1110, column: 31, scope: !3263)
!3297 = !DILocation(line: 1111, column: 18, scope: !3263)
!3298 = !DILocation(line: 1111, column: 32, scope: !3263)
!3299 = !DILocation(line: 1114, column: 21, scope: !3263)
!3300 = !DILocation(line: 1114, column: 35, scope: !3263)
!3301 = !DILocation(line: 1114, column: 19, scope: !3263)
!3302 = !DILocation(line: 1115, column: 22, scope: !3263)
!3303 = !DILocation(line: 1117, column: 9, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3263, file: !135, line: 1117, column: 9)
!3305 = !DILocation(line: 1117, column: 19, scope: !3304)
!3306 = !DILocation(line: 1117, column: 9, scope: !3263)
!3307 = !DILocation(line: 1118, column: 19, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3304, file: !135, line: 1117, column: 28)
!3309 = !DILocation(line: 1119, column: 5, scope: !3308)
!3310 = !DILocation(line: 1121, column: 9, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3263, file: !135, line: 1121, column: 9)
!3312 = !DILocation(line: 1121, column: 22, scope: !3311)
!3313 = !DILocation(line: 1121, column: 30, scope: !3311)
!3314 = !DILocation(line: 1121, column: 35, scope: !3311)
!3315 = !DILocation(line: 1121, column: 49, scope: !3311)
!3316 = !DILocation(line: 1121, column: 9, scope: !3263)
!3317 = !DILocation(line: 1122, column: 9, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3311, file: !135, line: 1121, column: 80)
!3319 = !DILocation(line: 1125, column: 25, scope: !3263)
!3320 = !DILocation(line: 1125, column: 22, scope: !3263)
!3321 = !DILocation(line: 1127, column: 9, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3263, file: !135, line: 1127, column: 9)
!3323 = !DILocation(line: 1127, column: 20, scope: !3322)
!3324 = !DILocation(line: 1127, column: 9, scope: !3263)
!3325 = !DILocalVariable(name: "temp", scope: !3326, file: !135, line: 1128, type: !101)
!3326 = distinct !DILexicalBlock(scope: !3322, file: !135, line: 1127, column: 29)
!3327 = !DILocation(line: 1128, column: 17, scope: !3326)
!3328 = !DILocation(line: 1130, column: 23, scope: !3326)
!3329 = !DILocation(line: 1131, column: 29, scope: !3326)
!3330 = !DILocation(line: 1131, column: 26, scope: !3326)
!3331 = !DILocation(line: 1133, column: 13, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3326, file: !135, line: 1133, column: 13)
!3333 = !DILocation(line: 1133, column: 26, scope: !3332)
!3334 = !DILocation(line: 1133, column: 13, scope: !3326)
!3335 = !DILocation(line: 1135, column: 13, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !135, line: 1133, column: 35)
!3337 = !DILocation(line: 1137, column: 33, scope: !3326)
!3338 = !DILocation(line: 1137, column: 31, scope: !3326)
!3339 = !DILocation(line: 1137, column: 26, scope: !3326)
!3340 = !DILocation(line: 1140, column: 16, scope: !3326)
!3341 = !DILocation(line: 1140, column: 30, scope: !3326)
!3342 = !DILocation(line: 1140, column: 14, scope: !3326)
!3343 = !DILocation(line: 1141, column: 13, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3326, file: !135, line: 1141, column: 13)
!3345 = !DILocation(line: 1141, column: 18, scope: !3344)
!3346 = !DILocation(line: 1141, column: 13, scope: !3326)
!3347 = !DILocation(line: 1143, column: 13, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3344, file: !135, line: 1141, column: 27)
!3349 = !DILocation(line: 1145, column: 5, scope: !3326)
!3350 = !DILocation(line: 1147, column: 23, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3322, file: !135, line: 1145, column: 12)
!3352 = !DILocation(line: 1148, column: 23, scope: !3351)
!3353 = !DILocation(line: 1149, column: 23, scope: !3351)
!3354 = !DILocation(line: 1152, column: 9, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3263, file: !135, line: 1152, column: 9)
!3356 = !DILocation(line: 1152, column: 19, scope: !3355)
!3357 = !DILocation(line: 1152, column: 9, scope: !3263)
!3358 = !DILocation(line: 1154, column: 23, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3355, file: !135, line: 1152, column: 28)
!3360 = !DILocation(line: 1155, column: 29, scope: !3359)
!3361 = !DILocation(line: 1155, column: 26, scope: !3359)
!3362 = !DILocation(line: 1156, column: 5, scope: !3359)
!3363 = !DILocation(line: 1157, column: 23, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3355, file: !135, line: 1156, column: 12)
!3365 = !DILocation(line: 1160, column: 9, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3263, file: !135, line: 1160, column: 9)
!3367 = !DILocation(line: 1160, column: 18, scope: !3366)
!3368 = !DILocation(line: 1160, column: 9, scope: !3263)
!3369 = !DILocation(line: 1162, column: 23, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3366, file: !135, line: 1160, column: 27)
!3371 = !DILocation(line: 1163, column: 29, scope: !3370)
!3372 = !DILocation(line: 1163, column: 26, scope: !3370)
!3373 = !DILocation(line: 1164, column: 5, scope: !3370)
!3374 = !DILocation(line: 1165, column: 23, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3366, file: !135, line: 1164, column: 12)
!3376 = !DILocation(line: 1169, column: 37, scope: !3263)
!3377 = !DILocation(line: 1169, column: 18, scope: !3263)
!3378 = !DILocation(line: 1169, column: 35, scope: !3263)
!3379 = !DILocation(line: 1172, column: 33, scope: !3263)
!3380 = !DILocation(line: 1172, column: 38, scope: !3263)
!3381 = !DILocation(line: 1172, column: 10, scope: !3263)
!3382 = !DILocation(line: 1172, column: 8, scope: !3263)
!3383 = !DILocation(line: 1173, column: 9, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3263, file: !135, line: 1173, column: 9)
!3385 = !DILocation(line: 1173, column: 12, scope: !3384)
!3386 = !DILocation(line: 1173, column: 9, scope: !3263)
!3387 = !DILocation(line: 1175, column: 16, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3384, file: !135, line: 1173, column: 18)
!3389 = !DILocation(line: 1175, column: 9, scope: !3388)
!3390 = !DILocation(line: 1177, column: 12, scope: !3263)
!3391 = !DILocation(line: 1177, column: 9, scope: !3263)
!3392 = !DILocation(line: 1178, column: 14, scope: !3263)
!3393 = !DILocation(line: 1178, column: 11, scope: !3263)
!3394 = !DILocation(line: 1181, column: 9, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3263, file: !135, line: 1181, column: 9)
!3396 = !DILocation(line: 1181, column: 30, scope: !3395)
!3397 = !DILocation(line: 1181, column: 17, scope: !3395)
!3398 = !DILocation(line: 1181, column: 15, scope: !3395)
!3399 = !DILocation(line: 1181, column: 9, scope: !3263)
!3400 = !DILocation(line: 1182, column: 9, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3395, file: !135, line: 1181, column: 48)
!3402 = !DILocation(line: 1186, column: 9, scope: !3263)
!3403 = !DILocation(line: 1186, column: 12, scope: !3263)
!3404 = !DILocation(line: 1187, column: 9, scope: !3263)
!3405 = !DILocation(line: 1187, column: 12, scope: !3263)
!3406 = !DILocation(line: 1188, column: 9, scope: !3263)
!3407 = !DILocation(line: 1188, column: 12, scope: !3263)
!3408 = !DILocation(line: 1189, column: 9, scope: !3263)
!3409 = !DILocation(line: 1189, column: 12, scope: !3263)
!3410 = !DILocation(line: 1190, column: 9, scope: !3263)
!3411 = !DILocation(line: 1190, column: 12, scope: !3263)
!3412 = !DILocation(line: 1191, column: 9, scope: !3263)
!3413 = !DILocation(line: 1191, column: 12, scope: !3263)
!3414 = !DILocation(line: 1192, column: 9, scope: !3263)
!3415 = !DILocation(line: 1192, column: 12, scope: !3263)
!3416 = !DILocation(line: 1193, column: 14, scope: !3263)
!3417 = !DILocation(line: 1193, column: 9, scope: !3263)
!3418 = !DILocation(line: 1193, column: 12, scope: !3263)
!3419 = !DILocation(line: 1194, column: 31, scope: !3263)
!3420 = !DILocation(line: 1194, column: 36, scope: !3263)
!3421 = !DILocation(line: 1194, column: 12, scope: !3263)
!3422 = !DILocation(line: 1194, column: 9, scope: !3263)
!3423 = !DILocation(line: 1197, column: 28, scope: !3263)
!3424 = !DILocation(line: 1197, column: 33, scope: !3263)
!3425 = !DILocation(line: 1197, column: 12, scope: !3263)
!3426 = !DILocation(line: 1197, column: 9, scope: !3263)
!3427 = !DILocation(line: 1198, column: 9, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3263, file: !135, line: 1198, column: 9)
!3429 = !DILocation(line: 1198, column: 23, scope: !3428)
!3430 = !DILocation(line: 1198, column: 9, scope: !3263)
!3431 = !DILocation(line: 1199, column: 32, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3428, file: !135, line: 1198, column: 49)
!3433 = !DILocation(line: 1199, column: 37, scope: !3432)
!3434 = !DILocation(line: 1199, column: 16, scope: !3432)
!3435 = !DILocation(line: 1199, column: 13, scope: !3432)
!3436 = !DILocation(line: 1200, column: 35, scope: !3432)
!3437 = !DILocation(line: 1200, column: 50, scope: !3432)
!3438 = !DILocation(line: 1200, column: 40, scope: !3432)
!3439 = !DILocation(line: 1200, column: 16, scope: !3432)
!3440 = !DILocation(line: 1200, column: 13, scope: !3432)
!3441 = !DILocation(line: 1201, column: 16, scope: !3432)
!3442 = !DILocation(line: 1201, column: 21, scope: !3432)
!3443 = !DILocation(line: 1201, column: 35, scope: !3432)
!3444 = !DILocation(line: 1201, column: 9, scope: !3432)
!3445 = !DILocation(line: 1202, column: 16, scope: !3432)
!3446 = !DILocation(line: 1202, column: 13, scope: !3432)
!3447 = !DILocation(line: 1203, column: 5, scope: !3432)
!3448 = !DILocation(line: 1204, column: 9, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3263, file: !135, line: 1204, column: 9)
!3450 = !DILocation(line: 1204, column: 23, scope: !3449)
!3451 = !DILocation(line: 1204, column: 9, scope: !3263)
!3452 = !DILocation(line: 1205, column: 32, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !135, line: 1204, column: 49)
!3454 = !DILocation(line: 1205, column: 37, scope: !3453)
!3455 = !DILocation(line: 1205, column: 16, scope: !3453)
!3456 = !DILocation(line: 1205, column: 13, scope: !3453)
!3457 = !DILocation(line: 1206, column: 5, scope: !3453)
!3458 = !DILocation(line: 1207, column: 9, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3263, file: !135, line: 1207, column: 9)
!3460 = !DILocation(line: 1207, column: 23, scope: !3459)
!3461 = !DILocation(line: 1207, column: 9, scope: !3263)
!3462 = !DILocation(line: 1208, column: 32, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3459, file: !135, line: 1207, column: 48)
!3464 = !DILocation(line: 1208, column: 37, scope: !3463)
!3465 = !DILocation(line: 1208, column: 16, scope: !3463)
!3466 = !DILocation(line: 1208, column: 13, scope: !3463)
!3467 = !DILocation(line: 1209, column: 5, scope: !3463)
!3468 = !DILocation(line: 1212, column: 12, scope: !3263)
!3469 = !DILocation(line: 1212, column: 18, scope: !3263)
!3470 = !DILocation(line: 1212, column: 16, scope: !3263)
!3471 = !DILocation(line: 1212, column: 5, scope: !3263)
!3472 = !DILocation(line: 1213, column: 1, scope: !3263)
!3473 = distinct !DISubprogram(name: "__mqtt_pack_str", scope: !135, file: !135, line: 1750, type: !3474, scopeLine: 1750, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!789, !100, !124}
!3476 = !DILocalVariable(name: "buf", arg: 1, scope: !3473, file: !135, line: 1750, type: !100)
!3477 = !DILocation(line: 1750, column: 34, scope: !3473)
!3478 = !DILocalVariable(name: "str", arg: 2, scope: !3473, file: !135, line: 1750, type: !124)
!3479 = !DILocation(line: 1750, column: 51, scope: !3473)
!3480 = !DILocalVariable(name: "length", scope: !3473, file: !135, line: 1751, type: !120)
!3481 = !DILocation(line: 1751, column: 14, scope: !3473)
!3482 = !DILocation(line: 1751, column: 40, scope: !3473)
!3483 = !DILocation(line: 1751, column: 33, scope: !3473)
!3484 = !DILocation(line: 1751, column: 23, scope: !3473)
!3485 = !DILocalVariable(name: "i", scope: !3473, file: !135, line: 1752, type: !7)
!3486 = !DILocation(line: 1752, column: 9, scope: !3473)
!3487 = !DILocation(line: 1754, column: 31, scope: !3473)
!3488 = !DILocation(line: 1754, column: 36, scope: !3473)
!3489 = !DILocation(line: 1754, column: 12, scope: !3473)
!3490 = !DILocation(line: 1754, column: 9, scope: !3473)
!3491 = !DILocation(line: 1757, column: 5, scope: !3473)
!3492 = !DILocation(line: 1757, column: 11, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !135, line: 1757, column: 5)
!3494 = distinct !DILexicalBlock(scope: !3473, file: !135, line: 1757, column: 5)
!3495 = !DILocation(line: 1757, column: 15, scope: !3493)
!3496 = !DILocation(line: 1757, column: 13, scope: !3493)
!3497 = !DILocation(line: 1757, column: 5, scope: !3494)
!3498 = !DILocation(line: 1758, column: 20, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3493, file: !135, line: 1757, column: 28)
!3500 = !DILocation(line: 1758, column: 24, scope: !3499)
!3501 = !DILocation(line: 1758, column: 14, scope: !3499)
!3502 = !DILocation(line: 1758, column: 18, scope: !3499)
!3503 = !DILocation(line: 1759, column: 5, scope: !3499)
!3504 = !DILocation(line: 1757, column: 23, scope: !3493)
!3505 = !DILocation(line: 1757, column: 5, scope: !3493)
!3506 = distinct !{!3506, !3497, !3507, !377}
!3507 = !DILocation(line: 1759, column: 5, scope: !3494)
!3508 = !DILocation(line: 1762, column: 12, scope: !3473)
!3509 = !DILocation(line: 1762, column: 19, scope: !3473)
!3510 = !DILocation(line: 1762, column: 5, scope: !3473)
!3511 = distinct !DISubprogram(name: "mqtt_publish", scope: !135, file: !135, line: 262, type: !3512, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!5, !622, !124, !190, !107, !101}
!3514 = !DILocalVariable(name: "client", arg: 1, scope: !3511, file: !135, line: 262, type: !622)
!3515 = !DILocation(line: 262, column: 50, scope: !3511)
!3516 = !DILocalVariable(name: "topic_name", arg: 2, scope: !3511, file: !135, line: 263, type: !124)
!3517 = !DILocation(line: 263, column: 34, scope: !3511)
!3518 = !DILocalVariable(name: "application_message", arg: 3, scope: !3511, file: !135, line: 264, type: !190)
!3519 = !DILocation(line: 264, column: 34, scope: !3511)
!3520 = !DILocalVariable(name: "application_message_size", arg: 4, scope: !3511, file: !135, line: 265, type: !107)
!3521 = !DILocation(line: 265, column: 29, scope: !3511)
!3522 = !DILocalVariable(name: "publish_flags", arg: 5, scope: !3511, file: !135, line: 266, type: !101)
!3523 = !DILocation(line: 266, column: 30, scope: !3511)
!3524 = !DILocalVariable(name: "msg", scope: !3511, file: !135, line: 268, type: !96)
!3525 = !DILocation(line: 268, column: 33, scope: !3511)
!3526 = !DILocalVariable(name: "rv", scope: !3511, file: !135, line: 269, type: !789)
!3527 = !DILocation(line: 269, column: 13, scope: !3511)
!3528 = !DILocalVariable(name: "packet_id", scope: !3511, file: !135, line: 270, type: !120)
!3529 = !DILocation(line: 270, column: 14, scope: !3511)
!3530 = !DILocation(line: 271, column: 5, scope: !3511)
!3531 = !DILocation(line: 272, column: 33, scope: !3511)
!3532 = !DILocation(line: 272, column: 17, scope: !3511)
!3533 = !DILocation(line: 272, column: 15, scope: !3511)
!3534 = !DILocation(line: 276, column: 5, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3511, file: !135, line: 276, column: 5)
!3536 = !DILocation(line: 276, column: 5, scope: !3511)
!3537 = !DILocation(line: 276, column: 5, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !135, line: 276, column: 5)
!3539 = distinct !DILexicalBlock(scope: !3535, file: !135, line: 276, column: 5)
!3540 = !DILocation(line: 276, column: 5, scope: !3539)
!3541 = !DILocation(line: 276, column: 5, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3511, file: !135, line: 276, column: 5)
!3543 = !DILocation(line: 276, column: 5, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3542, file: !135, line: 276, column: 5)
!3545 = !DILocation(line: 276, column: 5, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3544, file: !135, line: 276, column: 5)
!3547 = !DILocation(line: 276, column: 5, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3542, file: !135, line: 276, column: 5)
!3549 = !DILocation(line: 276, column: 5, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3548, file: !135, line: 276, column: 5)
!3551 = !DILocation(line: 276, column: 5, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3550, file: !135, line: 276, column: 5)
!3553 = !DILocation(line: 276, column: 5, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3552, file: !135, line: 276, column: 5)
!3555 = !DILocation(line: 276, column: 5, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3554, file: !135, line: 276, column: 5)
!3557 = !DILocation(line: 276, column: 5, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3552, file: !135, line: 276, column: 5)
!3559 = !DILocation(line: 276, column: 5, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3558, file: !135, line: 276, column: 5)
!3561 = !DILocation(line: 276, column: 5, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3560, file: !135, line: 276, column: 5)
!3563 = !DILocation(line: 289, column: 5, scope: !3511)
!3564 = !DILocation(line: 289, column: 10, scope: !3511)
!3565 = !DILocation(line: 289, column: 23, scope: !3511)
!3566 = !DILocation(line: 290, column: 22, scope: !3511)
!3567 = !DILocation(line: 290, column: 5, scope: !3511)
!3568 = !DILocation(line: 290, column: 10, scope: !3511)
!3569 = !DILocation(line: 290, column: 20, scope: !3511)
!3570 = !DILocation(line: 292, column: 5, scope: !3511)
!3571 = !DILocation(line: 293, column: 5, scope: !3511)
!3572 = !DILocation(line: 294, column: 1, scope: !3511)
!3573 = distinct !DISubprogram(name: "mqtt_pack_publish_request", scope: !135, file: !135, line: 1262, type: !3574, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!789, !100, !107, !124, !120, !190, !107, !101}
!3576 = !DILocalVariable(name: "buf", arg: 1, scope: !3573, file: !135, line: 1262, type: !100)
!3577 = !DILocation(line: 1262, column: 44, scope: !3573)
!3578 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3573, file: !135, line: 1262, type: !107)
!3579 = !DILocation(line: 1262, column: 56, scope: !3573)
!3580 = !DILocalVariable(name: "topic_name", arg: 3, scope: !3573, file: !135, line: 1263, type: !124)
!3581 = !DILocation(line: 1263, column: 47, scope: !3573)
!3582 = !DILocalVariable(name: "packet_id", arg: 4, scope: !3573, file: !135, line: 1264, type: !120)
!3583 = !DILocation(line: 1264, column: 44, scope: !3573)
!3584 = !DILocalVariable(name: "application_message", arg: 5, scope: !3573, file: !135, line: 1265, type: !190)
!3585 = !DILocation(line: 1265, column: 47, scope: !3573)
!3586 = !DILocalVariable(name: "application_message_size", arg: 6, scope: !3573, file: !135, line: 1266, type: !107)
!3587 = !DILocation(line: 1266, column: 42, scope: !3573)
!3588 = !DILocalVariable(name: "publish_flags", arg: 7, scope: !3573, file: !135, line: 1267, type: !101)
!3589 = !DILocation(line: 1267, column: 43, scope: !3573)
!3590 = !DILocalVariable(name: "start", scope: !3573, file: !135, line: 1269, type: !2042)
!3591 = !DILocation(line: 1269, column: 26, scope: !3573)
!3592 = !DILocation(line: 1269, column: 34, scope: !3573)
!3593 = !DILocalVariable(name: "rv", scope: !3573, file: !135, line: 1270, type: !789)
!3594 = !DILocation(line: 1270, column: 13, scope: !3573)
!3595 = !DILocalVariable(name: "fixed_header", scope: !3573, file: !135, line: 1271, type: !798)
!3596 = !DILocation(line: 1271, column: 30, scope: !3573)
!3597 = !DILocalVariable(name: "remaining_length", scope: !3573, file: !135, line: 1272, type: !130)
!3598 = !DILocation(line: 1272, column: 14, scope: !3573)
!3599 = !DILocalVariable(name: "inspected_qos", scope: !3573, file: !135, line: 1273, type: !101)
!3600 = !DILocation(line: 1273, column: 13, scope: !3573)
!3601 = !DILocation(line: 1276, column: 8, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3573, file: !135, line: 1276, column: 8)
!3603 = !DILocation(line: 1276, column: 12, scope: !3602)
!3604 = !DILocation(line: 1276, column: 20, scope: !3602)
!3605 = !DILocation(line: 1276, column: 23, scope: !3602)
!3606 = !DILocation(line: 1276, column: 34, scope: !3602)
!3607 = !DILocation(line: 1276, column: 8, scope: !3573)
!3608 = !DILocation(line: 1277, column: 9, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3602, file: !135, line: 1276, column: 43)
!3610 = !DILocation(line: 1281, column: 22, scope: !3573)
!3611 = !DILocation(line: 1281, column: 36, scope: !3573)
!3612 = !DILocation(line: 1281, column: 61, scope: !3573)
!3613 = !DILocation(line: 1281, column: 21, scope: !3573)
!3614 = !DILocation(line: 1281, column: 19, scope: !3573)
!3615 = !DILocation(line: 1284, column: 18, scope: !3573)
!3616 = !DILocation(line: 1284, column: 31, scope: !3573)
!3617 = !DILocation(line: 1287, column: 34, scope: !3573)
!3618 = !DILocation(line: 1287, column: 24, scope: !3573)
!3619 = !DILocation(line: 1287, column: 22, scope: !3573)
!3620 = !DILocation(line: 1288, column: 9, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3573, file: !135, line: 1288, column: 9)
!3622 = !DILocation(line: 1288, column: 23, scope: !3621)
!3623 = !DILocation(line: 1288, column: 9, scope: !3573)
!3624 = !DILocation(line: 1289, column: 26, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3621, file: !135, line: 1288, column: 28)
!3626 = !DILocation(line: 1290, column: 5, scope: !3625)
!3627 = !DILocation(line: 1291, column: 35, scope: !3573)
!3628 = !DILocation(line: 1291, column: 25, scope: !3573)
!3629 = !DILocation(line: 1291, column: 22, scope: !3573)
!3630 = !DILocation(line: 1292, column: 37, scope: !3573)
!3631 = !DILocation(line: 1292, column: 18, scope: !3573)
!3632 = !DILocation(line: 1292, column: 35, scope: !3573)
!3633 = !DILocation(line: 1295, column: 9, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3573, file: !135, line: 1295, column: 9)
!3635 = !DILocation(line: 1295, column: 23, scope: !3634)
!3636 = !DILocation(line: 1295, column: 9, scope: !3573)
!3637 = !DILocation(line: 1296, column: 23, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3634, file: !135, line: 1295, column: 29)
!3639 = !DILocation(line: 1297, column: 5, scope: !3638)
!3640 = !DILocation(line: 1300, column: 9, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3573, file: !135, line: 1300, column: 9)
!3642 = !DILocation(line: 1300, column: 23, scope: !3641)
!3643 = !DILocation(line: 1300, column: 9, scope: !3573)
!3644 = !DILocation(line: 1301, column: 9, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !135, line: 1300, column: 29)
!3646 = !DILocation(line: 1303, column: 34, scope: !3573)
!3647 = !DILocation(line: 1303, column: 18, scope: !3573)
!3648 = !DILocation(line: 1303, column: 32, scope: !3573)
!3649 = !DILocation(line: 1306, column: 33, scope: !3573)
!3650 = !DILocation(line: 1306, column: 38, scope: !3573)
!3651 = !DILocation(line: 1306, column: 10, scope: !3573)
!3652 = !DILocation(line: 1306, column: 8, scope: !3573)
!3653 = !DILocation(line: 1307, column: 9, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3573, file: !135, line: 1307, column: 9)
!3655 = !DILocation(line: 1307, column: 12, scope: !3654)
!3656 = !DILocation(line: 1307, column: 9, scope: !3573)
!3657 = !DILocation(line: 1309, column: 16, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !135, line: 1307, column: 18)
!3659 = !DILocation(line: 1309, column: 9, scope: !3658)
!3660 = !DILocation(line: 1311, column: 12, scope: !3573)
!3661 = !DILocation(line: 1311, column: 9, scope: !3573)
!3662 = !DILocation(line: 1312, column: 14, scope: !3573)
!3663 = !DILocation(line: 1312, column: 11, scope: !3573)
!3664 = !DILocation(line: 1315, column: 9, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3573, file: !135, line: 1315, column: 9)
!3666 = !DILocation(line: 1315, column: 17, scope: !3665)
!3667 = !DILocation(line: 1315, column: 15, scope: !3665)
!3668 = !DILocation(line: 1315, column: 9, scope: !3573)
!3669 = !DILocation(line: 1316, column: 9, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3665, file: !135, line: 1315, column: 35)
!3671 = !DILocation(line: 1320, column: 28, scope: !3573)
!3672 = !DILocation(line: 1320, column: 33, scope: !3573)
!3673 = !DILocation(line: 1320, column: 12, scope: !3573)
!3674 = !DILocation(line: 1320, column: 9, scope: !3573)
!3675 = !DILocation(line: 1321, column: 9, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3573, file: !135, line: 1321, column: 9)
!3677 = !DILocation(line: 1321, column: 23, scope: !3676)
!3678 = !DILocation(line: 1321, column: 9, scope: !3573)
!3679 = !DILocation(line: 1322, column: 35, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3676, file: !135, line: 1321, column: 28)
!3681 = !DILocation(line: 1322, column: 40, scope: !3680)
!3682 = !DILocation(line: 1322, column: 16, scope: !3680)
!3683 = !DILocation(line: 1322, column: 13, scope: !3680)
!3684 = !DILocation(line: 1323, column: 5, scope: !3680)
!3685 = !DILocation(line: 1326, column: 12, scope: !3573)
!3686 = !DILocation(line: 1326, column: 17, scope: !3573)
!3687 = !DILocation(line: 1326, column: 38, scope: !3573)
!3688 = !DILocation(line: 1326, column: 5, scope: !3573)
!3689 = !DILocation(line: 1327, column: 12, scope: !3573)
!3690 = !DILocation(line: 1327, column: 9, scope: !3573)
!3691 = !DILocation(line: 1329, column: 12, scope: !3573)
!3692 = !DILocation(line: 1329, column: 18, scope: !3573)
!3693 = !DILocation(line: 1329, column: 16, scope: !3573)
!3694 = !DILocation(line: 1329, column: 5, scope: !3573)
!3695 = !DILocation(line: 1330, column: 1, scope: !3573)
!3696 = distinct !DISubprogram(name: "mqtt_subscribe", scope: !135, file: !135, line: 380, type: !3697, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!5, !622, !124, !7}
!3699 = !DILocalVariable(name: "client", arg: 1, scope: !3696, file: !135, line: 380, type: !622)
!3700 = !DILocation(line: 380, column: 52, scope: !3696)
!3701 = !DILocalVariable(name: "topic_name", arg: 2, scope: !3696, file: !135, line: 381, type: !124)
!3702 = !DILocation(line: 381, column: 36, scope: !3696)
!3703 = !DILocalVariable(name: "max_qos_level", arg: 3, scope: !3696, file: !135, line: 382, type: !7)
!3704 = !DILocation(line: 382, column: 28, scope: !3696)
!3705 = !DILocalVariable(name: "rv", scope: !3696, file: !135, line: 384, type: !789)
!3706 = !DILocation(line: 384, column: 13, scope: !3696)
!3707 = !DILocalVariable(name: "packet_id", scope: !3696, file: !135, line: 385, type: !120)
!3708 = !DILocation(line: 385, column: 14, scope: !3696)
!3709 = !DILocalVariable(name: "msg", scope: !3696, file: !135, line: 386, type: !96)
!3710 = !DILocation(line: 386, column: 33, scope: !3696)
!3711 = !DILocation(line: 387, column: 5, scope: !3696)
!3712 = !DILocation(line: 388, column: 33, scope: !3696)
!3713 = !DILocation(line: 388, column: 17, scope: !3696)
!3714 = !DILocation(line: 388, column: 15, scope: !3696)
!3715 = !DILocation(line: 391, column: 5, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3696, file: !135, line: 391, column: 5)
!3717 = !DILocation(line: 391, column: 5, scope: !3696)
!3718 = !DILocation(line: 391, column: 5, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !135, line: 391, column: 5)
!3720 = distinct !DILexicalBlock(scope: !3716, file: !135, line: 391, column: 5)
!3721 = !DILocation(line: 391, column: 5, scope: !3720)
!3722 = !DILocation(line: 391, column: 5, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3696, file: !135, line: 391, column: 5)
!3724 = !DILocation(line: 391, column: 5, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3723, file: !135, line: 391, column: 5)
!3726 = !DILocation(line: 391, column: 5, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3725, file: !135, line: 391, column: 5)
!3728 = !DILocation(line: 391, column: 5, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3723, file: !135, line: 391, column: 5)
!3730 = !DILocation(line: 391, column: 5, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3729, file: !135, line: 391, column: 5)
!3732 = !DILocation(line: 391, column: 5, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3731, file: !135, line: 391, column: 5)
!3734 = !DILocation(line: 391, column: 5, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3733, file: !135, line: 391, column: 5)
!3736 = !DILocation(line: 391, column: 5, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3735, file: !135, line: 391, column: 5)
!3738 = !DILocation(line: 391, column: 5, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3733, file: !135, line: 391, column: 5)
!3740 = !DILocation(line: 391, column: 5, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3739, file: !135, line: 391, column: 5)
!3742 = !DILocation(line: 391, column: 5, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3741, file: !135, line: 391, column: 5)
!3744 = !DILocation(line: 403, column: 5, scope: !3696)
!3745 = !DILocation(line: 403, column: 10, scope: !3696)
!3746 = !DILocation(line: 403, column: 23, scope: !3696)
!3747 = !DILocation(line: 404, column: 22, scope: !3696)
!3748 = !DILocation(line: 404, column: 5, scope: !3696)
!3749 = !DILocation(line: 404, column: 10, scope: !3696)
!3750 = !DILocation(line: 404, column: 20, scope: !3696)
!3751 = !DILocation(line: 406, column: 5, scope: !3696)
!3752 = !DILocation(line: 407, column: 5, scope: !3696)
!3753 = !DILocation(line: 408, column: 1, scope: !3696)
!3754 = distinct !DISubprogram(name: "mqtt_pack_subscribe_request", scope: !135, file: !135, line: 1462, type: !3755, scopeLine: 1462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!789, !100, !107, !40, null}
!3757 = !DILocalVariable(name: "buf", arg: 1, scope: !3754, file: !135, line: 1462, type: !100)
!3758 = !DILocation(line: 1462, column: 46, scope: !3754)
!3759 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3754, file: !135, line: 1462, type: !107)
!3760 = !DILocation(line: 1462, column: 58, scope: !3754)
!3761 = !DILocalVariable(name: "packet_id", arg: 3, scope: !3754, file: !135, line: 1462, type: !40)
!3762 = !DILocation(line: 1462, column: 78, scope: !3754)
!3763 = !DILocalVariable(name: "args", scope: !3754, file: !135, line: 1463, type: !3764)
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3765, line: 14, baseType: !3766)
!3765 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.0/include/stdarg.h", directory: "")
!3766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !135, baseType: !3767)
!3767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3768, size: 192, elements: !3774)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3769)
!3769 = !{!3770, !3771, !3772, !3773}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3768, file: !135, line: 1463, baseType: !40, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3768, file: !135, line: 1463, baseType: !40, size: 32, offset: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3768, file: !135, line: 1463, baseType: !95, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3768, file: !135, line: 1463, baseType: !95, size: 64, offset: 128)
!3774 = !{!3775}
!3775 = !DISubrange(count: 1)
!3776 = !DILocation(line: 1463, column: 13, scope: !3754)
!3777 = !DILocalVariable(name: "start", scope: !3754, file: !135, line: 1464, type: !2042)
!3778 = !DILocation(line: 1464, column: 26, scope: !3754)
!3779 = !DILocation(line: 1464, column: 34, scope: !3754)
!3780 = !DILocalVariable(name: "rv", scope: !3754, file: !135, line: 1465, type: !789)
!3781 = !DILocation(line: 1465, column: 13, scope: !3754)
!3782 = !DILocalVariable(name: "fixed_header", scope: !3754, file: !135, line: 1466, type: !798)
!3783 = !DILocation(line: 1466, column: 30, scope: !3754)
!3784 = !DILocalVariable(name: "num_subs", scope: !3754, file: !135, line: 1467, type: !40)
!3785 = !DILocation(line: 1467, column: 18, scope: !3754)
!3786 = !DILocalVariable(name: "i", scope: !3754, file: !135, line: 1468, type: !40)
!3787 = !DILocation(line: 1468, column: 18, scope: !3754)
!3788 = !DILocalVariable(name: "topic", scope: !3754, file: !135, line: 1469, type: !3789)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 512, elements: !3790)
!3790 = !{!3791}
!3791 = !DISubrange(count: 8)
!3792 = !DILocation(line: 1469, column: 17, scope: !3754)
!3793 = !DILocalVariable(name: "max_qos", scope: !3754, file: !135, line: 1470, type: !3794)
!3794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !3790)
!3795 = !DILocation(line: 1470, column: 13, scope: !3754)
!3796 = !DILocation(line: 1473, column: 5, scope: !3754)
!3797 = !DILocation(line: 1474, column: 5, scope: !3754)
!3798 = !DILocation(line: 1475, column: 27, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3754, file: !135, line: 1474, column: 14)
!3800 = !DILocation(line: 1475, column: 15, scope: !3799)
!3801 = !DILocation(line: 1475, column: 9, scope: !3799)
!3802 = !DILocation(line: 1475, column: 25, scope: !3799)
!3803 = !DILocation(line: 1476, column: 19, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3799, file: !135, line: 1476, column: 13)
!3805 = !DILocation(line: 1476, column: 13, scope: !3804)
!3806 = !DILocation(line: 1476, column: 29, scope: !3804)
!3807 = !DILocation(line: 1476, column: 13, scope: !3799)
!3808 = !DILocation(line: 1478, column: 13, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3804, file: !135, line: 1476, column: 38)
!3810 = !DILocation(line: 1481, column: 39, scope: !3799)
!3811 = !DILocation(line: 1481, column: 29, scope: !3799)
!3812 = !DILocation(line: 1481, column: 17, scope: !3799)
!3813 = !DILocation(line: 1481, column: 9, scope: !3799)
!3814 = !DILocation(line: 1481, column: 27, scope: !3799)
!3815 = !DILocation(line: 1483, column: 9, scope: !3799)
!3816 = !DILocation(line: 1484, column: 13, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3799, file: !135, line: 1484, column: 13)
!3818 = !DILocation(line: 1484, column: 22, scope: !3817)
!3819 = !DILocation(line: 1484, column: 13, scope: !3799)
!3820 = !DILocation(line: 1485, column: 13, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3817, file: !135, line: 1484, column: 64)
!3822 = !DILocation(line: 1486, column: 13, scope: !3821)
!3823 = distinct !{!3823, !3797, !3824}
!3824 = !DILocation(line: 1488, column: 5, scope: !3754)
!3825 = !DILocation(line: 1489, column: 5, scope: !3754)
!3826 = !DILocation(line: 1492, column: 18, scope: !3754)
!3827 = !DILocation(line: 1492, column: 31, scope: !3754)
!3828 = !DILocation(line: 1493, column: 18, scope: !3754)
!3829 = !DILocation(line: 1493, column: 32, scope: !3754)
!3830 = !DILocation(line: 1494, column: 18, scope: !3754)
!3831 = !DILocation(line: 1494, column: 35, scope: !3754)
!3832 = !DILocation(line: 1495, column: 11, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3754, file: !135, line: 1495, column: 5)
!3834 = !DILocation(line: 1495, column: 9, scope: !3833)
!3835 = !DILocation(line: 1495, column: 16, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3833, file: !135, line: 1495, column: 5)
!3837 = !DILocation(line: 1495, column: 20, scope: !3836)
!3838 = !DILocation(line: 1495, column: 18, scope: !3836)
!3839 = !DILocation(line: 1495, column: 5, scope: !3833)
!3840 = !DILocation(line: 1497, column: 42, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3836, file: !135, line: 1495, column: 35)
!3842 = !DILocation(line: 1497, column: 74, scope: !3841)
!3843 = !DILocation(line: 1497, column: 22, scope: !3841)
!3844 = !DILocation(line: 1497, column: 39, scope: !3841)
!3845 = !DILocation(line: 1498, column: 5, scope: !3841)
!3846 = !DILocation(line: 1495, column: 30, scope: !3836)
!3847 = !DILocation(line: 1495, column: 5, scope: !3836)
!3848 = distinct !{!3848, !3839, !3849, !377}
!3849 = !DILocation(line: 1498, column: 5, scope: !3833)
!3850 = !DILocation(line: 1501, column: 33, scope: !3754)
!3851 = !DILocation(line: 1501, column: 38, scope: !3754)
!3852 = !DILocation(line: 1501, column: 10, scope: !3754)
!3853 = !DILocation(line: 1501, column: 8, scope: !3754)
!3854 = !DILocation(line: 1502, column: 9, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3754, file: !135, line: 1502, column: 9)
!3856 = !DILocation(line: 1502, column: 12, scope: !3855)
!3857 = !DILocation(line: 1502, column: 9, scope: !3754)
!3858 = !DILocation(line: 1503, column: 16, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3855, file: !135, line: 1502, column: 18)
!3860 = !DILocation(line: 1503, column: 9, scope: !3859)
!3861 = !DILocation(line: 1505, column: 12, scope: !3754)
!3862 = !DILocation(line: 1505, column: 9, scope: !3754)
!3863 = !DILocation(line: 1506, column: 14, scope: !3754)
!3864 = !DILocation(line: 1506, column: 11, scope: !3754)
!3865 = !DILocation(line: 1509, column: 9, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3754, file: !135, line: 1509, column: 9)
!3867 = !DILocation(line: 1509, column: 30, scope: !3866)
!3868 = !DILocation(line: 1509, column: 17, scope: !3866)
!3869 = !DILocation(line: 1509, column: 15, scope: !3866)
!3870 = !DILocation(line: 1509, column: 9, scope: !3754)
!3871 = !DILocation(line: 1510, column: 9, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3866, file: !135, line: 1509, column: 48)
!3873 = !DILocation(line: 1515, column: 31, scope: !3754)
!3874 = !DILocation(line: 1515, column: 36, scope: !3754)
!3875 = !DILocation(line: 1515, column: 12, scope: !3754)
!3876 = !DILocation(line: 1515, column: 9, scope: !3754)
!3877 = !DILocation(line: 1519, column: 11, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3754, file: !135, line: 1519, column: 5)
!3879 = !DILocation(line: 1519, column: 9, scope: !3878)
!3880 = !DILocation(line: 1519, column: 16, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3878, file: !135, line: 1519, column: 5)
!3882 = !DILocation(line: 1519, column: 20, scope: !3881)
!3883 = !DILocation(line: 1519, column: 18, scope: !3881)
!3884 = !DILocation(line: 1519, column: 5, scope: !3878)
!3885 = !DILocation(line: 1520, column: 32, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3881, file: !135, line: 1519, column: 35)
!3887 = !DILocation(line: 1520, column: 43, scope: !3886)
!3888 = !DILocation(line: 1520, column: 37, scope: !3886)
!3889 = !DILocation(line: 1520, column: 16, scope: !3886)
!3890 = !DILocation(line: 1520, column: 13, scope: !3886)
!3891 = !DILocation(line: 1521, column: 26, scope: !3886)
!3892 = !DILocation(line: 1521, column: 18, scope: !3886)
!3893 = !DILocation(line: 1521, column: 13, scope: !3886)
!3894 = !DILocation(line: 1521, column: 16, scope: !3886)
!3895 = !DILocation(line: 1522, column: 5, scope: !3886)
!3896 = !DILocation(line: 1519, column: 30, scope: !3881)
!3897 = !DILocation(line: 1519, column: 5, scope: !3881)
!3898 = distinct !{!3898, !3884, !3899, !377}
!3899 = !DILocation(line: 1522, column: 5, scope: !3878)
!3900 = !DILocation(line: 1524, column: 12, scope: !3754)
!3901 = !DILocation(line: 1524, column: 18, scope: !3754)
!3902 = !DILocation(line: 1524, column: 16, scope: !3754)
!3903 = !DILocation(line: 1524, column: 5, scope: !3754)
!3904 = !DILocation(line: 1525, column: 1, scope: !3754)
!3905 = distinct !DISubprogram(name: "mqtt_unsubscribe", scope: !135, file: !135, line: 410, type: !3906, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!5, !622, !124}
!3908 = !DILocalVariable(name: "client", arg: 1, scope: !3905, file: !135, line: 410, type: !622)
!3909 = !DILocation(line: 410, column: 54, scope: !3905)
!3910 = !DILocalVariable(name: "topic_name", arg: 2, scope: !3905, file: !135, line: 411, type: !124)
!3911 = !DILocation(line: 411, column: 38, scope: !3905)
!3912 = !DILocalVariable(name: "packet_id", scope: !3905, file: !135, line: 413, type: !120)
!3913 = !DILocation(line: 413, column: 14, scope: !3905)
!3914 = !DILocation(line: 413, column: 42, scope: !3905)
!3915 = !DILocation(line: 413, column: 26, scope: !3905)
!3916 = !DILocalVariable(name: "rv", scope: !3905, file: !135, line: 414, type: !789)
!3917 = !DILocation(line: 414, column: 13, scope: !3905)
!3918 = !DILocalVariable(name: "msg", scope: !3905, file: !135, line: 415, type: !96)
!3919 = !DILocation(line: 415, column: 33, scope: !3905)
!3920 = !DILocation(line: 416, column: 5, scope: !3905)
!3921 = !DILocation(line: 419, column: 5, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3905, file: !135, line: 419, column: 5)
!3923 = !DILocation(line: 419, column: 5, scope: !3905)
!3924 = !DILocation(line: 419, column: 5, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !135, line: 419, column: 5)
!3926 = distinct !DILexicalBlock(scope: !3922, file: !135, line: 419, column: 5)
!3927 = !DILocation(line: 419, column: 5, scope: !3926)
!3928 = !DILocation(line: 419, column: 5, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3905, file: !135, line: 419, column: 5)
!3930 = !DILocation(line: 419, column: 5, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3929, file: !135, line: 419, column: 5)
!3932 = !DILocation(line: 419, column: 5, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3931, file: !135, line: 419, column: 5)
!3934 = !DILocation(line: 419, column: 5, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3929, file: !135, line: 419, column: 5)
!3936 = !DILocation(line: 419, column: 5, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3935, file: !135, line: 419, column: 5)
!3938 = !DILocation(line: 419, column: 5, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3937, file: !135, line: 419, column: 5)
!3940 = !DILocation(line: 419, column: 5, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3939, file: !135, line: 419, column: 5)
!3942 = !DILocation(line: 419, column: 5, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3941, file: !135, line: 419, column: 5)
!3944 = !DILocation(line: 419, column: 5, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3939, file: !135, line: 419, column: 5)
!3946 = !DILocation(line: 419, column: 5, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3945, file: !135, line: 419, column: 5)
!3948 = !DILocation(line: 419, column: 5, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3947, file: !135, line: 419, column: 5)
!3950 = !DILocation(line: 430, column: 5, scope: !3905)
!3951 = !DILocation(line: 430, column: 10, scope: !3905)
!3952 = !DILocation(line: 430, column: 23, scope: !3905)
!3953 = !DILocation(line: 431, column: 22, scope: !3905)
!3954 = !DILocation(line: 431, column: 5, scope: !3905)
!3955 = !DILocation(line: 431, column: 10, scope: !3905)
!3956 = !DILocation(line: 431, column: 20, scope: !3905)
!3957 = !DILocation(line: 433, column: 5, scope: !3905)
!3958 = !DILocation(line: 434, column: 5, scope: !3905)
!3959 = !DILocation(line: 435, column: 1, scope: !3905)
!3960 = distinct !DISubprogram(name: "mqtt_pack_unsubscribe_request", scope: !135, file: !135, line: 1544, type: !3755, scopeLine: 1544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3961 = !DILocalVariable(name: "buf", arg: 1, scope: !3960, file: !135, line: 1544, type: !100)
!3962 = !DILocation(line: 1544, column: 48, scope: !3960)
!3963 = !DILocalVariable(name: "bufsz", arg: 2, scope: !3960, file: !135, line: 1544, type: !107)
!3964 = !DILocation(line: 1544, column: 60, scope: !3960)
!3965 = !DILocalVariable(name: "packet_id", arg: 3, scope: !3960, file: !135, line: 1544, type: !40)
!3966 = !DILocation(line: 1544, column: 80, scope: !3960)
!3967 = !DILocalVariable(name: "args", scope: !3960, file: !135, line: 1545, type: !3764)
!3968 = !DILocation(line: 1545, column: 13, scope: !3960)
!3969 = !DILocalVariable(name: "start", scope: !3960, file: !135, line: 1546, type: !2042)
!3970 = !DILocation(line: 1546, column: 26, scope: !3960)
!3971 = !DILocation(line: 1546, column: 34, scope: !3960)
!3972 = !DILocalVariable(name: "rv", scope: !3960, file: !135, line: 1547, type: !789)
!3973 = !DILocation(line: 1547, column: 13, scope: !3960)
!3974 = !DILocalVariable(name: "fixed_header", scope: !3960, file: !135, line: 1548, type: !798)
!3975 = !DILocation(line: 1548, column: 30, scope: !3960)
!3976 = !DILocalVariable(name: "num_subs", scope: !3960, file: !135, line: 1549, type: !40)
!3977 = !DILocation(line: 1549, column: 18, scope: !3960)
!3978 = !DILocalVariable(name: "i", scope: !3960, file: !135, line: 1550, type: !40)
!3979 = !DILocation(line: 1550, column: 18, scope: !3960)
!3980 = !DILocalVariable(name: "topic", scope: !3960, file: !135, line: 1551, type: !3789)
!3981 = !DILocation(line: 1551, column: 17, scope: !3960)
!3982 = !DILocation(line: 1554, column: 5, scope: !3960)
!3983 = !DILocation(line: 1555, column: 5, scope: !3960)
!3984 = !DILocation(line: 1556, column: 27, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3960, file: !135, line: 1555, column: 14)
!3986 = !DILocation(line: 1556, column: 15, scope: !3985)
!3987 = !DILocation(line: 1556, column: 9, scope: !3985)
!3988 = !DILocation(line: 1556, column: 25, scope: !3985)
!3989 = !DILocation(line: 1557, column: 19, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3985, file: !135, line: 1557, column: 13)
!3991 = !DILocation(line: 1557, column: 13, scope: !3990)
!3992 = !DILocation(line: 1557, column: 29, scope: !3990)
!3993 = !DILocation(line: 1557, column: 13, scope: !3985)
!3994 = !DILocation(line: 1559, column: 13, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3990, file: !135, line: 1557, column: 38)
!3996 = !DILocation(line: 1562, column: 9, scope: !3985)
!3997 = !DILocation(line: 1563, column: 13, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3985, file: !135, line: 1563, column: 13)
!3999 = !DILocation(line: 1563, column: 22, scope: !3998)
!4000 = !DILocation(line: 1563, column: 13, scope: !3985)
!4001 = !DILocation(line: 1564, column: 13, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3998, file: !135, line: 1563, column: 66)
!4003 = !DILocation(line: 1565, column: 13, scope: !4002)
!4004 = distinct !{!4004, !3983, !4005}
!4005 = !DILocation(line: 1567, column: 5, scope: !3960)
!4006 = !DILocation(line: 1568, column: 5, scope: !3960)
!4007 = !DILocation(line: 1571, column: 18, scope: !3960)
!4008 = !DILocation(line: 1571, column: 31, scope: !3960)
!4009 = !DILocation(line: 1572, column: 18, scope: !3960)
!4010 = !DILocation(line: 1572, column: 32, scope: !3960)
!4011 = !DILocation(line: 1573, column: 18, scope: !3960)
!4012 = !DILocation(line: 1573, column: 35, scope: !3960)
!4013 = !DILocation(line: 1574, column: 11, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3960, file: !135, line: 1574, column: 5)
!4015 = !DILocation(line: 1574, column: 9, scope: !4014)
!4016 = !DILocation(line: 1574, column: 16, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4014, file: !135, line: 1574, column: 5)
!4018 = !DILocation(line: 1574, column: 20, scope: !4017)
!4019 = !DILocation(line: 1574, column: 18, scope: !4017)
!4020 = !DILocation(line: 1574, column: 5, scope: !4014)
!4021 = !DILocation(line: 1576, column: 42, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4017, file: !135, line: 1574, column: 35)
!4023 = !DILocation(line: 1576, column: 22, scope: !4022)
!4024 = !DILocation(line: 1576, column: 39, scope: !4022)
!4025 = !DILocation(line: 1577, column: 5, scope: !4022)
!4026 = !DILocation(line: 1574, column: 30, scope: !4017)
!4027 = !DILocation(line: 1574, column: 5, scope: !4017)
!4028 = distinct !{!4028, !4020, !4029, !377}
!4029 = !DILocation(line: 1577, column: 5, scope: !4014)
!4030 = !DILocation(line: 1580, column: 33, scope: !3960)
!4031 = !DILocation(line: 1580, column: 38, scope: !3960)
!4032 = !DILocation(line: 1580, column: 10, scope: !3960)
!4033 = !DILocation(line: 1580, column: 8, scope: !3960)
!4034 = !DILocation(line: 1581, column: 9, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !3960, file: !135, line: 1581, column: 9)
!4036 = !DILocation(line: 1581, column: 12, scope: !4035)
!4037 = !DILocation(line: 1581, column: 9, scope: !3960)
!4038 = !DILocation(line: 1582, column: 16, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4035, file: !135, line: 1581, column: 18)
!4040 = !DILocation(line: 1582, column: 9, scope: !4039)
!4041 = !DILocation(line: 1584, column: 12, scope: !3960)
!4042 = !DILocation(line: 1584, column: 9, scope: !3960)
!4043 = !DILocation(line: 1585, column: 14, scope: !3960)
!4044 = !DILocation(line: 1585, column: 11, scope: !3960)
!4045 = !DILocation(line: 1588, column: 9, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !3960, file: !135, line: 1588, column: 9)
!4047 = !DILocation(line: 1588, column: 30, scope: !4046)
!4048 = !DILocation(line: 1588, column: 17, scope: !4046)
!4049 = !DILocation(line: 1588, column: 15, scope: !4046)
!4050 = !DILocation(line: 1588, column: 9, scope: !3960)
!4051 = !DILocation(line: 1589, column: 9, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4046, file: !135, line: 1588, column: 48)
!4053 = !DILocation(line: 1593, column: 31, scope: !3960)
!4054 = !DILocation(line: 1593, column: 36, scope: !3960)
!4055 = !DILocation(line: 1593, column: 12, scope: !3960)
!4056 = !DILocation(line: 1593, column: 9, scope: !3960)
!4057 = !DILocation(line: 1597, column: 11, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !3960, file: !135, line: 1597, column: 5)
!4059 = !DILocation(line: 1597, column: 9, scope: !4058)
!4060 = !DILocation(line: 1597, column: 16, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4058, file: !135, line: 1597, column: 5)
!4062 = !DILocation(line: 1597, column: 20, scope: !4061)
!4063 = !DILocation(line: 1597, column: 18, scope: !4061)
!4064 = !DILocation(line: 1597, column: 5, scope: !4058)
!4065 = !DILocation(line: 1598, column: 32, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4061, file: !135, line: 1597, column: 35)
!4067 = !DILocation(line: 1598, column: 43, scope: !4066)
!4068 = !DILocation(line: 1598, column: 37, scope: !4066)
!4069 = !DILocation(line: 1598, column: 16, scope: !4066)
!4070 = !DILocation(line: 1598, column: 13, scope: !4066)
!4071 = !DILocation(line: 1599, column: 5, scope: !4066)
!4072 = !DILocation(line: 1597, column: 30, scope: !4061)
!4073 = !DILocation(line: 1597, column: 5, scope: !4061)
!4074 = distinct !{!4074, !4064, !4075, !377}
!4075 = !DILocation(line: 1599, column: 5, scope: !4058)
!4076 = !DILocation(line: 1601, column: 12, scope: !3960)
!4077 = !DILocation(line: 1601, column: 18, scope: !3960)
!4078 = !DILocation(line: 1601, column: 16, scope: !3960)
!4079 = !DILocation(line: 1601, column: 5, scope: !3960)
!4080 = !DILocation(line: 1602, column: 1, scope: !3960)
!4081 = distinct !DISubprogram(name: "mqtt_ping", scope: !135, file: !135, line: 437, type: !620, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4082 = !DILocalVariable(name: "client", arg: 1, scope: !4081, file: !135, line: 437, type: !622)
!4083 = !DILocation(line: 437, column: 47, scope: !4081)
!4084 = !DILocalVariable(name: "rv", scope: !4081, file: !135, line: 438, type: !5)
!4085 = !DILocation(line: 438, column: 21, scope: !4081)
!4086 = !DILocation(line: 439, column: 5, scope: !4081)
!4087 = !DILocation(line: 440, column: 22, scope: !4081)
!4088 = !DILocation(line: 440, column: 10, scope: !4081)
!4089 = !DILocation(line: 440, column: 8, scope: !4081)
!4090 = !DILocation(line: 441, column: 5, scope: !4081)
!4091 = !DILocation(line: 442, column: 12, scope: !4081)
!4092 = !DILocation(line: 442, column: 5, scope: !4081)
!4093 = distinct !DISubprogram(name: "mqtt_reconnect", scope: !135, file: !135, line: 465, type: !620, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4094 = !DILocalVariable(name: "client", arg: 1, scope: !4093, file: !135, line: 465, type: !622)
!4095 = !DILocation(line: 465, column: 52, scope: !4093)
!4096 = !DILocalVariable(name: "err", scope: !4093, file: !135, line: 467, type: !5)
!4097 = !DILocation(line: 467, column: 21, scope: !4093)
!4098 = !DILocation(line: 467, column: 43, scope: !4093)
!4099 = !DILocation(line: 467, column: 27, scope: !4093)
!4100 = !DILocation(line: 469, column: 9, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4093, file: !135, line: 469, column: 9)
!4102 = !DILocation(line: 469, column: 13, scope: !4101)
!4103 = !DILocation(line: 469, column: 9, scope: !4093)
!4104 = !DILocation(line: 470, column: 9, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4101, file: !135, line: 469, column: 25)
!4106 = !DILocation(line: 471, column: 9, scope: !4105)
!4107 = !DILocation(line: 471, column: 17, scope: !4105)
!4108 = !DILocation(line: 471, column: 23, scope: !4105)
!4109 = !DILocation(line: 472, column: 9, scope: !4105)
!4110 = !DILocation(line: 473, column: 5, scope: !4105)
!4111 = !DILocation(line: 474, column: 12, scope: !4093)
!4112 = !DILocation(line: 474, column: 5, scope: !4093)
!4113 = distinct !DISubprogram(name: "mqtt_disconnect", scope: !135, file: !135, line: 477, type: !620, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4114 = !DILocalVariable(name: "client", arg: 1, scope: !4113, file: !135, line: 477, type: !622)
!4115 = !DILocation(line: 477, column: 53, scope: !4113)
!4116 = !DILocalVariable(name: "rv", scope: !4113, file: !135, line: 479, type: !789)
!4117 = !DILocation(line: 479, column: 13, scope: !4113)
!4118 = !DILocalVariable(name: "msg", scope: !4113, file: !135, line: 480, type: !96)
!4119 = !DILocation(line: 480, column: 33, scope: !4113)
!4120 = !DILocation(line: 481, column: 5, scope: !4113)
!4121 = !DILocation(line: 484, column: 5, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4113, file: !135, line: 484, column: 5)
!4123 = !DILocation(line: 484, column: 5, scope: !4113)
!4124 = !DILocation(line: 484, column: 5, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !135, line: 484, column: 5)
!4126 = distinct !DILexicalBlock(scope: !4122, file: !135, line: 484, column: 5)
!4127 = !DILocation(line: 484, column: 5, scope: !4126)
!4128 = !DILocation(line: 484, column: 5, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4113, file: !135, line: 484, column: 5)
!4130 = !DILocation(line: 484, column: 5, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4129, file: !135, line: 484, column: 5)
!4132 = !DILocation(line: 484, column: 5, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4131, file: !135, line: 484, column: 5)
!4134 = !DILocation(line: 484, column: 5, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4129, file: !135, line: 484, column: 5)
!4136 = !DILocation(line: 484, column: 5, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4135, file: !135, line: 484, column: 5)
!4138 = !DILocation(line: 484, column: 5, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4137, file: !135, line: 484, column: 5)
!4140 = !DILocation(line: 484, column: 5, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4139, file: !135, line: 484, column: 5)
!4142 = !DILocation(line: 484, column: 5, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4141, file: !135, line: 484, column: 5)
!4144 = !DILocation(line: 484, column: 5, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4139, file: !135, line: 484, column: 5)
!4146 = !DILocation(line: 484, column: 5, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4145, file: !135, line: 484, column: 5)
!4148 = !DILocation(line: 484, column: 5, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4147, file: !135, line: 484, column: 5)
!4150 = !DILocation(line: 492, column: 5, scope: !4113)
!4151 = !DILocation(line: 492, column: 10, scope: !4113)
!4152 = !DILocation(line: 492, column: 23, scope: !4113)
!4153 = !DILocation(line: 494, column: 5, scope: !4113)
!4154 = !DILocation(line: 495, column: 5, scope: !4113)
!4155 = !DILocation(line: 496, column: 1, scope: !4113)
!4156 = distinct !DISubprogram(name: "mqtt_pack_disconnect", scope: !135, file: !135, line: 1244, type: !1699, scopeLine: 1244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4157 = !DILocalVariable(name: "buf", arg: 1, scope: !4156, file: !135, line: 1244, type: !100)
!4158 = !DILocation(line: 1244, column: 39, scope: !4156)
!4159 = !DILocalVariable(name: "bufsz", arg: 2, scope: !4156, file: !135, line: 1244, type: !107)
!4160 = !DILocation(line: 1244, column: 51, scope: !4156)
!4161 = !DILocalVariable(name: "fixed_header", scope: !4156, file: !135, line: 1245, type: !798)
!4162 = !DILocation(line: 1245, column: 30, scope: !4156)
!4163 = !DILocation(line: 1246, column: 18, scope: !4156)
!4164 = !DILocation(line: 1246, column: 31, scope: !4156)
!4165 = !DILocation(line: 1247, column: 18, scope: !4156)
!4166 = !DILocation(line: 1247, column: 32, scope: !4156)
!4167 = !DILocation(line: 1248, column: 18, scope: !4156)
!4168 = !DILocation(line: 1248, column: 35, scope: !4156)
!4169 = !DILocation(line: 1249, column: 35, scope: !4156)
!4170 = !DILocation(line: 1249, column: 40, scope: !4156)
!4171 = !DILocation(line: 1249, column: 12, scope: !4156)
!4172 = !DILocation(line: 1249, column: 5, scope: !4156)
!4173 = distinct !DISubprogram(name: "mqtt_error_str", scope: !135, file: !135, line: 1770, type: !4174, scopeLine: 1770, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!124, !5}
!4176 = !DILocalVariable(name: "error", arg: 1, scope: !4173, file: !135, line: 1770, type: !5)
!4177 = !DILocation(line: 1770, column: 44, scope: !4173)
!4178 = !DILocalVariable(name: "offset", scope: !4173, file: !135, line: 1771, type: !7)
!4179 = !DILocation(line: 1771, column: 9, scope: !4173)
!4180 = !DILocation(line: 1771, column: 18, scope: !4173)
!4181 = !DILocation(line: 1771, column: 24, scope: !4173)
!4182 = !DILocation(line: 1772, column: 9, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4173, file: !135, line: 1772, column: 9)
!4184 = !DILocation(line: 1772, column: 16, scope: !4183)
!4185 = !DILocation(line: 1772, column: 9, scope: !4173)
!4186 = !DILocation(line: 1773, column: 32, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4183, file: !135, line: 1772, column: 22)
!4188 = !DILocation(line: 1773, column: 16, scope: !4187)
!4189 = !DILocation(line: 1773, column: 9, scope: !4187)
!4190 = !DILocation(line: 1774, column: 16, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4183, file: !135, line: 1774, column: 16)
!4192 = !DILocation(line: 1774, column: 22, scope: !4191)
!4193 = !DILocation(line: 1774, column: 16, scope: !4183)
!4194 = !DILocation(line: 1775, column: 9, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4191, file: !135, line: 1774, column: 28)
!4196 = !DILocation(line: 1776, column: 16, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4191, file: !135, line: 1776, column: 16)
!4198 = !DILocation(line: 1776, column: 22, scope: !4197)
!4199 = !DILocation(line: 1776, column: 16, scope: !4191)
!4200 = !DILocation(line: 1777, column: 9, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !135, line: 1776, column: 27)
!4202 = !DILocation(line: 1779, column: 16, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4197, file: !135, line: 1778, column: 12)
!4204 = !DILocation(line: 1779, column: 9, scope: !4203)
!4205 = !DILocation(line: 1781, column: 1, scope: !4173)
!4206 = distinct !DISubprogram(name: "mqtt_pal_sendall", scope: !4207, file: !4207, line: 311, type: !4208, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !272)
!4207 = !DIFile(filename: "src/mqtt_pal.c", directory: "/home/ryan/git/MQTT-C")
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!789, !123, !190, !107, !7}
!4210 = !DILocalVariable(name: "fd", arg: 1, scope: !4206, file: !4207, line: 311, type: !123)
!4211 = !DILocation(line: 311, column: 49, scope: !4206)
!4212 = !DILocalVariable(name: "buf", arg: 2, scope: !4206, file: !4207, line: 311, type: !190)
!4213 = !DILocation(line: 311, column: 65, scope: !4206)
!4214 = !DILocalVariable(name: "len", arg: 3, scope: !4206, file: !4207, line: 311, type: !107)
!4215 = !DILocation(line: 311, column: 77, scope: !4206)
!4216 = !DILocalVariable(name: "flags", arg: 4, scope: !4206, file: !4207, line: 311, type: !7)
!4217 = !DILocation(line: 311, column: 86, scope: !4206)
!4218 = !DILocalVariable(name: "sent", scope: !4206, file: !4207, line: 312, type: !107)
!4219 = !DILocation(line: 312, column: 12, scope: !4206)
!4220 = !DILocation(line: 313, column: 5, scope: !4206)
!4221 = !DILocation(line: 313, column: 11, scope: !4206)
!4222 = !DILocation(line: 313, column: 18, scope: !4206)
!4223 = !DILocation(line: 313, column: 16, scope: !4206)
!4224 = !DILocalVariable(name: "tmp", scope: !4225, file: !4207, line: 314, type: !789)
!4225 = distinct !DILexicalBlock(scope: !4206, file: !4207, line: 313, column: 23)
!4226 = !DILocation(line: 314, column: 17, scope: !4225)
!4227 = !DILocation(line: 314, column: 28, scope: !4225)
!4228 = !DILocation(line: 314, column: 32, scope: !4225)
!4229 = !DILocation(line: 314, column: 38, scope: !4225)
!4230 = !DILocation(line: 314, column: 36, scope: !4225)
!4231 = !DILocation(line: 314, column: 44, scope: !4225)
!4232 = !DILocation(line: 314, column: 50, scope: !4225)
!4233 = !DILocation(line: 314, column: 48, scope: !4225)
!4234 = !DILocation(line: 314, column: 56, scope: !4225)
!4235 = !DILocation(line: 314, column: 23, scope: !4225)
!4236 = !DILocation(line: 315, column: 13, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4225, file: !4207, line: 315, column: 13)
!4238 = !DILocation(line: 315, column: 17, scope: !4237)
!4239 = !DILocation(line: 315, column: 13, scope: !4225)
!4240 = !DILocation(line: 316, column: 17, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !4207, line: 316, column: 17)
!4242 = distinct !DILexicalBlock(scope: !4237, file: !4207, line: 315, column: 22)
!4243 = !DILocation(line: 316, column: 23, scope: !4241)
!4244 = !DILocation(line: 316, column: 17, scope: !4242)
!4245 = !DILocation(line: 317, column: 15, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4241, file: !4207, line: 316, column: 34)
!4247 = !DILocation(line: 319, column: 9, scope: !4242)
!4248 = !DILocation(line: 320, column: 30, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4237, file: !4207, line: 319, column: 16)
!4250 = !DILocation(line: 320, column: 18, scope: !4249)
!4251 = distinct !{!4251, !4220, !4252, !377}
!4252 = !DILocation(line: 322, column: 5, scope: !4206)
!4253 = !DILocation(line: 323, column: 12, scope: !4206)
!4254 = !DILocation(line: 323, column: 5, scope: !4206)
!4255 = !DILocation(line: 324, column: 1, scope: !4206)
!4256 = distinct !DISubprogram(name: "mqtt_pal_recvall", scope: !4207, file: !4207, line: 326, type: !4257, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !272)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!789, !123, !95, !107, !7}
!4259 = !DILocalVariable(name: "fd", arg: 1, scope: !4256, file: !4207, line: 326, type: !123)
!4260 = !DILocation(line: 326, column: 49, scope: !4256)
!4261 = !DILocalVariable(name: "buf", arg: 2, scope: !4256, file: !4207, line: 326, type: !95)
!4262 = !DILocation(line: 326, column: 59, scope: !4256)
!4263 = !DILocalVariable(name: "bufsz", arg: 3, scope: !4256, file: !4207, line: 326, type: !107)
!4264 = !DILocation(line: 326, column: 71, scope: !4256)
!4265 = !DILocalVariable(name: "flags", arg: 4, scope: !4256, file: !4207, line: 326, type: !7)
!4266 = !DILocation(line: 326, column: 82, scope: !4256)
!4267 = !DILocalVariable(name: "start", scope: !4256, file: !4207, line: 327, type: !4268)
!4268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!4269 = !DILocation(line: 327, column: 23, scope: !4256)
!4270 = !DILocation(line: 327, column: 31, scope: !4256)
!4271 = !DILocalVariable(name: "rv", scope: !4256, file: !4207, line: 328, type: !789)
!4272 = !DILocation(line: 328, column: 13, scope: !4256)
!4273 = !DILocation(line: 329, column: 5, scope: !4256)
!4274 = !DILocation(line: 330, column: 19, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4256, file: !4207, line: 329, column: 8)
!4276 = !DILocation(line: 330, column: 23, scope: !4275)
!4277 = !DILocation(line: 330, column: 28, scope: !4275)
!4278 = !DILocation(line: 330, column: 35, scope: !4275)
!4279 = !DILocation(line: 330, column: 14, scope: !4275)
!4280 = !DILocation(line: 330, column: 12, scope: !4275)
!4281 = !DILocation(line: 331, column: 13, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4275, file: !4207, line: 331, column: 13)
!4283 = !DILocation(line: 331, column: 16, scope: !4282)
!4284 = !DILocation(line: 331, column: 13, scope: !4275)
!4285 = !DILocation(line: 333, column: 20, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4282, file: !4207, line: 331, column: 21)
!4287 = !DILocation(line: 333, column: 17, scope: !4286)
!4288 = !DILocation(line: 334, column: 22, scope: !4286)
!4289 = !DILocation(line: 334, column: 19, scope: !4286)
!4290 = !DILocation(line: 335, column: 9, scope: !4286)
!4291 = !DILocation(line: 335, column: 20, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4282, file: !4207, line: 335, column: 20)
!4293 = !DILocation(line: 335, column: 23, scope: !4292)
!4294 = !DILocation(line: 335, column: 28, scope: !4292)
!4295 = !DILocation(line: 335, column: 32, scope: !4292)
!4296 = !DILocation(line: 335, column: 35, scope: !4292)
!4297 = !DILocation(line: 335, column: 39, scope: !4292)
!4298 = !DILocation(line: 335, column: 42, scope: !4292)
!4299 = !DILocation(line: 335, column: 48, scope: !4292)
!4300 = !DILocation(line: 335, column: 58, scope: !4292)
!4301 = !DILocation(line: 335, column: 61, scope: !4292)
!4302 = !DILocation(line: 335, column: 67, scope: !4292)
!4303 = !DILocation(line: 335, column: 20, scope: !4282)
!4304 = !DILocation(line: 337, column: 13, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4292, file: !4207, line: 335, column: 84)
!4306 = !DILocation(line: 339, column: 5, scope: !4275)
!4307 = !DILocation(line: 339, column: 14, scope: !4256)
!4308 = !DILocation(line: 339, column: 17, scope: !4256)
!4309 = !DILocation(line: 339, column: 21, scope: !4256)
!4310 = !DILocation(line: 339, column: 24, scope: !4256)
!4311 = !DILocation(line: 339, column: 30, scope: !4256)
!4312 = !DILocation(line: 0, scope: !4256)
!4313 = distinct !{!4313, !4273, !4314, !377}
!4314 = !DILocation(line: 339, column: 33, scope: !4256)
!4315 = !DILocation(line: 341, column: 12, scope: !4256)
!4316 = !DILocation(line: 341, column: 18, scope: !4256)
!4317 = !DILocation(line: 341, column: 16, scope: !4256)
!4318 = !DILocation(line: 341, column: 5, scope: !4256)
!4319 = !DILocation(line: 342, column: 1, scope: !4256)

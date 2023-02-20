import cv2
from utils import find_area,find_nitrogen,ExG,NDI
from google.cloud import storage
from google.oauth2 import service_account
import firebase_admin
from firebase_admin import credentials,firestore,initialize_app
#https://console.firebase.google.com/project/agrarian-eb961/storage/agrarian-eb961.appspot.com/files
#https://console.firebase.google.com/u/0/project/agrarian-eb961/firestore/data/~2F
#gs://agrarian-eb961.appspot.com
#path
path='E:/drone/Computer vision/anotation/synthesized image/Test/video_pro'
fg = 'E:/drone/Computer vision/anotation/synthesized image/Test/20221016_085739.jpg'
#open the video file
import firebase_admin
from firebase_admin import credentials,firestore,initialize_app

cred = credentials.Certificate("E:/drone/Computer vision/anotation/synthesized image/Test/testagri-b6f81-firebase-adminsdk-9ok6n-f698b118ae.json")
firebase_admin.initialize_app(cred)
#initialize_app(cred,{'storageBucket': 'agrarian-eb961.appspot.com'}) # connecting to firebase
#connecting to firestore
db = firestore.client() #connecting to firestore
#storage_client= storage.Client("E:/drone/Computer vision/anotation/synthesized image/Test/agrarian-eb961-b7ac478b6716.json")
#credentials = service_account.Credentials.from_service_account_file("E:/drone/Computer vision/anotation/synthesized image/Test/agrarian-eb961-b7ac478b6716.json")
#storage_client = storage.Client(credentials=credentials)
#bucket = storage_client.bucket('agrarian-eb961.appspot.com') #storage bucket
collection = db. collection("values")
video =cv2.VideoCapture("DJI_0261.MP4")
#read the first frame
success, frame = video.read()
count=0
while success:
    #display the frame
    cv2.imshow("frame",frame)
    frame = cv2.resize(frame,(2448,3264))
    image_path = str(path)+"/"+str(f"{count}.jpg")
    lai_ = find_area(frame,fg)
    nitrogen_con = find_nitrogen(frame)
    exg_green = ExG(frame)
    ndi = NDI(frame)
    val_list=[]
    #val_list.append(lai_)
    val_list.append(nitrogen_con)
    val_list.append(exg_green)
    val_list.append(ndi)
    #convert the values to strings and join them with newline charcters
    lines =[str(value)+"\n" for value in val_list]
    with open("values.txt","w") as file:
            file.writelines(lines)

    cv2.imwrite(image_path,frame)
    #frm_img = cv2.imencode(".jpg",frame)[1].tobytes()
    #blob = bucket.blob("E:/drone/Computer vision/anotation/synthesized image/Test/video_pro" +"/"+str(f"{count}.jpg")) 


    #blob = bucket.blob(frame)
    #blob.upload_from_file(f"{frame}{count}.jpg")
    #blob.upload_from_file("E:/drone/Computer vision/anotation/synthesized image/Test/video_pro" +"/"+str(f"{count}.jpg").read(),
    #content_type="E:/drone/Computer vision/anotation/synthesized image/Test/video_pro" +"/"+str(f"{count}.jpg").content_type)
    #resize_frm = cv2.resize(frame, (640, 480))
    res = collection.document(str(count)).set(
    {
        #insert document
        #save each frame
        #'image': cv2.imencode('.jpg', resize_frm)[1].tobytes(),
        'LAi':lai_,
        'nitrogen':nitrogen_con,
        'exg':exg_green,
        'ndi':ndi,
    }
)
    #read the next frame
    success,frame = video.read()
    
    #check if the user pressed 'q' to quit
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
    count+=1
#relese the video capture object
video.release()
cv2.destroyAllWindows()
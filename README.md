
# React Native Apple Healthkit with Health Records
A React Native bridge module for interacting with Apple Healthkit's data and Health Records data.

## Health Records version

Simply request permission of the corresponding Health Record data you need from the list:  
`"Allergies", "ClinicalVitals", "Conditions", "Immunizations", "Labs", "Medications", "Procedures"`.  
And call the associated function to retrieve the data:  
`getAllergyRecords, getClinicalVitalRecords, getMedicationRecords, getConditionRecords, getImmunizationRecords, getProcedureRecords, getLabRecords`
  
Each response returns an array of arrays for each entry.  
Position 0 is the name of entry, position 1 is the FHIR object.  



## Installation

Install the [react-native-apple-health-kit-records] package from npm:

- Run `npm install react-native-apple-health-kit-records --save`
- Run `react-native link react-native-apple-health-kit-records`

Update `info.plist` in your React Native project
```
<key>NSHealthShareUsageDescription</key>
<string>Read and understand health data.</string>
<key>NSHealthUpdateUsageDescription</key>
<string>Share workout data with other apps.</string>
```
In XCode, turn on HealthKit and ensure Clinical Health Records is enabled under the capabilities tab. Clinical Health records access requires that your account has this feature enabled.

## Manual Installation

1. Run `npm install react-native-apple-health-kit-records --save`
2. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
3. Go to `node_modules` ➜ `react-native-apple-health-kit-records` and add `RCTAppleHealthkit.xcodeproj`
4. In XCode, in the project navigator, select your project. Add `libRCTAppleHealthkit.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
5. Click `RCTAppleHealthkit.xcodeproj` in the project navigator and go the `Build Settings` tab. Make sure 'All' is toggled on (instead of 'Basic'). In the `Search Paths` section, look for `Header Search Paths` and make sure it contains both `$(SRCROOT)/../../react-native/React` and `$(SRCROOT)/../../../React` - mark both as `recursive`.
6. Enable Healthkit in your application's `Capabilities`
![](https://i.imgur.com/eOCCCyv.png "Xcode Capabilities Section")
7. Compile and run

## Get Started
Initialize Healthkit. This will show the Healthkit permissions prompt for any read/write permissions set in the required `options` object.

Due to Apple's privacy model if an app user has previously denied a specific permission then they can not be prompted again for that same permission. The app user would have to go into the Apple Health app and grant the permission to your react-native app under *sources* tab.

For any data that is read from Healthkit the status/error is the same for both. This privacy restriction results in having no knowledge of whether the permission was denied (make sure it's added to the permissions options object), or the data for the specific request was nil (ex. no steps recorded today).

If new read/write permissions are added to the options object then the app user will see the Healthkit permissions prompt with the new permissions to allow.


`initHealthKit` requires an options object with Healthkit permission settings
```javascript
import AppleHealthKit from 'react-native-apple-health-kit-records';
const PERMS = AppleHealthKit.Constants.Permissions;

let options = {
  permissions: {
      read: ["Height", "Weight", "Allergies", "ClinicalVitals", "Conditions", "Immunizations", "Labs", "Medications", "Procedures", ],
  }
 };
 
AppleHealthKit.initHealthKit(options: Object, (err: string, results: Object) => {
    if (err) {
        console.log("error initializing Healthkit: ", err);
        return;
    }

     // Height Example
    AppleHealthKit.getDateOfBirth(null, (err, results) => {
      console.log(results)
    });

    AppleHealthKit.getAllergyRecords(null, (err, allergies) => {
        if (this._handleHealthkitError(err, 'allergies')) {
          console.log('err', err)
          return;
        }
        console.log(allergies[0])
    }

 });
```

```javascript
/* Output for Apple Health example patient with a peanut allergy */
[
  displayName: "Peanuts",
  FHIRResource: 
  {
    "id": "2",
    "resourceType": "AllergyIntolerance",
    "substance": {
      "text": "Peanuts",
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "256349002"
      }]
    },
    "recordedDate": "2015-02-18",
    "patient": {
      "display": "Candace Salinas",
      "reference": "Patient/1"
    },
    "reaction": [{
      "manifestation": [{
        "text": "Wheezing"
      }],
      "severity": "severe"
    }]
  }
]
```

## References
- Apple Healthkit Documentation [https://developer.apple.com/Healthkit/](https://developer.apple.com/Healthkit/)


## Wiki
  * [Installation](/docs/Install)
  * [Documentation](#documentation)
    * [Permissions](#supported-apple-permissions)
    * [Units](#units)
    * Base Methods
      * [isAvailable](/docs/isAvailable().md)
      * [initHealthKit](/docs/initHealthKit().md)
      * [authorizationStatusForType](/docs/authorizationStatusForType().md)
    * Realtime Methods
      * [initStepCountObserver](/docs/initStepCountObserver().md)
      * [setObserver](/docs/setObserver().md)
    * Read Methods
      * [getActiveEnergyBurned](/docs/getActiveEnergyBurned().md)
      * [getBasalEnergyBurned](/docs/getBasalEnergyBurned().md)
      * [getBiologicalSex](/docs/getBiologicalSex().md)
      * [getBloodGlucoseSamples](/docs/getBloodGlucoseSamples().md)
      * [getBloodPressureSamples](/docs/getBloodPressureSamples().md)
      * [getBodyTemperatureSamples](/docs/getBodyTemperatureSamples().md)
      * [getDailyDistanceCyclingSamples](/docs/getDailyDistanceCyclingSamples().md)
      * [getDailyDistanceWalkingRunningSamples](/docs/getDailyDistanceWalkingRunningSamples().md)
      * [getDailyFlightsClimbedSamples](/docs/getDailyFlightsClimbedSamples().md)
      * [getDailyStepCountSamples](/docs/getDailyStepCountSamples().md)
      * [getDateOfBirth](/docs/getDateOfBirth().md)
      * [getDistanceCycling](/docs/getDistanceCycling().md)
      * [getDistanceSwimming](/docs/getDistanceSwimming().md)
      * [getDistanceWalkingRunning](/docs/getDistanceWalkingRunning().md)
      * [getFlightsClimbed](/docs/getFlightsClimbed().md)
      * [getHeartRateSamples](/docs/getHeartRateSamples().md)
      * [getHeightSamples](/docs/getHeightSamples().md)
      * [getLatestBmi](/docs/getLatestBmi().md)
      * [getLatestBodyFatPercentage](/docs/getLatestBodyFatPercentage().md)
      * [getBodyFatPercentageSamples](/docs/getBodyFatPercentageSamples().md)
      * [getLatestHeight](/docs/getLatestHeight().md)
      * [getLatestLeanBodyMass](/docs/getLatestLeanBodyMass().md)
      * [getLeanBodyMassSamples](/docs/getLeanBodyMassSamples().md)
      * [getLatestWeight](/docs/getLatestWeight().md)
      * [getRespiratoryRateSamples](/docs/getRespiratoryRateSamples().md)
      * [getSleepSamples](/docs/getSleepSamples().md)
      * [getStepCount](/docs/getStepCount().md)
      * [getWeightSamples](/docs/getWeightSamples().md)
      * [getSamples](docs/getSamples().md)
      * [getMindfulSession](docs/getMindfulSession().md) 
    * Write Methods
      * [saveBmi](/docs/saveBmi().md)
      * [saveHeight](/docs/saveHeight().md)
      * [saveMindfulSession](/docs/saveMindfulSession().md)
      * [saveWeight](/docs/saveWeight().md)
      * [saveSteps](/docs/saveSteps().md)
      * [saveBodyFatPercentage](/docs/saveBodyFatPercentage().md)
      * [saveLeanBodyMass](/docs/saveLeanBodyMass().md)
  * [References](#references)

## Supported Apple Permissions

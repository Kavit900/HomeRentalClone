import React from 'react';
import {
  View,
  Text,
  StyleSheet,
  Image,
  Pressable,
  ImageBackground,
} from 'react-native';
import COLORS from '../../consts/colors';
const OnBoardScreen = ({navigation}) => {
  return (
    <ImageBackground
      style={{flex:1}}
      source={require('../../assets/wallpaper.jpg')}
    >
    {/* Button container */}
    <View
      style={{
        flex: 1,
        justifyContent: 'flex-end',
        paddingBottom: 40,
      }}>
      {/* button */}
      <Pressable onPress={() => navigation.navigate('HomeScreen')}>
        <View style={style.btn}>
          <Text style={{color: 'white', fontSize: 20}}>Find Home</Text>
        </View>
      </Pressable>
    </View>
    </ImageBackground>
  );
};

const style = StyleSheet.create({
  btn: {
    height: 60,
    marginHorizontal: 20,
    backgroundColor: 'black',
    borderRadius: 15,
    justifyContent: 'center',
    alignItems: 'center'
  }
});

export default OnBoardScreen;

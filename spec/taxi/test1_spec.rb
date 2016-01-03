require 'rails_helper'
require 'json'


describe 'Narva maantee 25,Tartu","Riia,Tartu' do
  it 'Narva maantee 25 to Tartu","Riia,Tartu' do
    arr = get_distance("Narva maantee 25,Tartu","Riia,Tartu")


    expect(arr["duration"]).to eq("8 mins")
  end








end

describe 'NARVA to kabumaja ' do

it ' Narva maantee 25,Tartu to Kaubamaja, Tartu County ' do

  arr2 = get_distance("Narva maantee 25,Tartu","Kaubamaja, Tartu County")


  expect(arr2["duration"]).to eq("3 mins")

end
end

describe 'Charges 10 am  on monday  ' do

  it ' Given  i want to use the flagrate on monday 10 am' do

    arr2 = rate(10,'flag',0,'monday')


    expect(arr2).to eq(4.2)

  end
end

describe 'Charges 19 am  on tuesday   ' do

  it ' Given  i want to use the flagrate on monday 10 am' do

    arr2 = rate(19,'flag',0,'tuesday')


    expect(arr2).to eq(5.2)

  end
end

describe 'Charges 19 am  on tuesday   ' do

  it ' Given  i want to use the flagrate on monday 10 am' do

    arr2 = rate(19,'timer',5,'tuesday')


    expect(arr2).to eq(3.16)

  end
end

describe 'Charges 23 am  on friday   ' do

  it ' Given  i want to use the flagrate on monday 10 am' do

    arr2 = rate(23,'flag',0,'friday')


    expect(arr2).to eq(6.5)

  end
end


describe 'Charges 23 am  on friday   ' do

  it ' Given  i want to use the flagrate on monday 10 am' do

    arr2 = rate(23,'flag',0,'friday')


    expect(arr2).to eq(6.5)

  end
end


describe 'Charges 15 am  on friday   ' do

  it ' Given  i want to use the flagrate on monday 10 am' do

    arr2 = rate(15,'flag',0,'friday')


    expect(arr2).to eq(4.2)

  end
end






describe 'Get final fare   ' do

  it ' Given  i want to use the flagrate on monday 10 am  and am travelling  Narva maantee 25,Tartu to Kaubamaja, Tartu County' do

    arr2 = rate(15,'flag',0,'friday')
    c=get_distance("Narva maantee 25,Tartu","Kaubamaja, Tartu County")



   cc= c["distance"].sub(' km','')
    v = get_fare(arr2,cc)


    expect(v).to eq(6.75)

  end
end


def get_distance(orign,destination)

 orign= orign.gsub(' ','%20')


 destination=destination.gsub(' ','%20')

  uri = URI("https://maps.googleapis.com/maps/api/directions/json?origin="+orign+"&destination="+destination+"&departure_time=1451376726&mode=driving&traffic_model=pessimistic")
  response = Net::HTTP.get(uri)

  obj = JSON.parse(response)
   hash ={}
   hash["distance"]=obj['routes'][0]['legs'][0]['distance']['text']

   hash["duration"] = obj['routes'][0]['legs'][0]['duration']['text']
  return hash

end



def method1(mins, time, type)
  case time
    when 9..17

      if type =="flag"
        fflag=4.2

      else
        fflag = mins*0.568
      end
      return fflag.round(2)


    when 18..21
      if type =="flag"
        fflag=5.2
        return fflag.round(2)
      else
        fflag = mins*0.631
      end
      return fflag.round(2)
    else
      fflag=0
      return fflag


  end
end

def rate  time,type,mins,d

  day=["friday","saturday)"]

  check = day.include?(d)
  if check==true

timearray =[22,23,0,1,2,3,4,5]

    if timearray.include?(time)

      if type =="flag"
        fflag=6.50
        return fflag.round(2)

      else
        fflag = mins*0.915
        return fflag.round(2)
      end

    else
      return method1(mins, time, type)

    end

  else

    return method1(mins, time, type)


  end








end










def get_fare(parkingfare,route_distance)

  route_fare=(route_distance.to_f)*1.5
  final_fare =(parkingfare).to_f+route_fare




  return final_fare



end



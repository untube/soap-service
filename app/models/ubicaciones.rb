class Ubicaciones
    attr_reader :user, :countPlaces, :message

    def initialize(userid)
        cliente = Savon.client(wsdl:"http://35.224.121.94/ws_senderos_un/wsdl")
        response = cliente.call( :get_count_places, message: {"idUser" => 1})
        if response.success?
            # puts "llego respuesta"
            # puts response.body
            data = response.body[:get_count_places_response]
            if data
                @user = data[:user]
                @countPlaces = data[:countPlaces]
                @message = data[:message]
                # puts @user
                # puts @countPlaces
                # puts @message
            end
        end
    end
end

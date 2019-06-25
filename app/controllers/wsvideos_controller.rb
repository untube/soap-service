class WsvideosController < ApplicationController
    soap_service namespace: 'urn:WashOutVideo',camelize_wsdl: :lower
    #Find Videos By Title
    
    soap_action "findVideos",
    :args => { :title => :string},
    :return => {:titles => :string, :links => :string , :images => :string}
    #:return => {:videos => :videos}

    def findVideos

        @search = params[:title]
        videos = Video.where(title: /.*#{@search}.*/i)
        title_strings = []
        links = []
        images = []
        video_array = []
        base_link = "http://35.196.3.185:4200/watch/"

        videos.each do |video|
            
            video_aux = []

            title_strings.push(video.title)
            video_aux.push(title_strings.last)
            links.push(base_link + video._id)
            video_aux.push(links.last)
            images.push(video.image)
            video_aux.push(images.last)

            video_array.push(video_aux)

            puts title_strings
            puts links.last

        end

       render :soap => { :titles => title_strings, :links => links, :images => images}
       #render :soap => { :videos => video_array}        
        
    end
end

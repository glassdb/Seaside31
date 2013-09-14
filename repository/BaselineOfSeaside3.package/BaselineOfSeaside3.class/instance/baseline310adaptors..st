baselines-31
baseline310adaptors: spec

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: ''.
		spec repository: 'http://smalltalkhub.com/mc/Seaside/Seaside31/main'.
		
		spec project: 'Swazoo2' with: [
			spec
				versionString: #stable;
				className: 'ConfigurationOfSwazoo2';
				loads: #( 'Swazoo');
				repository: 'http://smalltalkhub.com/mc/Swazoo/Swazoo/main' ].
		spec project: 'Zinc Project' with: [
			spec
				versionString: #stable;
				className: 'ConfigurationOfZincHTTPComponents';
				loads: #( 'Zinc-HTTP');
				repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].
		
		spec package: 'Zinc-Seaside' with: [
			spec
				repository: 'http://mc.stfx.eu/ZincHTTPComponents';
				requires: #('Zinc Project' 'Seaside-Core') ].
		spec
			package: 'Seaside-Swazoo' with: [
				spec 
					requires: #('Grease' 'Swazoo2' );
					repository: 'http://smalltalkhub.com/mc/Seaside/Seaside30LGPL/main'. ];
			package: 'Seaside-Adaptors-Swazoo' with: [
				spec requires: #('Seaside-Core' 'Seaside-Swazoo' ) ].
	
		spec
			group: 'Swazoo' with: #('Seaside-Adaptors-Swazoo' );
			group: 'Zinc' with: #('Zinc-Seaside') ].
		
	spec for: #'pharo' do: [
		spec
			package: 'Seaside-Adaptors-Comanche' with: [
				spec
					requires: #('KomHttpServerLight' 'Seaside-Core') ];
			package: 'KomHttpServerLight' with: [
				spec
					repository: 'http://www.smalltalkhub.com/mc/Seaside/KomHttpServer/main'];
			package: 'Seaside-Tests-Adaptors-Comanche' with: [
				spec requires: #('Seaside-Adaptors-Comanche' ) ].
		spec
			group: 'Kom' with: #('Seaside-Adaptors-Comanche' );
			group: 'Comanche' with: #('Seaside-Adaptors-Comanche' )].
	
	spec for: #'pharo1.x' do: [ 
		spec package: 'Seaside-Tests-Adaptors-Comanche' with: [ 
				spec requires: #( 'Seaside-Tests-Pharo-Core' ) ] ].
	
	spec for: #'squeak' do: [
		spec blessing: #'baseline'.
		spec description: ''.
		spec repository: 'http://smalltalkhub.com/mc/Seaside/Seaside31/main'.
		
		spec package: 'WebClient-Seaside' with: [
			spec
				repository: 'http://www.squeaksource.com/WebClient';
				requires: #('WebClient-Core' 'Seaside-Core') ].
			
		spec
			package: 'WebClient-Seaside' with: [ spec requires: 'WebClient' ].
		spec
			group: 'WebClient' with: #('WebClient-Seaside' ) ].
		
	spec for: #'gemstone' do: [
		spec repository: 'http://seaside.gemstone.com/ss/Seaside30'.
		spec project: 'FastCGI Project' with: [
				spec
					className: 'ConfigurationOfGsFastCGI';
					versionString: #'stable';
					loads: #('FastCGI' );
					repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ].
		spec
			 package: 'Seaside-Adaptors-Swazoo' with: [
				spec includes: #('Seaside-GemStone-Adaptors-Swazoo' ) ];
			package: 'Zinc-Seaside' with: [
				spec includes: #('Seaside-GemStone-Adaptors-Zinc' ) ];
			package: 'Seaside-Adaptors-FastCGI' with: [
				spec requires: #('Seaside-Core' 'FastCGI Project' ). ];
			package: 'Seaside-GemStone-Adaptors-Swazoo' with: [
				spec requires: #('Seaside-Adaptors-Swazoo' ). ];
			package: 'Seaside-GemStone-Adaptors-Zinc' with: [
				spec requires: #('Zinc-Seaside' ) ].
	
		spec
			group: 'FastCGI' with: #('Seaside-Adaptors-FastCGI' ) ]
SELECT        GarantiasElectrodomesticos.DuracionMeses, GarantiasElectrodomesticos.ElectrodomesticoID, Electrodomesticos.Nombre
FROM            GarantiasElectrodomesticos INNER JOIN
                         Electrodomesticos ON GarantiasElectrodomesticos.ElectrodomesticoID = Electrodomesticos.ID
						 where(GarantiasElectrodomesticos.DuracionMeses=@Nombre)
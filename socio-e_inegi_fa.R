#' 
#' @author: Carlos Minutti Martinez <carlos.minutti@iimas.unam.mx>
#' @author: Miguel Félix Mata Rivera <mmatar@ipn.mx >
#' 
#' 
#' Resumen:
#' 
#' Los estudios han demostrado sistemáticamente que existe una relación entre un
#' nivel socioeconómico (NSE)  bajo y una salud deficiente, por ejemplo tasas
#' más elevadas de obesidad y diabetes. Los mecanismos exactos por los que el
#' NSE influye en la salud son complejos y multidimensionales, pero pueden incluir
#' factores como el estrés, la depresión, el acceso a alimentos sanos y
#' atención médica, y la exposición a factores ambientales tóxicos.
#' 
#' Es importante crear indicadores de NSE para cuantificar con precisión y hacer
#' un seguimiento de estos factores a lo largo del tiempo, por ejemplo, mediante
#' Sistemas de Información Geográfica (SIG) que pueden utilizarse para analizar
#' la distribución geográfica de estas características e identificar patrones y
#' tendencias que puedan servir de base a las políticas e intervenciones de salud
#' pública.
#' 
#' Sin embargo, el nivel socioeconómico (NSE) es un concepto complejo que engloba
#' factores sociales y económicos altamente relacionados entre sí. Pero, el
#' disponer de indicadores sociales y económicos separados, puede aportar
#' información valiosa sobre los mecanismos específicos por los que la situación
#' socioeconómica influye en la salud.
#' 
#' Por ejemplo, un estatus económico bajo puede indicar falta de acceso a
#' alimentos sanos y atención médica, mientras que un estatus social bajo puede
#' indicar mayor estrés y exposición a factores ambientales tóxicos. Por otro
#' lado, un índice de estatus económico alto combinado con un índice de estatus
#' social bajo podría indicar un grupo de individuos que disponen de recursos
#' económicos pero carecen de apoyo social, afectando su salud.
#' 
#' Para evaluar el impacto de los factores socioeconómicos, se construyeron
#' indicadores compuestos mediante un análisis factorial del Censo de Población y
#' Vivienda 2020, utilizando aquellas variables que mostraron mayor relevancia
#' en modelos predictivos de salud. Con estos indicadores se busca poder
#' determinar las contribuciones relativas de los factores sociales y económicos,
#' en diferentes modelos predictivos relacionados a la salud.
#' 
#' Los indicadores generados fueron validados al ser usados como predictores en
#' un análisis de regresión para estimar el Índice de Rezago Social (IRS),
#' el Índice de Desarrollo Social (IDS) y el Índice de Desarrollo Humano (IDH),
#' obteniéndose coeficientes de determinación R^2>0.9, para todos ellos.
#' 
#' Datos abiertos:
#' 
#'   Censo de Población y Vivienda 2020 (INEGI):
#'   https://www.inegi.org.mx/programas/ccpv/2020/
#' 
#'   Índice de Rezago Social (IRS) 2020 (CONEVAL):
#'   https://www.coneval.org.mx/Medicion/IRS/Paginas/Indice_Rezago_Social_2020.aspx
#' 
#'   Índice de Desarrollo Social de la Ciudad de México (Evalúa CDMX):
#'   https://evalua.cdmx.gob.mx/principales-atribuciones/medicion-del-indice-de-desarrollo-social-de-las-unidades-territoriales/medicion-del-indice-de-desarrollo-social-de-las-unidades-territoriales
#' 
#'   Índice de Desarrollo Humano Municipal 2015 (PNUD)
#'   https://www.undp.org/es/mexico/publicaciones/idh-municipal-2010-2015
#' 
#' Datos adicionales:
#' 
#'   inegi_loc_py2.csv: Archivo generado por los autores, con las variables del
#' Censo de Población y Vivienda que resultaron relevantes en los modelos
#' predictivos de salud. Los datos de vivienda y población se reescalaron
#' utilizando el total de viviendas y población de cada localidad, respectivamente.
#' 
#'   ageb-area.csv: Archivo generado por los autores, con estimaciones de 
#' superficie por localidad, usando QGIS. 



#   Apache License
# Version 2.0, January 2004
# http://www.apache.org/licenses/
#   
#   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION
# 
# 1. Definitions.
# 
# "License" shall mean the terms and conditions for use, reproduction,
# and distribution as defined by Sections 1 through 9 of this document.
# 
# "Licensor" shall mean the copyright owner or entity authorized by
# the copyright owner that is granting the License.
# 
# "Legal Entity" shall mean the union of the acting entity and all
# other entities that control, are controlled by, or are under common
# control with that entity. For the purposes of this definition,
# "control" means (i) the power, direct or indirect, to cause the
# direction or management of such entity, whether by contract or
# otherwise, or (ii) ownership of fifty percent (50%) or more of the
# outstanding shares, or (iii) beneficial ownership of such entity.
# 
# "You" (or "Your") shall mean an individual or Legal Entity
# exercising permissions granted by this License.
# 
# "Source" form shall mean the preferred form for making modifications,
# including but not limited to software source code, documentation
# source, and configuration files.
# 
# "Object" form shall mean any form resulting from mechanical
# transformation or translation of a Source form, including but
# not limited to compiled object code, generated documentation,
# and conversions to other media types.
# 
# "Work" shall mean the work of authorship, whether in Source or
# Object form, made available under the License, as indicated by a
# copyright notice that is included in or attached to the work
# (an example is provided in the Appendix below).
# 
# "Derivative Works" shall mean any work, whether in Source or Object
# form, that is based on (or derived from) the Work and for which the
# editorial revisions, annotations, elaborations, or other modifications
# represent, as a whole, an original work of authorship. For the purposes
# of this License, Derivative Works shall not include works that remain
# separable from, or merely link (or bind by name) to the interfaces of,
# the Work and Derivative Works thereof.
# 
# "Contribution" shall mean any work of authorship, including
# the original version of the Work and any modifications or additions
# to that Work or Derivative Works thereof, that is intentionally
# submitted to Licensor for inclusion in the Work by the copyright owner
# or by an individual or Legal Entity authorized to submit on behalf of
# the copyright owner. For the purposes of this definition, "submitted"
# means any form of electronic, verbal, or written communication sent
# to the Licensor or its representatives, including but not limited to
# communication on electronic mailing lists, source code control systems,
# and issue tracking systems that are managed by, or on behalf of, the
# Licensor for the purpose of discussing and improving the Work, but
# excluding communication that is conspicuously marked or otherwise
# designated in writing by the copyright owner as "Not a Contribution."
# 
# "Contributor" shall mean Licensor and any individual or Legal Entity
# on behalf of whom a Contribution has been received by Licensor and
# subsequently incorporated within the Work.
# 
# 2. Grant of Copyright License. Subject to the terms and conditions of
# this License, each Contributor hereby grants to You a perpetual,
# worldwide, non-exclusive, no-charge, royalty-free, irrevocable
# copyright license to reproduce, prepare Derivative Works of,
# publicly display, publicly perform, sublicense, and distribute the
# Work and such Derivative Works in Source or Object form.
# 
# 3. Grant of Patent License. Subject to the terms and conditions of
# this License, each Contributor hereby grants to You a perpetual,
# worldwide, non-exclusive, no-charge, royalty-free, irrevocable
# (except as stated in this section) patent license to make, have made,
# use, offer to sell, sell, import, and otherwise transfer the Work,
# where such license applies only to those patent claims licensable
# by such Contributor that are necessarily infringed by their
# Contribution(s) alone or by combination of their Contribution(s)
# with the Work to which such Contribution(s) was submitted. If You
# institute patent litigation against any entity (including a
# cross-claim or counterclaim in a lawsuit) alleging that the Work
# or a Contribution incorporated within the Work constitutes direct
# or contributory patent infringement, then any patent licenses
# granted to You under this License for that Work shall terminate
# as of the date such litigation is filed.
# 
# 4. Redistribution. You may reproduce and distribute copies of the
# Work or Derivative Works thereof in any medium, with or without
# modifications, and in Source or Object form, provided that You
# meet the following conditions:
#   
#   (a) You must give any other recipients of the Work or
# Derivative Works a copy of this License; and
# 
# (b) You must cause any modified files to carry prominent notices
# stating that You changed the files; and
# 
# (c) You must retain, in the Source form of any Derivative Works
# that You distribute, all copyright, patent, trademark, and
# attribution notices from the Source form of the Work,
# excluding those notices that do not pertain to any part of
# the Derivative Works; and
# 
# (d) If the Work includes a "NOTICE" text file as part of its
# distribution, then any Derivative Works that You distribute must
# include a readable copy of the attribution notices contained
# within such NOTICE file, excluding those notices that do not
# pertain to any part of the Derivative Works, in at least one
# of the following places: within a NOTICE text file distributed
# as part of the Derivative Works; within the Source form or
# documentation, if provided along with the Derivative Works; or,
# within a display generated by the Derivative Works, if and
# wherever such third-party notices normally appear. The contents
# of the NOTICE file are for informational purposes only and
# do not modify the License. You may add Your own attribution
# notices within Derivative Works that You distribute, alongside
# or as an addendum to the NOTICE text from the Work, provided
# that such additional attribution notices cannot be construed
# as modifying the License.
# 
# You may add Your own copyright statement to Your modifications and
# may provide additional or different license terms and conditions
# for use, reproduction, or distribution of Your modifications, or
# for any such Derivative Works as a whole, provided Your use,
# reproduction, and distribution of the Work otherwise complies with
# the conditions stated in this License.
# 
# 5. Submission of Contributions. Unless You explicitly state otherwise,
# any Contribution intentionally submitted for inclusion in the Work
# by You to the Licensor shall be under the terms and conditions of
# this License, without any additional terms or conditions.
# Notwithstanding the above, nothing herein shall supersede or modify
# the terms of any separate license agreement you may have executed
# with Licensor regarding such Contributions.
# 
# 6. Trademarks. This License does not grant permission to use the trade
# names, trademarks, service marks, or product names of the Licensor,
# except as required for reasonable and customary use in describing the
# origin of the Work and reproducing the content of the NOTICE file.
# 
# 7. Disclaimer of Warranty. Unless required by applicable law or
# agreed to in writing, Licensor provides the Work (and each
# Contributor provides its Contributions) on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied, including, without limitation, any warranties or conditions
# of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
# PARTICULAR PURPOSE. You are solely responsible for determining the
# appropriateness of using or redistributing the Work and assume any
# risks associated with Your exercise of permissions under this License.
# 
# 8. Limitation of Liability. In no event and under no legal theory,
# whether in tort (including negligence), contract, or otherwise,
# unless required by applicable law (such as deliberate and grossly
# negligent acts) or agreed to in writing, shall any Contributor be
# liable to You for damages, including any direct, indirect, special,
# incidental, or consequential damages of any character arising as a
# result of this License or out of the use or inability to use the
# Work (including but not limited to damages for loss of goodwill,
#       work stoppage, computer failure or malfunction, or any and all
#       other commercial damages or losses), even if such Contributor
# has been advised of the possibility of such damages.
# 
# 9. Accepting Warranty or Additional Liability. While redistributing
# the Work or Derivative Works thereof, You may choose to offer,
# and charge a fee for, acceptance of support, warranty, indemnity,
# or other liability obligations and/or rights consistent with this
# License. However, in accepting such obligations, You may act only
# on Your own behalf and on Your sole responsibility, not on behalf
# of any other Contributor, and only if You agree to indemnify,
# defend, and hold each Contributor harmless for any liability
# incurred by, or claims asserted against, such Contributor by reason
# of your accepting any such warranty or additional liability.
# 
# END OF TERMS AND CONDITIONS


  
rm(list=ls())
setwd(dirname(rstudioapi::getActiveDocumentContext()$path)) # directorio de trabajo = directorio de archivos
set.seed(3)

library(tidyverse)
library(stringr)



# área espacial de cada ageb
area_ageb = read_csv('ageb-area.csv')

# datos del censo 2020
inegi_loc = read_csv('inegi_loc.csv') 

# datos del censo 2020, valores relativos a poblacion y viviendas
inegi_loc_py = read_csv('inegi_loc_py2.csv')

# Índice de desarrollo social, EvaluaCDMX
ids <- read_csv('ids_cdmx.csv')

# Índice de rezago social, CONEVAL
irs <- read_csv('irs_cdmx.csv')

# Índice de desarrollo humano, PNUD
idh <- read_csv('idh-2015.csv')


# Indice para cada registro usando Entidad, Mun y LOC
inegi_loc$loc_id <- with(inegi_loc, paste(ENTIDAD, MUN, LOC, sep=''))
row.names(inegi_loc) <- inegi_loc$loc_id
row.names(inegi_loc_py) <- inegi_loc_py$loc_id

ids$loc_id <- with(ids, paste(entidad, alcaldia, localidad, sep=''))
ids_loc <- as.data.frame(with(ids, tapply(IDSM, loc_id, mean)))
names(ids_loc) <- 'IDSM'

row.names(irs) <- irs$Clave_localidad


# Área de ageb por indice
area_ageb$loc_id <- with(area_ageb, paste(CVE_ENT, CVE_MUN, CVE_LOC, sep=''))
area <- as.data.frame(with(area_ageb, tapply(Area, loc_id, sum)))
names(area) <- 'Area'


# Se construye X con los datos del censo, escalados
rid <-  row.names(inegi_loc_py)
X <- inegi_loc_py[,2:ncol(inegi_loc_py)]
row.names(X) <- rid

# Registros de los principales municipios de CDMX
v_samp <- str_detect(row.names(area), '^09.*01$')
cdmx_mun <- row.names(area)[v_samp]

a_id <- rid[rid %in% row.names(area)[(area$Area>quantile(area$Area, 0.946))]]
ine <- inegi_loc

X2 <- X[a_id,]

# nombres de localidad para usar como etiqueta
lnam <- c(ine['NOM_LOC'] )$NOM_LOC


# función para normalizar con max-min
normalize <- function(x, na.rm = TRUE) {
  return((x- min(x)) /(max(x)-min(x)))
}

min_x <- as.data.frame(lapply(X2, min))
max_x <- as.data.frame(lapply(X2, max))
X3 <- as.data.frame(lapply(X2, normalize))



# PCA
(results <- prcomp(X3, scale = FALSE))
biplot(results, expand = 0.9,  cex=0.6)




# Factor analysis
(X.fa <- factanal(X3, factors = 2, rotation = "varimax", scores = "regression", lower = 0.001, nstart = 2))
cor(X.fa$loadings[,1:2])

plot(X.fa$loadings[,1], 
     X.fa$loadings[,2],
     xlab = "Factor 1", 
     ylab = "Factor 2", 
     ylim = c(-1.2,1.2),
     xlim = c(-1.2,1.2),
     main = "Varimax rotation")

text(X.fa$loadings[,1]-0.08, 
     X.fa$loadings[,2]+0.08,
     colnames(X3),
     col="blue")
abline(h = 0, v = 0)

library(psych)
library(GPArotation)

fa.simplimax <- fa(r=X3, 
              nfactors = 2,
              fm="ols",
              max.iter=100, # (50 is the default, but we have changed it to 100
              rotate="simplimax")

print(fa.simplimax)
print(fa.simplimax$loadings, cutoff=0.3)
fa.diagram(fa.simplimax,cut=.01,digits=2, rsize=1)
cor(fa.simplimax$loadings)
fa.simplimax$Phi

# guardar los pesos de los factores
fa_load <- round(as.data.frame(unclass(fa.simplimax$loadings)), 3)
names(fa_load) <- c('F1', 'F2')
fa_load$Var <- row.names(fa_load)
fa_load <- fa_load[,c('Var', 'F1', 'F2')]
#write_csv(fa_load, 'inegi_fa_loads_2.csv')


scale_inegi_fa <- rbind(min_x, max_x)
#write_csv(scale_inegi_fa, 'scale_inegi_fa_2.csv')


library(car)
y<-rnorm(nrow(X3))
x.lm <- lm(y ~ ., data = X3)

vif_values <- vif(x.lm)

barplot(vif_values, main = "VIF Values", horiz = TRUE, col = "steelblue")
abline(v = 5, lwd = 3, lty = 2)
sort(vif_values)


main_vars <- fa_load$Var[unique(c(order(abs(fa_load$F1), decreasing = T)[1:4],order(abs(fa_load$F2), decreasing = T)[1:4]))]
pairs.panels(X3[, main_vars],
             smooth = TRUE,     
             scale = FALSE,    
             density = TRUE,
             ellipses = TRUE,   
             method = "spearman", 
             pch = 21,   
             lm = FALSE,     
             cor = TRUE,      
             jiggle = FALSE,     
             factor = 2,   
             hist.col = 4,  
             stars = TRUE,    
             ci = TRUE)  




normalizeApply <- function(x, xmin, xmax) {
  xmin <- as.numeric(xmin)
  xmax <- as.numeric(xmax)
  
  n <- length(xmin)
  x_norm <- x
  
  for(i in 1:n) {
    x_norm[,i] <- (x[,i]-xmin[i]) /(xmax[i]-xmin[i])
  }
  
  return(x_norm)
}

# limital el minimo y maximo valor
x_set_lim <- function(x, ll=-3,ul=3) {
  
  x[x>ul] <- ul
  x[x<ll] <- ll
  
  return(x)
}

# limitar outliers
X_norm <- normalizeApply(X, min_x, max_x)
X_norm_l <- as.data.frame(lapply(X_norm, x_set_lim, -1,10))

# uso de los pesos de FA, para generar el valor de los indices
X_F1 <- as.matrix(X_norm_l[,fa_load$Var]) %*% as.matrix(fa_load['F1'])
X_F2 <- as.matrix(X_norm_l[,fa_load$Var]) %*% as.matrix(fa_load['F2'])

row.names(X_F1) <- inegi_loc_py$loc_id
row.names(X_F2) <- inegi_loc_py$loc_id


# Selección de principales municipios de CDMX para cada indice
idx <- cdmx_mun
X_ids <- ids_loc[idx,]
X_irs <- irs[idx,]$Índice_de_rezago_social
X_F1_ids <- X_F1[idx,]
X_F2_ids <- X_F2[idx,]

X_F1_idh <- X_F1_ids[cdmx_mun %in% idh$LOC]
X_F2_idh <- X_F2_ids[cdmx_mun %in% idh$LOC]

X_F <- round(cbind(X_F2, X_F1), 3)
#write.csv(as.data.frame(X_F), "X_F.csv")

# correlación entre indices
round(cor(cbind(X_ids, X_irs, X_F1_ids, X_F2_ids)), 3)



# Regresión de los indices creados vs IDS, IRS, IDH
reg_ids <- lm(X_ids ~ X_F1_ids+X_F2_ids)
summary(reg_ids)
plot(X_ids, reg_ids$fitted.values, main="IDS")
abline(lm(reg_ids$fitted.values~X_ids))

reg_irs <- lm(X_irs ~ X_F1_ids+X_F2_ids)
summary(reg_irs)
plot(X_irs, reg_irs$fitted.values, main="IRS")
abline(lm(reg_irs$fitted.values~X_irs))


reg_idh <- lm(idh$IDH ~ X_F1_idh+X_F2_idh)
summary(reg_idh)
plot(idh$IDH, reg_idh$fitted.values, main="IDH")
abline(lm(reg_idh$fitted.values~idh$IDH))





select*from dbo.SubEliminationGuide;
select*from dbo.SubstitutionElimination;

insert into dbo.SubEliminationGuide (TypeOfCarbon,MajorReaction,StrongNuGives,StrongBaseGives,TypeOfSolvent)
values ('Methyl','Sn2','Sn2','Cannot be used with strong base.','Only aprotic solvents.')

insert into dbo.SubstitutionElimination(TypeOfReaction,ExplanationOfReaction)
values('Sn1','Sn1 is a multiple step reaction. racemization occurs. Rate is dependant on electrophile, Rate=k[electrophile]')

create table SubElimXref
(
	SubEliminationGuideId bigint not null foreign key(SubEliminationGuideId) references SubEliminationGuide(Id),
	SubstitutionEliminationId bigint not null foreign key(SubstitutionEliminationId) references SubstitutionElimination(Id),
	primary key(SubEliminationGuideId,SubstitutionEliminationId)

);

insert into SubElimXref(SubEliminationGuideId,SubstitutionEliminationId)
values(1,1)
insert into SubElimXref(SubEliminationGuideId,SubstitutionEliminationId)
values(1,3) --these two contain subElimguideId=1 and subelimID=1,3

insert into SubElimXref(SubEliminationGuideId,SubstitutionEliminationId)
values(3,1)

insert into SubElimXref(SubEliminationGuideId,SubstitutionEliminationId)
values(3,3)

insert into SubElimXref(SubEliminationGuideId,SubstitutionEliminationId)
values(4,1)
insert into SubElimXref(SubEliminationGuideId,SubstitutionEliminationId)
values(4,2)
insert into SubElimXref(SubEliminationGuideId,SubstitutionEliminationId)
values(4,3)

insert into SubElimXref(SubEliminationGuideId,SubstitutionEliminationId)
values(8,1)

select*From SubElimXref;
select*from SubEliminationGuide;
select*from SubstitutionElimination;

delete from dbo.SubstitutionElimination where Id=6;

select*from PkaValues;

insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Hydrogen Iodide, Conjugate Base:Iodine',-10)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Sulfuric Acid, Conjugate Base:Hydrogen Sulfate',-9)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:HydroBromic Acid, Conjugate Base: Bromine Ion',-9)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:HydroChloric Acid, Conjugate Base: Chlorine Ion',-7)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:BenzeneSulfonic Acid, Conjugate Base: Benzene Sulfonate',-6.5)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Hydronium, Conjugate Base: Water',-1.74)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Nitric Acid, Conjugate Base: Nitrate',-1.4)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:TriFlouroacetic Acid, Conjugate Base: TriFlouroacetate',0.18)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Acetic Acid, Conjugate Base: Acetate Ion',4.76)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Ammonium, Conjugate Base: Ammonia',9.2)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Phenol, Conjugate Base: Phenolate Ion',9.9)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Methylammonium Ion, Conjugate Base: Methylamine',10.6)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Water, Conjugate Base: Hydroxide Ion',15.74)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Primary Alcohol, Conjugate Base: Alkoxide Ion',16)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Tertiary Alcohol, Conjugate Base: Alkoxide Ion',18)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Alkyne, Conjugate Base: ',25)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Hydrogen, Conjugate Base: Hydrogen Ion',35)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Ammonia, Conjugate Base: Amide Ion',38)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Alkene, Conjugate Base: ',44)
insert into dbo.PkaValues(AcidsConjugateBase,pKa)
values('Acid:Alkane, Conjugate Base: ',50)

select*from PkaValues;
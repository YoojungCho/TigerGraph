echo "data now : $(date +%Y)-$(date +%m)-$(date +%d) $(date +%H):$(date +%M):$(date +%S)"

## PLEASE modify the line below to the directory where your raw file sits and remove the '#'
export Community_data_dir=/home/tigergraph/02_Community/Community_data/


#start all TigerGraph services
gadmin start all

gsql -g Community "run loading job load_job_claim using
v_claim=\"${Community_data_dir}/claim.csv\""

gsql -g Community "run loading job load_job_claim_associated_with_patient using
v_claim_associated_with_patient=\"${Community_data_dir}/claim_associated_with_patient.csv\""

gsql -g Community "run loading job load_job_claim_submitted_by_prescriber using
v_claim_submitted_by_prescriber=\"${Community_data_dir}/claim_submitted_by_prescriber.csv\""

gsql -g Community "run loading job load_job_flickrEdges using
v_flickrEdges=\"${Community_data_dir}/flickrEdges.csv\""

gsql -g Community "run loading job load_job_moreno_kangaroo using
v_moreno_kangaroo=\"${Community_data_dir}/moreno_kangaroo.csv\""

gsql -g Community "run loading job load_job_specialties-subspecialties using
v_specialties_subspecialties=\"${Community_data_dir}/specialties-subspecialties.csv\""

gsql -g Community "run loading job load_job_subspecialties-prescriber using
v_subspecialties_prescriber=\"${Community_data_dir}/subspecialties-prescriber.csv\""

echo "data now : $(date +%Y)-$(date +%m)-$(date +%d) $(date +%H):$(date +%M):$(date +%S)"

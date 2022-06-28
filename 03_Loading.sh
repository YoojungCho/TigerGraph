echo "data now : $(date +%Y)-$(date +%m)-$(date +%d) $(date +%H):$(date +%M):$(date +%S)"

export Community_data_dir=/home/tigergraph/02_Community/Community_data/

gadmin start all

gsql -g Community "run loading job load_job_claim using
v_claim=\"${Community_data_dir}/claim.csv\""

gsql -g Community "run loading job load_job_subspecialties-prescriber using
v_subspecialties-prescriber=\"${Community_data_dir}/subspecialties-prescriber.csv\""

gsql -g Community "run loading job load_job_specialties-subspecialties using
v_specialties-subspecialties=\"${Community_data_dir}/specialties-subspecialties.csv\""

gsql -g Community "run loading job load_job_claim_associated_with_patient using
v_claim_associated_with_patient=\"${Community_data_dir}/claim associated with patient.csv\""

gsql -g Community "run loading job load_job_claim_submitted_by_prescriber using
v_claim_submitted_by_prescriber=\"${Community_data_dir}/claim submitted_by prescriber.csv\""

gsql -g Community "run loading job load_job_flickrEdges using
v_flickrEdges=\"${Community_data_dir}/flickrEdges.csv\""

gsql -g Community "run loading job load_job_moreno_kangaroo using
v_moreno_kangaroo=\"${Community_data_dir}/moreno_kangaroo.csv\""

echo "data now : $(date +%Y)-$(date +%m)-$(date +%d) $(date +%H):$(date +%M):$(date +%S)"

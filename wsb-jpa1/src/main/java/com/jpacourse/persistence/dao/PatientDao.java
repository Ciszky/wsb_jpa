package com.jpacourse.persistence.dao;
import com.jpacourse.persistence.entity.PatientEntity;
import com.jpacourse.persistence.entity.VisitEntity;
import java.time.LocalDateTime;

public interface PatientDao extends Dao<PatientEntity, Long> {
    PatientEntity findPatientById(Long patientId);
    PatientEntity saveOrUpdate(PatientEntity patientEntity);
    void deletePatientById(Long patientId);
    VisitEntity addVisitToPatient(Long patientId, Long doctorId, String description, LocalDateTime time);
}

package com.jpacourse.persistance.dao;

import com.jpacourse.persistence.dao.DoctorDao;
import com.jpacourse.persistence.dao.PatientDao;
import com.jpacourse.persistence.entity.DoctorEntity;
import com.jpacourse.persistence.entity.PatientEntity;
import com.jpacourse.persistence.entity.VisitEntity;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
public class PatientDaoTest {
    @Autowired
    private PatientDao patientDao;

    @Autowired
    private DoctorDao doctorDao;

    @Test
    public void createVisit() {

        LocalDateTime visitDate = LocalDateTime.now();
        DoctorEntity doctor = doctorDao.findOne(1L);
        PatientEntity patient = patientDao.findOne(1L);

        assertThat(patient).isNotNull();
        assertThat(doctor).isNotNull();

        int patientVisitsCount = patient.getVisits().size();

        VisitEntity result = patientDao.addVisitToPatient(1L, 1L, "opis", visitDate);

        assertThat(result).isNotNull();

        assertThat(patient.getVisits().size()).isEqualTo(patientVisitsCount + 1);
        assertThat(result.getPatient().getId()).isEqualTo(patient.getId());
        assertThat(result.getDoctor().getId()).isEqualTo(doctor.getId());
        assertThat(result.getDescription()).isEqualTo("opis");
        assertThat(result.getTime()).isEqualTo(visitDate);
    }

    @Test
    public void testFindPatientsByLastName()
    {

        String lastName = "Horbacz";

        Collection<PatientEntity> result = patientDao.findPatientsByLastName(lastName);
        List<PatientEntity> listOfResults = new ArrayList<>(result);

        assertNotNull(listOfResults);
        assertFalse(listOfResults.isEmpty());
        assertEquals(listOfResults.size(), 2);
        assertEquals(listOfResults.get(0).getLastName(), lastName);
        assertEquals(listOfResults.get(1).getLastName(), lastName);
    }

    @Test
    public void testFindPatientsWithVisitsCountGreaterThanOne() {

        int visitsCount = 2;

        Collection<PatientEntity> result = patientDao.findPatientsWithVisitsCountGreaterThan(visitsCount);
        List<PatientEntity> listOfResults = new ArrayList<>(result);

        assertNotNull(listOfResults);
        assertFalse(listOfResults.isEmpty());
        assertEquals(4, listOfResults.size());

        PatientEntity patient = listOfResults.get(0);
        assertThat(patient).isNotNull();

        assertEquals("Johnny", patient.getFirstName());

        assertThat(patient.getId()).isEqualTo(2L);
        assertThat(patient.getFirstName()).isEqualTo("Johnny");
        assertThat(patient.getLastName()).isEqualTo("Rico");
        assertThat(patient.getPatientNumber()).isEqualTo("PAT002");
        assertThat(patient.getDateOfBirth().toString()).isEqualTo("1989-06-07");
        assertThat(patient.getEmail()).isEqualTo("jrico@fednet.com");
        assertThat(patient.getTelephoneNumber()).isEqualTo("32 569 75 88");
    }

    @Test
    public void testFindPatientsWithAllergy() {
        Boolean isAllergy = true;

        Collection<PatientEntity> result = patientDao.findPatientsByAllergicStatus(isAllergy);
        List<PatientEntity> listOfResults = new ArrayList<>(result);

        assertNotNull(listOfResults);
        assertFalse(listOfResults.isEmpty());
        assertEquals(3, listOfResults.size());

        PatientEntity patient = listOfResults.get(0);
        assertNotNull(patient);

        assertEquals("Jean-Luc", patient.getFirstName());
        assertEquals("Picard", patient.getLastName());
        assertEquals("PAT001", patient.getPatientNumber());
        assertThat(patient.getIsAllergic()).isEqualTo(isAllergy);


        PatientEntity patient2 = listOfResults.get(1);
        assertNotNull(patient2);

        assertEquals("Miranda", patient2.getFirstName());
        assertEquals("Lawson", patient2.getLastName());
        assertEquals("PAT005", patient2.getPatientNumber());
        assertThat(patient2.getIsAllergic()).isEqualTo(isAllergy);

        PatientEntity patient3 = listOfResults.get(2);
        assertNotNull(patient3);

        assertEquals("Garrus", patient3.getFirstName());
        assertEquals("Vakarian", patient3.getLastName());
        assertEquals("PAT003", patient3.getPatientNumber());
        assertThat(patient3.getIsAllergic()).isEqualTo(isAllergy);
    }

    @Test
    public void testConcurrentModification() throws InterruptedException {

        Long patientId = 2L;

        Thread thread1 = new Thread(() -> {
            PatientEntity patient1 = patientDao.findOne(patientId);
            try {
                Thread.sleep(10000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            patient1.setTelephoneNumber("764 394 364");

            assertThrows(ObjectOptimisticLockingFailureException.class, () -> {
                patientDao.update(patient1);
            });
        });

        Thread thread2 = new Thread(() -> {
            PatientEntity patient2 = patientDao.findOne(patientId);

            patient2.setTelephoneNumber("121 663 215");
            patientDao.update(patient2);
        });

        thread1.start();
        thread2.start();

        thread1.join();
        thread2.join();
    }
}
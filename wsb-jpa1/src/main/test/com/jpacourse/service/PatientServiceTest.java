package com.jpacourse.service;

import com.jpacourse.dto.PatientTO;
import com.jpacourse.persistence.dao.AddressDao;
import com.jpacourse.persistence.dao.DoctorDao;
import com.jpacourse.persistence.dao.VisitDao;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
class PatientServiceTest {
    @Autowired
    private PatientService patientService;

    @Autowired
    private VisitDao visitDao;

    @Autowired
    private DoctorDao doctorDao;

    @Autowired
    private AddressDao addressDao;

    @Test
    public void testShouldDeletePatientAndHisVisits() {

        PatientTO patientStateBefore = patientService.getPatientById(1L);
        assertThat(patientStateBefore).isNotNull();
        assertThat(visitDao.findByPatient(1L)).isNotEmpty();
        int doctorCount = doctorDao.findAll().size();

        patientService.deletePatient(1L);

        PatientTO patientAfter = patientService.getPatientById(1L);
        assertThat(patientAfter).isNull();
        assertThat(visitDao.findByPatient(1L)).isEmpty();
        assertThat(doctorDao.findAll().size()).isEqualTo(doctorCount);
    }

    @Test
    public void testFindPatientByID_ReturnsCorrectStructure() {

        PatientTO patient = patientService.getPatientById(1L);

        assertThat(patient).isNotNull();
        assertThat(patient.getFirstName()).isEqualTo("Ryszard");
        assertThat(patient.getLastName()).isEqualTo("Roszko");
        assertThat(patient.getPatientNumber()).isEqualTo("PAT001");
        assertThat(patient.getEmail()).isEqualTo("muellerrobert@onet.pl");
        assertThat(patient.getTelephoneNumber()).isEqualTo("+48 885 598 633");
        assertThat(patient.getAddress()).isEqualToComparingFieldByField(addressDao.findOne(4L));

        assertThat(patient.getVisits()).size().isEqualTo(2);
    }
}

package spring;

import java.util.Date;
import org.springframework.transaction.annotation.Transactional;

public class MemberRegisterService {
	private MemberDao memberDao;

	public MemberRegisterService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Transactional
	public void regist(RegisterRequest req) {
		//이메일로 회원 데이터(Member) 조회
		Member member = memberDao.selectByEmail(req.getEmail());
		if (member != null) {
			//같은 이메일을 가진 회원이 이미 존재하면 익셉션 발생
			throw new AlreadyExistingMemberException("dup email " + req.getEmail());
		}
		// 같은 이메일을 가진 회원이 존재하지 않으면 DB에 삽입
		Member newMember = new Member(
				req.getEmail(), req.getPassword(), req.getName(),
				new Date());
		memberDao.insert(newMember);
	}
}
/* 회원가입 처리하는 기능
 * 객체의 selectByEmail() 메서드를 이용해서 데이터베이스에 동일한 이메일을 가진 회원 확인, 있으면 예외, 없으면 Member객체 생성 
 * MemberDao의 insert() 메서드를 통해서 DB에 회원 데이터 삽입
 *
 * 
 */


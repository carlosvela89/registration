package survey;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/survey")

public class SurveyController {

	@RequestMapping(method = RequestMethod.GET)
	public String form(Model model){
		List<Question> questions = createQuestions();
		model.addAttribute("questions", questions);
		return "survey/surveyForm";
	}
	private List<Question> createQuestions(){
		Question q1 = new Question("옷을 주로 어디서 구매하십니까 ?", Arrays.asList("백화점", "해외구매", "도메스틱"));
		Question q2 = new Question("가장 선호하는 스타일은?", Arrays.asList("클래식", "밀리터리", "힙합"));
		Question q3 = new Question("가장 선호하는 브랜드는?");
		return Arrays.asList(q1,q2,q3);
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String submit(@ModelAttribute("ansData") AnswerData data){
		return "survey/submitted";
	}
}

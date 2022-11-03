UPDATE t_agent SET TARGET_POLICY_SUM =400000 
			WHERE (agent_city ='PUNE' AND  agent_id LIKE 'M%');
		SELECT * FROM t_agent;
UPDATE t_agent SET TARGET_POLICY_SUM =250000
                WHERE (agent_city ='CHENNAI' AND agent_id LIKE 'M%');
                SELECT * FROM t_agent;

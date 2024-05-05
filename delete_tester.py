from entry_handler import Entry_Handler
import logging_helper

logger = logging_helper.get_common_logger()

entry_handler = Entry_Handler(logger)

test_query_params = {'method': ['delete_session'],'session_id': [50], 'debug': ['true']}
entry_handler.run_method("GET",test_query_params,"")


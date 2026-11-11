.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 62
xor cl, 15
or cl, dl
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and cl, -111
or rax, -1523798580
xor al, -89
test esi, 425331143
test ebx, -2015966884
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
or rax, 1461812833
or dil, -71
xor dil, -5
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

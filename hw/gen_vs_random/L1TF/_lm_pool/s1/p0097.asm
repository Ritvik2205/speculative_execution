.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 98
add dl, -70
and rax, 1163013815
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdi]
cmovnz rsi, rcx
add al, 74
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
add cx, 98
and dl, bl
or dl, -92
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
or dil, al
lea rbx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

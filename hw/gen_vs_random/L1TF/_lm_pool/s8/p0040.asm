.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, bx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 52
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
and rsi, 59
and dl, -86
and sil, bl
jmp .bb_0.1
.bb_0.1:
and bl, -56 # instrumentation
cmovnle ecx, eax
adc dl, dil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

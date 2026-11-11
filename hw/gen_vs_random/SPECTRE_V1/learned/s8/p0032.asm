.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
lea esi, qword ptr [rbx]
or edi, 95
sbb dl, cl
lea ebx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
inc ecx
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, -114
lea bx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

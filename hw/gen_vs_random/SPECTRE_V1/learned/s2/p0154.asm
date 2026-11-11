.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, eax
and dil, -114
and al, sil
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
xchg ebx, edx
and cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

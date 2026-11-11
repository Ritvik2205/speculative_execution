.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
or dl, dl
and rax, rdx
or al, -2
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

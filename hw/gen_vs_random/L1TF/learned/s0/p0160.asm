.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
and rbx, -64
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 33
and ax, 26813
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
or bl, -88
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
sub al, 26
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

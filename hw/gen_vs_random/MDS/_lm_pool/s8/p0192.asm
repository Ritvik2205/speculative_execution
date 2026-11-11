.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
xor sil, -126
test ecx, -1843375753
test cl, dil
and al, 87
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
or bl, 13
bts si, 205
xor bl, cl
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and bl, 68
test ecx, -1843375753
or bl, sil
and cl, sil
xor al, 8
xor cl, 55
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test eax, -675944960
or al, 74
bt dx, si
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
and al, -55
test ax, 30932
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

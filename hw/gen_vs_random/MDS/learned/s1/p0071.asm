.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
or ecx, esi
or ecx, ebx
and al, -114
bts ecx, 3
and dl, -73
xor dl, -19
test bl, -9
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
xor dx, 7
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test bl, al
and rax, -2058103810
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

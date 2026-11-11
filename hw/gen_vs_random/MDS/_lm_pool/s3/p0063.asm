.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 84
xor rdx, -59
test dl, 9
xor dl, 34
test dl, -119
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
or al, -24
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 73
xor rbx, 89
or al, 16
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

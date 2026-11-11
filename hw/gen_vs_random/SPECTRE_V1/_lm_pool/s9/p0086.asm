.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
sbb dl, 127
lea rax, qword ptr [rdi + rcx + 10]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
xor edi, 115
xor bl, -38
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
add sil, 2
xor esi, 106
cmp bl, -114
bswap rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 45
test rdx, 93
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
test bl, dil
test cl, 91
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 94
test dil, cl
or sil, -49
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test ecx, -1843375753
or cl, 6
xor al, 9
xor ax, -16696
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
xor dl, cl
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

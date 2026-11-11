.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
lea rax, qword ptr [rdx + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
test sil, dil
test ecx, 96
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
not dx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -96 # instrumentation
cmovo eax, eax
test dil, -116
sub sil, -18
and rax, -273199823
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cl, dil
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
neg rsi
sbb ax, -17107
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, dl
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

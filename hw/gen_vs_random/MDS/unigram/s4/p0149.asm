.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 21
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 98
cmovnb cx, si
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
xor bx, ax
xor esi, 60
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
xor sil, sil
and cl, dil
and dl, -7
and sil, -94
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and sil, al
xor ax, bx
and dl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rcx]
btr rcx, 59
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
cmovs edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

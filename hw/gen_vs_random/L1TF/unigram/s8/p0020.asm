.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
dec si
imul al
add al, al
add bl, -45 # instrumentation
cmovs rsi, rsi
cmovp rcx, rdx
cmovbe edx, eax
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 37
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and si, 86
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
add bl, 115 # instrumentation
setz cl
add dl, -40 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
xor eax, edi
sbb rdx, rdi
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

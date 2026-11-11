.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
mov dx, ax
or bl, al
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
btr ax, cx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
xor cl, cl
mul edi
sub ebx, 22
add dl, 85 # instrumentation
cmovp si, si
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 97
imul sil
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 27
or rax, rdi
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
bswap rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 87
mov sil, 100
bt eax, 78
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
add bl, 45 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
cmovb rcx, rdi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
add bl, -92 # instrumentation
cmovs bx, dx
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
imul eax
neg rcx
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
xchg dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

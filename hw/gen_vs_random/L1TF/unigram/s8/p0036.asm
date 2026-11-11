.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
cmovs ax, si
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
add bl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
imul bx, ax, 89
add al, -1 # instrumentation
nop
mov di, ax
bt rsi, 7
add cl, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 32
cmovnbe rbx, rcx
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

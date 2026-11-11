.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
cmovnp bx, di
add al, cl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
test cl, dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add di, ax
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
add edi, -91
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 56
lea rdx, qword ptr [rbx + rdx]
and dl, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
xchg cx, ax
or bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

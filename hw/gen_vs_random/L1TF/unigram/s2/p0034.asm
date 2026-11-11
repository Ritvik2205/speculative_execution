.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, cl
bt si, ax
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
imul rdx, rcx, 19
test al, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
add cl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
add cl, cl
lea si, qword ptr [rdx + rcx + 72]
cmovz ax, dx
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

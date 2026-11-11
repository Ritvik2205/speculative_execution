.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 63
inc al
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test cl, 56
lea bx, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
sbb dil, al
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
sbb al, -23
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

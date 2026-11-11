.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
lea bx, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
xor cl, al
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 89
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 59
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
js .bb_0.2
jmp .exit_0
.bb_0.2:
test cl, -33
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
sbb al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

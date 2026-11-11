.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 3
add dl, -57 # instrumentation
setz dl
and dx, 69
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
cmp rdx, 17
cmovle rdi, rsi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
btc dx, di
test bl, 84
imul rsi, rdi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
add edi, 24
cmovl esi, edi
cmovz eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

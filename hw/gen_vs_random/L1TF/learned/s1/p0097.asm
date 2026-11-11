.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
add al, -46
or rsi, 68
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
sub rbx, 48
xchg dl, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

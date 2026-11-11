.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
sub dl, -34
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
jmp .bb_0.1
.bb_0.1:
test cl, 1
jmp .bb_0.2
.bb_0.2:
test al, -32
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
bswap rdx
sbb rax, -1841833326
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
neg dl
lea edi, qword ptr [rdx + rbx + 51018]
btc dx, ax
sub al, -3
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
or al, -2
jmp .bb_0.1
.bb_0.1:
sbb eax, -403815802
not sil
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
test al, cl
xor al, al
dec edx
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

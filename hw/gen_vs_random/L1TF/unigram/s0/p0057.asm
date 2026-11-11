.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
btr ax, bx
add cl, 40 # instrumentation
cmovbe dx, bx
bt rdi, rsi
sub rax, rcx
jmp .bb_0.1
.bb_0.1:
nop
cmp rdx, rdx
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
imul cx, bx
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

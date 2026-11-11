.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rsi]
add rsi, -60
btr rcx, 158
jno .bb_0.1
jmp .exit_0
.bb_0.1:
or sil, cl
mul dl
mov bl, dil
lea rsi, qword ptr [rcx + rsi]
test si, di
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
sbb sil, cl
add dl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

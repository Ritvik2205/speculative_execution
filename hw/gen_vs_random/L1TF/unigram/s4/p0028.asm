.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
add bl, 68
xchg dil, al
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
btc eax, 220
or al, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dil
adc rsi, 30
test rcx, rsi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
btr eax, edi
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

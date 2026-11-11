.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, 2
neg rcx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
adc si, 6
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 97
xor edx, edi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 32
cmovbe eax, edi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
test rax, -1638758413
add al, -14 # instrumentation
lea cx, qword ptr [rdx + rsi]
neg dl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 90
cmovnl ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

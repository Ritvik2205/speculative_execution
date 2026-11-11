.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
sub dil, 56
setns al
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
mov al, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
xchg dil, dil
xor bl, dil
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and di, si
cbw
add dl, -105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 100
add cl, 97 # instrumentation
adc ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

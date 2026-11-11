.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
sbb eax, 544669545
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
or rsi, 86
adc rsi, 22
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 22
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
mov sil, dil
jmp .bb_0.1
.bb_0.1:
setbe dl
test rcx, 87
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
setnbe al
and rcx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 34
adc rbx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -500051843
adc rbx, 75
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 44
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 50
add dx, -51
sbb sil, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -65
add dx, -51
mov dil, 70
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 90
cmovns esi, esi
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
mov bl, cl
sbb eax, 544669545
test bl, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

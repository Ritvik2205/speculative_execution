.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdi]
xor al, -89
and rax, rcx
or sil, 52
adc cl, -81
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdx], eax
xor bl, dil
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
test cl, -24
mul sil
or cl, bl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

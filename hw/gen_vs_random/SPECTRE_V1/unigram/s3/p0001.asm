.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 41
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
bt edx, edi
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, dl
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
cmovnbe rdx, rcx
add cl, -123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
adc ax, dx
cmovl rdi, rcx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
test bl, 16
add bl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

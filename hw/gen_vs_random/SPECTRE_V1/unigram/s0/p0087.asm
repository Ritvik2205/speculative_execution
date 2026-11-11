.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
setp dl
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 78
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
adc dil, 60
bswap eax
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, -18
add dl, 13 # instrumentation
setns dl
mul bl
btr rsi, 95
xor rbx, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

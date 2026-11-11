.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
or cl, 105
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and dil, cl
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test cl, 15
adc dil, sil
btc si, bx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
or rax, 699028911
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

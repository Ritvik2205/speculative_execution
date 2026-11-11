.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
bts rax, 140
xor rbx, 32
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmp ebx, edi
setbe cl
cbw
setnbe cl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 41
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
btc cx, 75
and cl, 14
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

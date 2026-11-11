.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
neg rdx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
add cl, -127
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 11
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
dec rax
cmp sil, bl
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
sbb si, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
setns dl
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 38
sbb edx, 74
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 16
add bl, 112 # instrumentation
setnbe dil
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
add cl, -29 # instrumentation
lea rcx, qword ptr [rax + rax + 24]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
adc ax, cx
add bl, 112 # instrumentation
setnbe dl
add cl, 105 # instrumentation
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 100
cmovno esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

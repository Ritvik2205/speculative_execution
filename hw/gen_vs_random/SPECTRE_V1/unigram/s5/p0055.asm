.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 97
and dil, 98
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -13
add dil, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnb ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and bx, -118
and rsi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rsi]
lea ebx, qword ptr [rdi + rdi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
btc ecx, 85
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
movsx rbx, cx
cmp cl, cl
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

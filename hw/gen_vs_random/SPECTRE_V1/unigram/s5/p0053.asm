.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -76 # instrumentation
cmovnle cx, si
add dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
inc rcx
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
btr si, 23
or ebx, -124
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
add si, 40
adc eax, -655457029
jns .bb_0.1
jmp .exit_0
.bb_0.1:
imul dx
cbw
add cl, 112 # instrumentation
movzx ecx, bl
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
or ebx, -124
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, bl
sbb dx, bx
sbb dil, -93
and sil, -55
lea rcx, qword ptr [rdi + rcx + 79]
bswap rsi
add cl, 13 # instrumentation
setns cl
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -63
and dl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

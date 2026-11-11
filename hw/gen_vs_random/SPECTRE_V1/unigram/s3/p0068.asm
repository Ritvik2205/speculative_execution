.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, rdx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rax], ax
imul cl
sbb si, 25
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
cmovnle eax, ecx
add di, 44
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
add ebx, -116
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb cx, di
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and eax, 933895314
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
add al, -92 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
add dil, dil
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 67
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
adc dl, cl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cmovl ecx, edx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 58
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
setnl dil
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

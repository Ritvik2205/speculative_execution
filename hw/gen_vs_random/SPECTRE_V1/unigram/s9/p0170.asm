.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 84
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and bl, 87
cmovl edx, edi
add cx, -103
lea rax, qword ptr [rax + rdi]
add cl, 112 # instrumentation
movzx ecx, sil
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
cmp dil, dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
adc al, cl
test rbx, 39
adc esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
test cl, -120
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 18
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ebx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 2
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
adc al, sil
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

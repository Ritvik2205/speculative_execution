.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rcx + rdi + 54]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], esi
lea ax, qword ptr [rax]
xor cl, 78
add al, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rcx]
adc ecx, ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and edi, 100
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and eax, 933895314
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 13
movsx rax, cx
xor bl, -38
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
lea rcx, qword ptr [rsi]
movsx edx, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

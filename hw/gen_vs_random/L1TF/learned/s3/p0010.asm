.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
xor rdi, rdi
cmovp edx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
lea ax, qword ptr [rsi]
dec dl
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp edx, esi
imul cl
cmp dil, bl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
xor eax, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

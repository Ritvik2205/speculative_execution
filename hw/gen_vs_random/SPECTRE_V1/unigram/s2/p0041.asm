.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 12
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 32
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
add dil, 87 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 117
sub sil, -18
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
cmovnz ax, dx
mul dl
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
movzx eax, di
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
sub rdx, 92
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo ax, bx
add bl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
lea rax, qword ptr [rcx + rdi + 45]
sub esi, eax
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

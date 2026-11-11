.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rbx, -34
movsx esi, bl
cmovnb rcx, rdx
or si, 30
and bx, -118
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnp rax, rbx
add al, -117 # instrumentation
not rsi
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], dx
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
sub sil, dl
sub sil, -18
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

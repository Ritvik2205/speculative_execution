.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
sbb al, 49
lea rdx, qword ptr [rcx + rdi + 72]
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
or sil, cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, dl
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
lea rdx, qword ptr [rax]
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

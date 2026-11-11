.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ecx
xchg ebx, esi
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
adc ax, 24404
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
sub dl, al
test al, 48
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

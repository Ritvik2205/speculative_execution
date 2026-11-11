.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 83
and rbx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
sub cl, 86
test ax, 7679
sbb sil, -79
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
test bl, 84
movzx eax, di
xor dl, al
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

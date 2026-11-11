.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rax]
cmp bl, cl
xor al, 45
and rbx, -64
adc dl, -12
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test bl, sil
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

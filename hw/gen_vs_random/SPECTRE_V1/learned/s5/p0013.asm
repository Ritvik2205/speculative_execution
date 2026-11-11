.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
sbb cl, al
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
sbb al, 33
lea rsi, qword ptr [rdx + rbx + 75]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, 42
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and dl, -92
sub al, dl
xor cl, al
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

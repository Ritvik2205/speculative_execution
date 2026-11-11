.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
sub cl, dl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
sub al, cl
mov dl, cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
add al, -72
and dl, -92
test al, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

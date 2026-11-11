.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
sub cl, -21
and bl, sil
cmovbe bx, di
cmp edx, 44
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
xor al, dl
lea cx, qword ptr [rax]
or al, dl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

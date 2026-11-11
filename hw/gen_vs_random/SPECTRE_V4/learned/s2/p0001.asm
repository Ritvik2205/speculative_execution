.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 54
cmp edx, 4
mov dl, cl
sbb dil, 88
or al, -83
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
cmp dl, -82
cmp al, dl
sub al, sil
add al, -3
and dil, -23
sbb al, 43
xchg al, bl
or al, -47
cmp dil, dl
xor dil, -23
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

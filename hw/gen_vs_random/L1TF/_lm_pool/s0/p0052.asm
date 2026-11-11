.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 40
add sil, -61
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
sub dl, -49
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
lea rsi, qword ptr [rdx + rcx]
add al, dl
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
sbb al, cl
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

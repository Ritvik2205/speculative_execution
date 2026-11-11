.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
cmp ebx, -33
add sil, 2
sub cl, dl
sub cl, -21
and rdi, 3
add dl, al
lea rbx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and sil, 52
test bx, 34
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

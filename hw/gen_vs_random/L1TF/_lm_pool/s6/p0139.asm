.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
imul al
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
test dil, -126
lea esi, qword ptr [rbx]
sbb al, dl
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
cmp sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

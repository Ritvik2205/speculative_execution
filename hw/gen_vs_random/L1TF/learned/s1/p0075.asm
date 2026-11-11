.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
test cl, 36
jmp .bb_0.1
.bb_0.1:
xor al, 38
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
lea rcx, qword ptr [rdi]
or rbx, 18
sbb dl, bl
test al, -70
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
xor di, 86
xchg ecx, ebx
jmp .bb_0.2
.bb_0.2:
sub al, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 22
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rbx, 24
sbb dl, cl
sbb bl, cl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test dl, 84
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
test ebx, 4
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and dil, dl
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

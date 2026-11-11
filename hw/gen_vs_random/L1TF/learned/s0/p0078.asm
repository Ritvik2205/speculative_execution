.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and bl, sil
and al, bl
xor al, 16
jmp .bb_0.1
.bb_0.1:
add al, -102
sub al, sil
or al, -48
cmovb dx, bx
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

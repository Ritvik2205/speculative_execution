.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
cmp dl, 45
sub bl, dil
and dil, sil
neg dl
or dl, cl
and ax, -4731
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test sil, 1
mov al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

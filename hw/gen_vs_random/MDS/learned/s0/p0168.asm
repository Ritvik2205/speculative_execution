.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
test cl, 73
or al, 54
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test eax, -571234566
jmp .bb_0.2
.bb_0.2:
or edx, eax
test cl, bl
and sil, 89
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

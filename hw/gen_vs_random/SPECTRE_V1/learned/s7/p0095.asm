.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 99
lea rax, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
test cl, sil
xor al, 78
test sil, 97
jmp .bb_0.1
.bb_0.1:
cmp eax, 100
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 71
cmp rcx, 1
setz dl
or al, bl
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

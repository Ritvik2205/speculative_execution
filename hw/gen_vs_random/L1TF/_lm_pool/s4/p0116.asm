.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
test dil, -126
or al, sil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
cmp al, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

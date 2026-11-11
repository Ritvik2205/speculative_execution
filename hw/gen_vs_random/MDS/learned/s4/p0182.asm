.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
or dl, bl
and dx, 60
test al, dil
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, -731384280
xor cl, 83
xor al, dl
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

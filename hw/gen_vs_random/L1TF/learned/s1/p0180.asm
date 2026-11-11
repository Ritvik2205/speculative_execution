.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
lea ax, qword ptr [rax]
xor cl, 89
xor cl, dl
xor rcx, 64
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
test sil, 29
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 23
add sil, sil
sbb al, 92
or eax, -401020526
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

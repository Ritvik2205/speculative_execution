.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor al, sil
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
test al, cl
jmp .bb_0.1
.bb_0.1:
xor rcx, rbx
or rax, -82
cmovnle rax, rdx
xor sil, 64
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

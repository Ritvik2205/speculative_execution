.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
xor bx, 2
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
xor dl, dil
xor cl, bl
and eax, -409673666
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 81
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
adc al, cl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 25
and sil, cl
test edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

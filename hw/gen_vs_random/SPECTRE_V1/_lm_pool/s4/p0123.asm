.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 15
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
sub al, -66
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
xor cl, bl
xor sil, al
sub al, dil
lea edx, qword ptr [rdi]
sub dx, -23
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

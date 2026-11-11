.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 104 # instrumentation
mov edx, -377652802
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and dil, -82
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
xchg dil, al
xor al, bl
add sil, -61
cmp al, 27
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

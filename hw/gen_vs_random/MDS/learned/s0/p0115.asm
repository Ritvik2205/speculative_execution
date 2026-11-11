.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
bts rax, rdi
xor sil, cl
xor cl, dl
or dil, -41
jmp .bb_0.1
.bb_0.1:
test dil, -51
bt cx, bx
test ecx, -1843375753
bt ax, dx
or esi, edx
bt eax, ecx
test sil, al
xor rax, -345061362
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

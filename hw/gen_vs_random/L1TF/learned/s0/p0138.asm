.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle eax, ebx
or dl, cl
cmp bl, dil
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or cl, -78
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
or eax, 287965578
sbb dil, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
test esi, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

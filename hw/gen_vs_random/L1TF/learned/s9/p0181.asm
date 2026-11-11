.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
xchg esi, ecx
xor cl, al
jmp .bb_0.1
.bb_0.1:
test al, -56
sbb sil, dil
add al, al
test al, -82
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
cmovle rax, rdi
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

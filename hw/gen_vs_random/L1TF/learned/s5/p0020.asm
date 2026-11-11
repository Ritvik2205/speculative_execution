.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and ax, 37
inc al
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
xor sil, bl
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sbb sil, cl
add al, 93
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
